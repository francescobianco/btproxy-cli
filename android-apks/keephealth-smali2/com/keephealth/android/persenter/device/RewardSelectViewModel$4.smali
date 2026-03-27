.class Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RewardSelectViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->setReward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u5151\u6362_e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tr54rr"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u5151\u6362\u6210\u529f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmodel"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_51

    .line 154
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_51

    const/4 v0, 0x0

    .line 155
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xd2

    if-ne v1, v2, :cond_51

    const/4 v1, 0x4

    .line 156
    aget-byte p1, p1, v1

    if-nez p1, :cond_3c

    .line 158
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_51

    :cond_3c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_47

    .line 161
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_51

    :cond_47
    const/4 v0, 0x2

    if-ne p1, v0, :cond_51

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;->this$0:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object p1, p1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_51
    :goto_51
    return-void
.end method
