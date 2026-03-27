.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;)V
    .registers 2

    .line 866
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 871
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 872
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->closeNotify()V

    :cond_17
    return-void
.end method
