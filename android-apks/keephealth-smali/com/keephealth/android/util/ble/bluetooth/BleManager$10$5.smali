.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
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

    .line 2499
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2502
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

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

    const/4 v3, 0x2

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2503
    instance-of v4, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v4, :cond_c

    .line 2504
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    iget v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->val$status:I

    invoke-direct {v4, v5, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_c

    .line 2508
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2509
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    iget v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;->val$status:I

    invoke-direct {v1, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_48
    return-void
.end method
