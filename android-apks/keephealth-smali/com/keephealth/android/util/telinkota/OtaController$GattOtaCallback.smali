.class public interface abstract Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;
.super Ljava/lang/Object;
.source "OtaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/OtaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GattOtaCallback"
.end annotation


# virtual methods
.method public abstract onOtaProgressUpdate(ILcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V
.end method

.method public abstract onOtaStatusChanged(ILjava/lang/String;Lcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V
.end method
