.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 402
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 409
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x292

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    const-wide/16 v0, 0xfa0

    .line 412
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_0

    :catch_19
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
