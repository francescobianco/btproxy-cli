.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ScanDeviceActivity.java"


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

    .line 310
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 314
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 315
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_51

    .line 316
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    .line 317
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found device: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gfgf433"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    return-void
.end method
