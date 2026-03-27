.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FirmwareUpdateOtaQActivity.java"


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

    .line 245
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$1;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 250
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 251
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_25

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    :cond_25
    return-void
.end method
