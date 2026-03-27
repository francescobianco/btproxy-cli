.class public interface abstract Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GattOperationCallback"
.end annotation


# virtual methods
.method public abstract onDisableNotify()V
.end method

.method public abstract onEnableNotify()V
.end method

.method public abstract onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
.end method

.method public abstract onRead(Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V
.end method

.method public abstract onWrite(Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V
.end method
