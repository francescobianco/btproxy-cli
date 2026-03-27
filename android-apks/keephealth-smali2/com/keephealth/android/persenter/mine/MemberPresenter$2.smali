.class Lcom/keephealth/android/persenter/mine/MemberPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MemberPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MemberPresenter;->getMemberList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/MemberList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MemberPresenter;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MemberPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$400(Lcom/keephealth/android/persenter/mine/MemberPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/MemberList;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6210\u5458\u548c\u76d1\u62a4\u4eba\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string v1, "rfrtr5r"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$300(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/MemberList;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->returnFamilyList(Lcom/keephealth/android/model/bean/MemberList;)V

    return-void
.end method
