.class public interface abstract Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;
.super Ljava/lang/Object;
.source "GattConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/GattConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallback"
.end annotation


# virtual methods
.method public abstract onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V
.end method

.method public abstract onMtuChanged(ILcom/keephealth/android/util/telinkota/GattConnection;)V
.end method

.method public abstract onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/telinkota/GattConnection;)V
.end method
