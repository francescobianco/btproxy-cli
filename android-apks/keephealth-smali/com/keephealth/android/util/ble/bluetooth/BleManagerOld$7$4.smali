.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
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

    .line 1532
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1535
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

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

    const/4 v2, 0x2

    const-string v3, "FFDf34"

    const-string v4, "Phone has lost of bonding information."

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1536
    instance-of v5, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_c

    .line 1537
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "444444:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->val$status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    iget v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->val$status:I

    invoke-direct {v3, v5, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_c

    .line 1542
    :cond_42
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "333333:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->val$status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    iget v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;->val$status:I

    invoke-direct {v1, v3, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1547
    :cond_72
    invoke-static {v4}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
