.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setDeviceDate()V
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

    .line 336
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I

    const/4 p1, 0x0

    .line 355
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 356
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 357
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 358
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    const/16 v0, 0x14

    .line 339
    new-array v0, v0, [B

    .line 340
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 341
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 342
    const-string v0, "FFD34r"

    const-string v1, "55555"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x84

    .line 343
    const-string v1, "FFDfe34"

    if-ne p1, v0, :cond_38

    const/4 v0, 0x1

    .line 344
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setUserInfo()V
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->access$600(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CmdHelper.setDeviceData_success_flag_start:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 348
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "error_flag_start:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void
.end method
