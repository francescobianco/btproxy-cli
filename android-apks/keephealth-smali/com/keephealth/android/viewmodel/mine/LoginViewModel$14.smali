.class Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodePhone(Ljava/lang/String;)V
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

    .line 671
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 679
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->access$1300(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 674
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
