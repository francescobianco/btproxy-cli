.class public interface abstract Lcom/keephealth/android/persenter/device/ScanDeviceContract$View;
.super Ljava/lang/Object;
.source "ScanDeviceContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/ScanDeviceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract requestFaild()V
.end method

.method public abstract requestSuccess(ILcom/keephealth/android/model/bean/BLEDevice;)V
.end method
