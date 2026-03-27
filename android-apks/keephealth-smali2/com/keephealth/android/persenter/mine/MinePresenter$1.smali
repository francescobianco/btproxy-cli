.class Lcom/keephealth/android/persenter/mine/MinePresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MinePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MinePresenter;->sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

.field final synthetic val$userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MinePresenter;Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u56fd\u5bb6\u533a\u57df\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FFDD221"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$400(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 117
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$500(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/IMineView;->saveFaild()V

    .line 118
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$600(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/IMineView;->hideLoading()V

    :cond_3c
    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/mine/MinePresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MinePresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$700(Lcom/keephealth/android/persenter/mine/MinePresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u56fd\u5bb6\u533a\u57df\u6210\u529f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FFDD221"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$000(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/mine/IMineView;->saveUserBean(I)V

    .line 95
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 96
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mWeight:I
    invoke-static {v3}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$100(Lcom/keephealth/android/persenter/mine/MinePresenter;)I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;-><init>(Lcom/keephealth/android/persenter/mine/MinePresenter$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_5c
    return-void
.end method
