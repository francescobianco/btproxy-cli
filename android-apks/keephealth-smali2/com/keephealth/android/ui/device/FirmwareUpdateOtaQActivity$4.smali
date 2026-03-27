.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;
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

    .line 420
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    :cond_1a
    return-void
.end method
