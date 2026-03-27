.class public final synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->lambda$onConnectionStateChange$3$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(I)V

    return-void
.end method
