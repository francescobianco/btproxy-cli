.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;

.field final synthetic val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 1488
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1491
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1492
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 1493
    const-string p1, "drer4re"

    const-string v0, "sdk  reconnect  333"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
