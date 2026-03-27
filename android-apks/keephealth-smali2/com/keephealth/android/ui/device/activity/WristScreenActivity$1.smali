.class Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "WristScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->initView()V
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

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-WristScreenActivity$1([B)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->handlerScreenData([B)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;[B)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 57
    new-array v0, v0, [B

    .line 58
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 59
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xc2

    if-ne p1, v1, :cond_1e

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;[B)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method
