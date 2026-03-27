.class Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DeviceFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->findDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$1000(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$1100(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->showMsg(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 283
    new-array v0, v0, [B

    .line 284
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 285
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x90

    if-ne p1, v0, :cond_3f

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$800(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$4;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$900(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->showMsg(Ljava/lang/String;)V

    .line 290
    :cond_36
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const-string v0, "findDevice"

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method
