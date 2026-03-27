.class Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/UserBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 430
    iget-object p2, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p2, p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerAccount:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->access$600(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_11

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerAccount:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
