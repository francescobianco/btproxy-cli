.class Lcom/keephealth/android/util/LocationUtil$4$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/LocationUtil$4;->onSuccess(Lcom/keephealth/android/model/BaseBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/LocationUtil$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/LocationUtil$4;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtil$4$1;->this$0:Lcom/keephealth/android/util/LocationUtil$4;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 256
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$4$1;->this$0:Lcom/keephealth/android/util/LocationUtil$4;

    iget-object p1, p1, Lcom/keephealth/android/util/LocationUtil$4;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 245
    const-string v0, "1111"

    const-string v1, "\u8bbe\u7f6e\u5929\u6c14\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    .line 246
    new-array v0, v0, [B

    .line 247
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 248
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc5

    if-ne p1, v0, :cond_22

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$4$1;->this$0:Lcom/keephealth/android/util/LocationUtil$4;

    iget-object p1, p1, Lcom/keephealth/android/util/LocationUtil$4;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    :cond_22
    return-void
.end method
