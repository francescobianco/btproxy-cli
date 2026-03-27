.class public interface abstract Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;
.super Ljava/lang/Object;
.source "DeviceFragmentContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/DeviceFragmentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getDialCenterDetail(Lcom/keephealth/android/model/bean/DicalDataBean;)V
.end method

.method public abstract getDialCenterDetailA(Lcom/keephealth/android/model/bean/DialCenterB;)V
.end method

.method public abstract getDialCenterFail()V
.end method

.method public abstract returnPower(I)V
.end method
