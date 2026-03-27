.class Lcom/keephealth/android/ui/device/activity/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/CameraActivity;->takePhoto()V
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

    .line 214
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/CameraActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/CameraActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/CameraActivity;->savePhoto()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/CameraActivity;->access$500(Lcom/keephealth/android/ui/device/activity/CameraActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
