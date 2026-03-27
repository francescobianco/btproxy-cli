.class Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "FeedBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->uploadFile(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/UploadFileBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;Ljava/io/File;I)V
    .registers 4

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$file:Ljava/io/File;

    iput p3, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$type:I

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

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

    const-string p2, "trtr5t"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$1000(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->hideLoading()V

    .line 126
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$1200(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->requestLoadFileFaild()V

    :cond_3c
    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UploadFileBean;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "afeng.txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1b
    if-eqz p1, :cond_61

    .line 110
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_61

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$700(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$800(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->hideLoading()V

    .line 113
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UploadFileBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UploadFileBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$900(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UploadFileBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UploadFileBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;->val$type:I

    invoke-interface {v0, p1, v1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->requestLoadFileSuccess(Ljava/lang/String;I)V

    :cond_61
    return-void
.end method
