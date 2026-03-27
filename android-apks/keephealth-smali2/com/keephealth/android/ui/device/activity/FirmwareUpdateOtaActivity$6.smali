.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;
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

.field final synthetic val$deviced:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->val$deviced:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 732
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 734
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v2, v2, [Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v3, v2, v5

    const/16 v3, 0x13

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 736
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v0, v5}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 737
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance v1, Lcom/keephealth/android/util/telinkota/GattConnection;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {v1, v2}, Lcom/keephealth/android/util/telinkota/GattConnection;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$802(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/GattConnection;)Lcom/keephealth/android/util/telinkota/GattConnection;

    .line 738
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection;->setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V

    .line 739
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->val$deviced:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 740
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance v1, Lcom/keephealth/android/util/telinkota/OtaController;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/keephealth/android/util/telinkota/OtaController;-><init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/OtaController;

    .line 741
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V

    .line 742
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 743
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 744
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a1
    return-void
.end method
