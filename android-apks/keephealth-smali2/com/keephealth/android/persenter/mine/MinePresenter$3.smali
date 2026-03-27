.class Lcom/keephealth/android/persenter/mine/MinePresenter$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MinePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MinePresenter;->uploadImage(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/ImageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MinePresenter;I)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    iput p2, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->val$type:I

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail_code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ggee23"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1300(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/IMineView;->saveFaild()V

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1400(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/IMineView;->hideLoading()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MinePresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1500(Lcom/keephealth/android/persenter/mine/MinePresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/ImageResult;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ImageResult;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1000(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/IMineView;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/IMineView;->hideLoading()V

    .line 171
    iget v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1100(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/IMineView;

    iget v1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->val$type:I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ImageResult;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/persenter/mine/IMineView;->updateHeaderComplete(ILjava/lang/String;)V

    goto :goto_59

    :cond_45
    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$1200(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/IMineView;

    iget v1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$3;->val$type:I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ImageResult;->getCoverImage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/persenter/mine/IMineView;->updateHeaderComplete(ILjava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method
