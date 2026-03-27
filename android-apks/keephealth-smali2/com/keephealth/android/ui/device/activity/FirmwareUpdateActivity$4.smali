.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;
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

    .line 295
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u539f\u59cbrun: updaterTimeOut"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updaterTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 304
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    const/4 v0, 0x0

    .line 305
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 306
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 307
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method
