.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;
.super Ljava/lang/Object;
.source "FirmwareUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    const-string v0, "\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f\u5931\u8d25"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 320
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method
