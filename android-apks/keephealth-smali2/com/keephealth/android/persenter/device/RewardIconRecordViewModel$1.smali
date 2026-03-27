.class Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "RewardIconRecordViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->getData(Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onfail_code:"

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

    const-string p2, "FF321h2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 67
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1d

    .line 68
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel$1;->this$0:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
