.class Lcom/keephealth/android/ui/device/activity/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$000(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Lcom/keephealth/android/views/camera/OverCameraView;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->isFoucing:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$102(Lcom/keephealth/android/ui/device/activity/CameraActivity;Z)Z

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$000(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Lcom/keephealth/android/views/camera/OverCameraView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/camera/OverCameraView;->setFoucuing(Z)V

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->mOverCameraView:Lcom/keephealth/android/views/camera/OverCameraView;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$000(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Lcom/keephealth/android/views/camera/OverCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/OverCameraView;->disDrawTouchFocusRect()V

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$300(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/CameraActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$200(Lcom/keephealth/android/ui/device/activity/CameraActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method
