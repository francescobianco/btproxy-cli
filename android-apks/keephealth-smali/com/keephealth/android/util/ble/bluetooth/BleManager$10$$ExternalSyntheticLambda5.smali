.class public final synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->lambda$onConnectionStateChange$5$com-keephealth-android-util-ble-bluetooth-BleManager$10()V

    return-void
.end method
