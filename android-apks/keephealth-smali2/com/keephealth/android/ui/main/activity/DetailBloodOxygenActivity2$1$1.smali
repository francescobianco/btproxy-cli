.class Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DetailBloodOxygenActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 230
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 231
    const-string v0, "\u6d4b\u91cf\u8840\u6c27\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_92

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_92

    .line 233
    array-length v1, p1

    const/4 v2, 0x7

    if-le v1, v2, :cond_92

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_92

    .line 234
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_5a

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_92

    .line 238
    :cond_5a
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z

    .line 239
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    if-nez v1, :cond_78

    .line 240
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    .line 242
    :cond_78
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1$1;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1$1;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_92
    :goto_92
    return-void
.end method
