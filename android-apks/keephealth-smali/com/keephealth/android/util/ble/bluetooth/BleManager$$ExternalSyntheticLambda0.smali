.class public final synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->lambda$scan$0$com-keephealth-android-util-ble-bluetooth-BleManager()V

    return-void
.end method
