.class public abstract Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;
.super Lcom/keephealth/android/util/ble/bluetooth/LeListener;
.source "OnLeNotificationListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-super {p0}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V
.end method

.method public abstract onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->setTag(Ljava/lang/Object;)V

    return-void
.end method
