.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "otaSetting:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrrt6"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v1, 0x4

    const-string v2, "start OTA"

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updateBlState(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;ILjava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->startOta(Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;)V

    return-void
.end method
