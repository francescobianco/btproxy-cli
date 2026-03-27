.class public final synthetic Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->lambda$takePhoto$1$com-keephealth-android-ui-device-activity-CameraActivity([BLandroid/hardware/Camera;)V

    return-void
.end method
