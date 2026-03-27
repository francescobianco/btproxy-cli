.class Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MinePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MinePresenter$1;->onSuccess(Lcom/keephealth/android/model/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/persenter/mine/MinePresenter$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MinePresenter$1;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;->this$1:Lcom/keephealth/android/persenter/mine/MinePresenter$1;

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

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;->this$1:Lcom/keephealth/android/persenter/mine/MinePresenter$1;

    iget-object p1, p1, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$200(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MinePresenter$1$1;->this$1:Lcom/keephealth/android/persenter/mine/MinePresenter$1;

    iget-object p1, p1, Lcom/keephealth/android/persenter/mine/MinePresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MinePresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MinePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MinePresenter;->access$300(Lcom/keephealth/android/persenter/mine/MinePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/IMineView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/mine/IMineView;->saveUserBean(I)V

    .line 102
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    :cond_1a
    return-void
.end method
