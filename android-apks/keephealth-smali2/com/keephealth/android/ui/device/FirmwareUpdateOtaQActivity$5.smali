.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;
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
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 437
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_39

    .line 439
    :cond_8
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, p1

    const/4 v7, 0x1

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadRate(JJI)V
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V

    goto :goto_39

    .line 442
    :cond_15
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->loadFile:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 443
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 444
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 446
    const-string p1, "gfgf433"

    const-string v0, "333"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method
