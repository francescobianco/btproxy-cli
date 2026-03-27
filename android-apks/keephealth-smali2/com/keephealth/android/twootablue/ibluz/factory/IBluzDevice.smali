.class public interface abstract Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
.super Ljava/lang/Object;
.source "IBluzDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;,
        Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;
    }
.end annotation


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract enable()Z
.end method

.method public abstract getBoundedDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract release()V
.end method

.method public abstract retry(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract setAutoConnectDataChanel(Z)V
.end method

.method public abstract setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V
.end method

.method public abstract setOnDiscoveryListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;)V
.end method

.method public abstract startDiscovery()V
.end method
