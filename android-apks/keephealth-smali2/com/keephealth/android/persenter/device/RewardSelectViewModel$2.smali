.class Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "RewardSelectViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeReward(Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 112
    new-instance p1, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;-><init>()V

    const/4 p2, -0x1

    .line 113
    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->setExchangeReuslt(I)V

    .line 114
    iget-object p2, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p2, p2, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 100
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_18

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_28

    .line 103
    :cond_18
    new-instance p1, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;-><init>()V

    const/4 v0, -0x1

    .line 104
    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->setExchangeReuslt(I)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return-void
.end method
