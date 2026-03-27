.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getTarget()V
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

    .line 402
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    const/4 p1, 0x0

    .line 418
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 419
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 420
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 421
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 405
    new-array v0, v0, [B

    .line 406
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 407
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x87

    if-ne p1, v1, :cond_21

    const/4 p1, 0x1

    .line 409
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 410
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->handlerTargeData([B)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$800(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;[B)V

    .line 411
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getNotice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$900(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    :cond_21
    return-void
.end method
