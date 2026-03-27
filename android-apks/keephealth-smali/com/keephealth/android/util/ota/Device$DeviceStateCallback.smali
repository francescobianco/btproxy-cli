.class public interface abstract Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceStateCallback"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/keephealth/android/util/ota/Device;)V
.end method

.method public abstract onDisconnected(Lcom/keephealth/android/util/ota/Device;)V
.end method

.method public abstract onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V
.end method

.method public abstract onServicesDiscovered(Lcom/keephealth/android/util/ota/Device;Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/util/ota/Device;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation
.end method
