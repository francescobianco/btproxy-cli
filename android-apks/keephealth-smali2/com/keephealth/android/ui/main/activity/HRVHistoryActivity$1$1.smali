.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$100(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 199
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 200
    const-string v0, "\u6d4b\u91cfHRV\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 201
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xd3

    if-ne v1, v2, :cond_92

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_92

    .line 202
    array-length v1, p1

    const/4 v2, 0x6

    if-le v1, v2, :cond_92

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_92

    const/4 v1, 0x4

    .line 203
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_5b

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_92

    .line 207
    :cond_5b
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    if-nez v1, :cond_79

    .line 209
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    .line 211
    :cond_79
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1$1;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHRV(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_92
    :goto_92
    return-void
.end method
