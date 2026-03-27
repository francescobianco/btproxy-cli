.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;
.super Landroid/content/BroadcastReceiver;
.source "BluzDeviceA2dpBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 161
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x80000000

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_41

    .line 162
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 163
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_37

    if-eqz p1, :cond_37

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectProfiles()V
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V

    .line 170
    :cond_37
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    iput-object p1, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateA2dpConnectionState(I)V

    goto :goto_95

    .line 172
    :cond_41
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_81

    .line 173
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 174
    const-string v0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5f

    .line 176
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getPairingVariantConsentHiddenConstant()I

    move-result v0

    if-ne p2, v0, :cond_95

    .line 178
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "setPairingConfirmation"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7b} :catch_7c

    goto :goto_95

    :catch_7c
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_95

    .line 185
    :cond_81
    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 186
    const-string p1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 187
    :goto_8f
    array-length p2, p1

    if-ge v3, p2, :cond_95

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :cond_95
    :goto_95
    return-void
.end method
