.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;
.super Landroid/os/Handler;
.source "BluzDeviceEDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "BluzDeiceEDR"

    if-eq p1, v0, :cond_38

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    goto :goto_42

    .line 64
    :cond_e
    const-string p1, "handleMsg: MSG_DISCONNECTED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_42

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->updateConnectionState(I)V

    goto :goto_42

    .line 60
    :cond_38
    const-string p1, "handleMsg: MSG_CONNECTED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->connectEdrSuccess()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    :cond_42
    :goto_42
    return-void
.end method
