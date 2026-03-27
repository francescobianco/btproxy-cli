.class Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->checkPhone(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u9519\u8bef\u78012"

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object p2, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p2, p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->access$800(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 491
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_19

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/16 p1, 0x3f9

    .line 493
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 p1, 0x1

    .line 494
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    :cond_19
    return-void
.end method
