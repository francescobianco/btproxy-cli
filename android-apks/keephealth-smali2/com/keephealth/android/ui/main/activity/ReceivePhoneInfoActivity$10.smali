.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getNotice()V
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

    .line 427
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    const/4 p1, 0x0

    .line 448
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 449
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 450
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 451
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    const/16 v0, 0x14

    .line 430
    new-array v0, v0, [B

    .line 431
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 432
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x89

    if-ne v1, v2, :cond_22

    .line 434
    new-instance v1, Lcom/keephealth/android/util/ble/NoticeDataHandler;

    invoke-direct {v1}, Lcom/keephealth/android/util/ble/NoticeDataHandler;-><init>()V

    .line 435
    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/NoticeDataHandler;->handlerNoticeData([B)V

    .line 436
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    .line 438
    :cond_22
    const-string v0, "FDD323t52"

    const-string v1, "getNotice_success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 440
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 441
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 442
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method
