.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->onFound(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;)V
    .registers 2

    .line 1614
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1617
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1618
    const-string p1, "rtrtu5"

    const-string v0, "BluzConnector.connect1111"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string p1, "drer4re"

    const-string v0, "sdk  reconnect  555"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/model/bean/DeviceEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
