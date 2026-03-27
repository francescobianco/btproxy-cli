.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$1;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;)V
    .registers 2

    .line 1822
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1825
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue$1;->this$1:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->runQueue()V

    return-void
.end method
