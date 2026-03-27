.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$9;
.super Ljava/util/TimerTask;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 1736
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$9;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1739
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_9

    .line 1740
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    :cond_9
    return-void
.end method
