.class public interface abstract Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;
.super Ljava/lang/Object;
.source "IBluzDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectionListener"
.end annotation


# virtual methods
.method public abstract onConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
.end method
