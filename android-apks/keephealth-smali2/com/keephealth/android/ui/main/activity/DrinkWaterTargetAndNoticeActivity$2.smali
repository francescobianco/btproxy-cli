.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterTargetAndNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 185
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    const/16 v0, 0x14

    .line 168
    new-array v1, v0, [B

    .line 169
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: \u8bbe\u7f6e\u63d0\u9192: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_46

    .line 173
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0xae

    if-ne p1, v3, :cond_5a

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$400(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)[B

    move-result-object p1

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$302(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Z)Z

    goto :goto_5a

    .line 178
    :cond_46
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    const/4 v3, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->isFrist:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$302(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Z)Z

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->dataByte:[B
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$400(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)[B

    move-result-object p1

    invoke-static {v1, v2, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$500(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V

    :cond_5a
    :goto_5a
    return-void
.end method
