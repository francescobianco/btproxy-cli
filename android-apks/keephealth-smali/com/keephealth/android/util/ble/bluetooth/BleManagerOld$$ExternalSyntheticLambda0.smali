.class public final synthetic Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->lambda$scan$0$com-keephealth-android-util-ble-bluetooth-BleManagerOld()V

    return-void
.end method
