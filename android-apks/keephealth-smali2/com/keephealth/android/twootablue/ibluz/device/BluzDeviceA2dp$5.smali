.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;
.super Landroid/content/BroadcastReceiver;
.source "BluzDeviceA2dp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 198
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v4, 0x2

    const-string v5, "android.bluetooth.profile.extra.STATE"

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    const/high16 v7, -0x80000000

    if-eqz v0, :cond_3f

    .line 199
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 200
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 201
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 202
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    iput-object p1, v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    if-eq v0, p2, :cond_30

    .line 204
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {p2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->updateA2dpConnectionState(I)V

    :cond_30
    if-ne v0, v4, :cond_38

    .line 208
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {p2, p1, v2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_9e

    :cond_38
    if-nez v0, :cond_9e

    .line 210
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    iput-object v1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    goto :goto_9e

    .line 212
    :cond_3f
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 213
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 214
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 215
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    if-ne v0, v4, :cond_9e

    .line 218
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_9e

    .line 220
    :cond_5c
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 221
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 222
    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 223
    const-string p1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_9e

    .line 231
    :cond_75
    const-string v0, "com.actions.ibluz.device.state_change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 232
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 233
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    iput-object p1, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->updateA2dpConnectionState(I)V

    if-ne p2, v4, :cond_98

    .line 238
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {p2, p1, v2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_9e

    :cond_98
    if-nez p2, :cond_9e

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    iput-object v1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    :cond_9e
    :goto_9e
    return-void
.end method
