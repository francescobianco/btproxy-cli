.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 998
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1002
    const-string v0, "gfgf433"

    const-string v1, "scanTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 1006
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1008
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const-string v1, "c60_fail_ota"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_comple:Z

    .line 1009
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_comple:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    .line 1011
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1012
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1013
    const-string v0, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u641c\u7d22\u8d85\u65f6\u5347\u7ea7\u5931\u8d25"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 1015
    const-string v0, "ggrrt6"

    const-string v2, "\u5931\u8d25444"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_5b
    const-string v0, "666"

    const-string v2, "tttre4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v0, "AppApplication.isOtaUpdate== false   444"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1020
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1021
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScan()V

    return-void
.end method
