.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 845
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    return-void
.end method
