.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->onOtaStatusChanged(ILjava/lang/String;Lcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 934
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 937
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->val$code:I

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/foundation/OtaStatusCode;->isComplete(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 938
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 940
    :cond_10
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->val$code:I

    if-nez v0, :cond_1b

    .line 941
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blState:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    :cond_1b
    return-void
.end method
