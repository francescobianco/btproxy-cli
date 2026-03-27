.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;
.super Landroid/os/Handler;
.source "BluzDeviceBle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    goto :goto_5f

    .line 209
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_5f

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {v0, p1, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_5f

    .line 197
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_43

    .line 198
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v1, v1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0x64

    invoke-interface {p1, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iput-object v0, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 200
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->updateConnectionState(I)V

    .line 202
    :cond_43
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$202(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    goto :goto_5f

    .line 193
    :cond_5a
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectBleSuccess()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    :cond_5f
    :goto_5f
    return-void
.end method
