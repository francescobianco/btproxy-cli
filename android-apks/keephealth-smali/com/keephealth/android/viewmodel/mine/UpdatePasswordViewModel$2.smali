.class Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "UpdatePasswordViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;->this$0:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 75
    iget-object p2, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;->this$0:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object p2, p2, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePassword:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;->this$0:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
