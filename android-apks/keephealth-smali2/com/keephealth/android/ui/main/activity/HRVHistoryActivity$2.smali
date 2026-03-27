.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initListener2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 253
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_13

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$200(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$100(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$300(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$302(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v2, 0x7f100684

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v2, 0x7f100601

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v0, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHRV(II)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$2;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void

    .line 260
    :cond_74
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isQuit:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$402(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$302(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v3, 0x7f100602

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const v3, 0x7f060113

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_b5

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    :cond_b5
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHRV(II)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2$1;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
