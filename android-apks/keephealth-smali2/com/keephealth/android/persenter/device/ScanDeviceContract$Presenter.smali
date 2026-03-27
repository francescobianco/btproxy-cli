.class public interface abstract Lcom/keephealth/android/persenter/device/ScanDeviceContract$Presenter;
.super Ljava/lang/Object;
.source "ScanDeviceContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/ScanDeviceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract connecting(ILcom/keephealth/android/model/bean/BLEDevice;)V
.end method

.method public abstract startScanBle(I)V
.end method

.method public abstract stopScanBle()V
.end method
