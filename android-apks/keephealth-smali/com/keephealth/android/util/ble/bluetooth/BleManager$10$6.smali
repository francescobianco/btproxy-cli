.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$6;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V
    .registers 2

    .line 2683
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$6;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2686
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_24

    .line 2687
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$6;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v1, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2688
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 2689
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    const/16 v0, 0xc28

    .line 2690
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_24
    return-void
.end method
