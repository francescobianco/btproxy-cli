.class Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;
.super Landroid/os/Handler;
.source "LocationBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;Landroid/os/Looper;)V
    .registers 3

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_38

    .line 94
    :cond_8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$100(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result p1

    if-nez p1, :cond_27

    return-void

    .line 100
    :cond_27
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;-><init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :goto_38
    return-void
.end method
