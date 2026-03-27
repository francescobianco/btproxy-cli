.class Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "RewardSelectViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->selectRewardData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

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
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 66
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1e

    .line 67
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_26

    .line 71
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void
.end method
