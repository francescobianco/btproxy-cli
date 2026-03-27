.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;
.super Ljava/util/TimerTask;
.source "BleManagerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 1087
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1090
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1091
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    :cond_11
    return-void
.end method
