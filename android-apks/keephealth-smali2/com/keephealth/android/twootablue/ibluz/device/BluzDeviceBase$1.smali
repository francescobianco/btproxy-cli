.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;
.super Ljava/lang/Object;
.source "BluzDeviceBase.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->retrieveConnectedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    .line 209
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_39

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->isValidType(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_10

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_10

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    const/4 v1, 0x2

    invoke-interface {v0, p2, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_10

    :cond_39
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
