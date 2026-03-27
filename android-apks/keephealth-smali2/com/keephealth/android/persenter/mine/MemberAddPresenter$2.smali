.class Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MemberAddPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->uploadImage(Ljava/io/File;I)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$500(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->updateHeaderComplete(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ggee23"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$600(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$700(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 87
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/ImageResult;

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$400(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/ImageResult;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->updateHeaderComplete(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u6210\u529f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggee23"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
