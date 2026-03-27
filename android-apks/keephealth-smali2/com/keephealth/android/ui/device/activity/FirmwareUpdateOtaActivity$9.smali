.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 925
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaProgressUpdate(ILcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 6

    .line 949
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 950
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 p2, 0x63

    if-ge p1, p2, :cond_37

    .line 952
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_37
    return-void
.end method

.method public onOtaStatusChanged(ILjava/lang/String;Lcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 5

    .line 930
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p3

    const/16 p4, 0xc

    invoke-virtual {p3, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 931
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 932
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 933
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 934
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;

    invoke-direct {p3, p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;I)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
