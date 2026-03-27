.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/os/Looper;)V
    .registers 3

    .line 964
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 967
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 968
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3402(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 969
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_50

    .line 970
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 971
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f1

    .line 973
    :cond_50
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    const/16 v3, 0xd

    if-ne v0, v2, :cond_e0

    .line 974
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "ota complete"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "update_comple"

    if-eqz v0, :cond_9e

    .line 976
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10020c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    .line 977
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 978
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 979
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_f1

    .line 980
    :cond_9e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "ota failure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 981
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 982
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    .line 983
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 984
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 985
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    goto :goto_f1

    .line 987
    :cond_e0
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_f1

    .line 988
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 989
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    :cond_f1
    :goto_f1
    return-void
.end method
