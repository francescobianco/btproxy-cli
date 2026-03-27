.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;
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

    .line 829
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    if-eqz v0, :cond_28

    .line 834
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFailed: \u540c\u6b65\u8bbe\u5907\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    .line 836
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    :cond_28
    return-void
.end method
