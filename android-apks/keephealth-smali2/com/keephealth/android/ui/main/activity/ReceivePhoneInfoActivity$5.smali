.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getDeviceState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceState_fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FFD34"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    const/4 p1, 0x0

    .line 244
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 245
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 246
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 247
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    const/16 v0, 0x14

    .line 224
    new-array v0, v0, [B

    .line 225
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 226
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x82

    if-ne p1, v1, :cond_26

    const/4 p1, 0x1

    .line 227
    aget-byte v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_26

    .line 228
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->handlerDeviceState([B)V
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;[B)V

    .line 229
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setDeviceState()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$300(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    :cond_26
    return-void
.end method
