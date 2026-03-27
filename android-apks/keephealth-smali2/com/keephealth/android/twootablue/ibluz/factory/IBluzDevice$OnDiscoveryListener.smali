.class public interface abstract Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;
.super Ljava/lang/Object;
.source "IBluzDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDiscoveryListener"
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onDiscoveryFinished()V
.end method

.method public abstract onDiscoveryStarted()V
.end method

.method public abstract onFound(Landroid/bluetooth/BluetoothDevice;I)V
.end method
