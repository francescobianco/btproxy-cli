.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$302(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$300(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 309
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 310
    const-string v0, "\u8fdb\u5165\u624b\u73af\u6d4b\u91cfHRV\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 311
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xd3

    if-ne v1, v2, :cond_54

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_54

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$302(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 313
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_54

    .line 315
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;->this$1:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_54
    return-void
.end method
