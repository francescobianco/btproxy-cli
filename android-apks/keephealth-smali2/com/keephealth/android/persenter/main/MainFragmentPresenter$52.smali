.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 3

    .line 4457
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 4488
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4489
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$15000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->saveFaild()V

    .line 4490
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$15100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->hideLoading()V

    :cond_1e
    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 4496
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 4501
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$15200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4460
    const-string p1, "FF433"

    const-string v0, "\u8bbe\u7f6e\u56fd\u5bb6\u533a\u57df\u6210\u529f:"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 4461
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 4462
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 4463
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->saveUserBean(I)V

    .line 4465
    :cond_1d
    const-string p1, "FFF432fde"

    const-string v0, "EventBusHelper.postSticky(EVENT_EMAIL_VERIFY)_1"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3f9

    .line 4466
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    .line 4467
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 4468
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "weight1:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gddde22d"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mWeight:I
    invoke-static {v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_7b
    return-void
.end method
