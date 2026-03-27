.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;
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

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1469
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1472
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

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

    const-string v2, "Phone has lost bonding information."

    const/4 v3, 0x3

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1473
    instance-of v4, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_c

    .line 1474
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    iget v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->val$status:I

    invoke-direct {v4, v5, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_c

    .line 1478
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1479
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    iget v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;->val$status:I

    invoke-direct {v1, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    :cond_48
    return-void
.end method
