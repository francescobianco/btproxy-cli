.class public final synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->lambda$onServicesDiscovered$5$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
