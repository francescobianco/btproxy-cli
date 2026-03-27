.class Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "GameRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 99
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->hideLoading()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6536\u5230\u6e38\u620f\u7981\u7528\u65f6\u95f4\u6570\u636e\u56de\u590d-----:"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xf0

    if-ne p1, v1, :cond_83

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_83

    .line 88
    array-length p1, v0

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_71

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->hideLoading()V

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->finish()V

    goto :goto_83

    .line 92
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->access$200(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method
