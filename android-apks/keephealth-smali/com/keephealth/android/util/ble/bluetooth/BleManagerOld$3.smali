.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 509
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result v0

    if-nez v0, :cond_e0

    const/4 v0, 0x0

    .line 510
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 511
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x2

    const-string v4, "asasda5s"

    const-string v5, "e:"

    const-string v6, "hf33"

    if-lt v1, v2, :cond_64

    .line 512
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 515
    :try_start_26
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v8}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v8

    invoke-virtual {v1, v7, v0, v8, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_3a

    goto :goto_4b

    :catch_3a
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u771f\u6b63\u5f00\u59cb\u8fde\u63a5_mBluetoothGatt11:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 521
    :cond_64
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 524
    :try_start_72
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v8}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v8

    invoke-virtual {v1, v7, v0, v8, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_85} :catch_86

    goto :goto_97

    :catch_86
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u771f\u6b63\u5f00\u59cb\u8fde\u63a5_mBluetoothGatt22:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_af
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b9
    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 536
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_b9

    .line 537
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnecting()V

    goto :goto_b9

    .line 540
    :cond_cf
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 541
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnecting()V

    :cond_e0
    return-void
.end method
