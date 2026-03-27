.class Lcom/keephealth/android/ui/device/activity/CameraActivity$3;
.super Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;I)V
    .registers 3

    .line 501
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public camare()V
    .registers 2

    .line 504
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->camare()V

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/CameraActivity;->takePhoto()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$400(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    return-void
.end method

.method public exitCamare()V
    .registers 2

    .line 509
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->exitCamare()V

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->finish()V

    return-void
.end method
