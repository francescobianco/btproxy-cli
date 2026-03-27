.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;
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

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2435
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2438
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

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

    const-string v2, "Error on reading characteristic."

    const/4 v3, 0x3

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2439
    instance-of v4, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_c

    .line 2440
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    iget v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->val$status:I

    invoke-direct {v4, v5, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_c

    .line 2444
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2445
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    iget v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;->val$status:I

    invoke-direct {v1, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    :cond_48
    return-void
.end method
