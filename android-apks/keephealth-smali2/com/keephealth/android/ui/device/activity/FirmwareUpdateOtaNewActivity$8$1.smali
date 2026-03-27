.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->onServicesDiscovered(Lcom/keephealth/android/util/ota/Device;Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

.field final synthetic val$firmware:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->val$firmware:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 637
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const-string v2, "c60_fail_ota"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5982\u679c\u662fOTa\u4e0d\u9700\u8981\u7a7a\u5347\u6a21\u5f0f\u7684_update_comple:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-boolean v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gf3e3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->update_comple:Z

    if-nez v0, :cond_40

    .line 641
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->val$firmware:[B

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ota/Device;->startOta([B)V

    goto :goto_4d

    .line 645
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;->val$firmware:[B

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ota/Device;->startOta([B)V

    :goto_4d
    return-void
.end method
