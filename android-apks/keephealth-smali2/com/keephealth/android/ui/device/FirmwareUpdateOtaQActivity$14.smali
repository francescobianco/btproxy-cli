.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$14;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
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

    .line 1022
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$14;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1025
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$14;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
