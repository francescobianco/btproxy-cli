.class Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;
.super Ljava/lang/Object;
.source "BluetoothLe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    .line 548
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 549
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->access$200(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
