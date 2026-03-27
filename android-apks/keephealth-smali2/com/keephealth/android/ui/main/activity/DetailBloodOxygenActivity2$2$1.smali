.class Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DetailBloodOxygenActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$402(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$400(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 300
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 301
    const-string v0, "\u7ed3\u675f\u624b\u73af\u6d4b\u91cf\u8840\u6c27\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 302
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xd3

    if-ne v1, v2, :cond_59

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_59

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$402(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z

    .line 304
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_59

    .line 305
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_59
    return-void
.end method
