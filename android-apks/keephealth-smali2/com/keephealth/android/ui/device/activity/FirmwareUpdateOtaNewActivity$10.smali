.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 779
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 780
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4a

    .line 781
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 782
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->progressRate:Landroid/widget/TextView;

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

    .line 783
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    .line 784
    :cond_4a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_fd

    .line 785
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->tvTips2:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "ota complete"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "update_comple"

    const-string v3, "tttre4"

    if-eqz v0, :cond_b9

    .line 787
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 789
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const-string v1, "c60_fail_ota"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 790
    const-string p1, "gf3e3"

    const-string v1, "ota complete  c60_fail_ota = false"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 793
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 794
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ota/Device;->disconnect(I)V

    goto :goto_fd

    .line 796
    :cond_b9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "ota failure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 797
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V

    .line 798
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 799
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 800
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ota/Device;->disconnect(I)V

    .line 802
    :cond_f3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 803
    const-string p1, "111"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    :goto_fd
    return-void
.end method
