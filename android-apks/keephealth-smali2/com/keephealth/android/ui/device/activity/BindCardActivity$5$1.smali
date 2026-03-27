.class Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "BindCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$102(Lcom/keephealth/android/ui/device/activity/BindCardActivity;Z)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$100(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 204
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u5230\u6e05\u9664\u4e8c\u7ef4\u7801\u56de\u590d\u6570\u636e:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_65

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_65

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->isBind:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$102(Lcom/keephealth/android/ui/device/activity/BindCardActivity;Z)Z

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const v0, 0x7f1005dd

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_65
    return-void
.end method
