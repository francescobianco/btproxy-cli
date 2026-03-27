.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
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

    .line 724
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 727
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const-string v1, "c60_fail_ota"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    .line 728
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 729
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 730
    const-string v1, "gtf5"

    const-string v2, "EVENT_TYPE_BLE_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v1, "tttre4"

    const-string v2, "999"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 733
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    :cond_2b
    return-void
.end method
