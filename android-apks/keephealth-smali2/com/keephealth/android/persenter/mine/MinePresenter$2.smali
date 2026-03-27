.class Lcom/keephealth/android/persenter/mine/MinePresenter$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MinePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MinePresenter;->sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MinePresenter;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$800(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$900(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/mine/IMineView;->saveUserBean(I)V

    :cond_14
    return-void
.end method
