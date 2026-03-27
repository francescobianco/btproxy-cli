.class Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DetailHeartRateActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 333
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_13

    .line 334
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$300(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$302(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v2, 0x7f100684

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v2, 0x7f100601

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v0, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void

    .line 340
    :cond_6e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$402(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z

    .line 341
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z

    .line 342
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->access$302(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v3, 0x7f100602

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    const v3, 0x7f060113

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_ab

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    :cond_ab
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
