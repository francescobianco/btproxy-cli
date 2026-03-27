.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->onSuccess(Lcom/keephealth/android/model/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;)V
    .registers 2

    .line 4470
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;->this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;

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

    .line 4473
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;->this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;

    iget-object p1, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 4474
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52$1;->this$1:Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;

    iget-object p1, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$52;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->saveUserBean(I)V

    :cond_18
    return-void
.end method
