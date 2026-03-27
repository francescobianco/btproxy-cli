.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2398
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2401
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2402
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v2, :cond_c

    .line 2403
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_c

    .line 2406
    :cond_24
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 2407
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_3b
    return-void
.end method
