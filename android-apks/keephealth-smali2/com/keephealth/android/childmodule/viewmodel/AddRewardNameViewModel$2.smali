.class Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AddRewardNameViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateReward(Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, -0x1

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
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_24

    .line 72
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_18

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_24

    .line 75
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method
