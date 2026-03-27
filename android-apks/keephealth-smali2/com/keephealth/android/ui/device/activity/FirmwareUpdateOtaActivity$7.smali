.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V
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

    .line 769
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 774
    :try_start_10
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->buildDefaultScanSettings()Landroid/bluetooth/le/ScanSettings;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void
.end method
