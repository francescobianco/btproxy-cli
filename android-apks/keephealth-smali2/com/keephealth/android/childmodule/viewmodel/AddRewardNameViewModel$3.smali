.class Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AddRewardNameViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleReward(Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;)V
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

    .line 99
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure_code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF321h2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;

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

    if-eqz p1, :cond_41

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF321h2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_35

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_41

    .line 107
    :cond_35
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return-void
.end method
