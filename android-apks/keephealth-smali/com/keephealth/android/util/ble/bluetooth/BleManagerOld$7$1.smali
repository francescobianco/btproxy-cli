.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1451
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1454
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1455
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v2, :cond_c

    .line 1456
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1457
    const-string v1, "FFDf34e"

    const-string v2, "read_success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1460
    :cond_2b
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1461
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_42
    return-void
.end method
