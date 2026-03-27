.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DetailStreeCoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$402(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$400(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 369
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 370
    const-string v0, "\u7ed3\u675f\u624b\u73af\u6d4b\u91cf\u538b\u529b\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 371
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

    .line 372
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$402(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Z)Z

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_59

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_59
    return-void
.end method
