.class Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "VibrateViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList(Landroid/content/Context;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "false"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 164
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_29

    .line 165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 166
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_29

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v0, :cond_29

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    if-nez p1, :cond_29

    .line 167
    new-instance p1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2$1;-><init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method
