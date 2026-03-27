.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$11;
.super Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 2868
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$11;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 2872
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$11;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x6

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristic(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)V

    return-void
.end method
