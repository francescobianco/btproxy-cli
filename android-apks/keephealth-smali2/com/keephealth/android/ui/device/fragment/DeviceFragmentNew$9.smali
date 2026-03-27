.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$9;
.super Ljava/lang/Object;
.source "DeviceFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->unBindDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V
    .registers 2

    .line 1818
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$9;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1821
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    return-void
.end method
