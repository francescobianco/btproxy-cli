.class Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "WristScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    const/16 v0, 0x14

    .line 76
    new-array v0, v0, [B

    .line 77
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 78
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc2

    if-ne p1, v0, :cond_19

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->finish()V

    :cond_19
    return-void
.end method
