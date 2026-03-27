.class public Lcom/keephealth/android/receiver/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"


# instance fields
.field bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private pairIsSuccess(Ljava/lang/String;Z)V
    .registers 6

    .line 120
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "macAddress"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.macAddress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ===  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtft9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    const-string v1, "pairSuccess"

    const-string v2, "tty5rt"

    if-eqz v0, :cond_90

    .line 123
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 125
    const-string p1, "pairSuccess put  false  1"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_c2

    .line 129
    :cond_5d
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/receiver/BluetoothReceiver;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_c2

    .line 132
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/receiver/BluetoothReceiver;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 134
    const-string p1, "pairSuccess put  false  2"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_c2

    .line 143
    :cond_90
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/receiver/BluetoothReceiver;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_c2

    .line 146
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/receiver/BluetoothReceiver;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 148
    const-string p1, "pairSuccess put  false  3"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_c2
    :goto_c2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 37
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 38
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 40
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/receiver/BluetoothReceiver;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_69

    .line 42
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_29

    goto :goto_69

    .line 106
    :cond_29
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_69

    .line 110
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/receiver/BluetoothReceiver;->pairIsSuccess(Ljava/lang/String;Z)V

    goto :goto_69

    .line 44
    :cond_3a
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "isUnbandDeleDevice"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    const-string p1, "device.getBondState()"

    const-string p2, "pair_false"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/16 p2, 0x3e9

    if-eqz p1, :cond_62

    .line 56
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 57
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_69

    .line 60
    :cond_62
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanDeviceActivity:Z

    if-eqz p1, :cond_69

    .line 61
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_69
    :goto_69
    return-void
.end method
