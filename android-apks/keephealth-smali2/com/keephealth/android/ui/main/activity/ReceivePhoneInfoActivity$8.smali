.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setUserInfo()V
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

    .line 377
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 391
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    const/4 p1, 0x0

    .line 392
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 393
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 394
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 395
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    const/16 v0, 0x14

    .line 380
    new-array v0, v0, [B

    .line 381
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 382
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x83

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    .line 384
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getTarget()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$700(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    :cond_1c
    return-void
.end method
