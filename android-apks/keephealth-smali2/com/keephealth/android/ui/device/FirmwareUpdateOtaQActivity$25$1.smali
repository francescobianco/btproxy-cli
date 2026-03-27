.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;)V
    .registers 2

    .line 1736
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1739
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 1740
    const-string v0, "gfgf433"

    const-string v1, "1010"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
