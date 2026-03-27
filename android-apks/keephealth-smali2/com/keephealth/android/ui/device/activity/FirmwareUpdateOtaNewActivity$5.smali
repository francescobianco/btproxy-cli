.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 508
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 511
    const-string v0, "gfgf433"

    const-string v1, "connectTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 515
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 517
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const-string v1, "c60_fail_ota"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 520
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 522
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 524
    :cond_4f
    const-string v0, "555"

    const-string v2, "tttre4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "AppApplication.isOtaUpdate== false   333"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 527
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->sendNumber:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;I)I

    return-void
.end method
