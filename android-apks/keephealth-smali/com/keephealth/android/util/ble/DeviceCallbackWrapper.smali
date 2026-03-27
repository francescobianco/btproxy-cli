.class public Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;
.super Ljava/lang/Object;
.source "DeviceCallbackWrapper.java"

# interfaces
.implements Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;


# instance fields
.field private tpm:Landroid/telephony/TelephonyManager;

.field private value:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->value:I

    return-void
.end method


# virtual methods
.method public addVol()V
    .registers 1

    return-void
.end method

.method public answerRingingCall()V
    .registers 4

    .line 103
    const-string v0, "FF4534"

    const-string v1, "\u63a5\u542c\u7535\u8bdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->answerRingingCallToDevice()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 107
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_27

    .line 111
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    :cond_27
    return-void
.end method

.method public camare()V
    .registers 1

    return-void
.end method

.method public endFindPhone()V
    .registers 3

    .line 96
    const-string v0, "gge3d"

    const-string v1, "\u505c\u6b62\u67e5\u627e\u624b\u673a2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRingingCall()V
    .registers 3

    .line 116
    const-string v0, "FF4534"

    const-string v1, "\u6302\u65ad\u7535\u8bdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endRingingCallToDevice()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 118
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/PhoneUtil;->endCall(Landroid/content/Context;)V

    return-void
.end method

.method public endSos()V
    .registers 1

    return-void
.end method

.method public enterCamare()V
    .registers 1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 141
    :cond_12
    check-cast p1, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

    .line 142
    iget v2, p0, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->value:I

    iget p1, p1, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->value:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public exitCamare()V
    .registers 1

    return-void
.end method

.method public exitMusic()V
    .registers 1

    return-void
.end method

.method public findPhone()V
    .registers 3

    .line 90
    const-string v0, "gge3d"

    const-string v1, "\u67e5\u627e\u624b\u673a2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getValue()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intoSportModel()V
    .registers 1

    return-void
.end method

.method public musicControl()V
    .registers 1

    return-void
.end method

.method public nextMusic()V
    .registers 1

    return-void
.end method

.method public preMusic()V
    .registers 1

    return-void
.end method

.method public quitSportModel()V
    .registers 1

    return-void
.end method

.method public sos()V
    .registers 1

    return-void
.end method

.method public startSos()V
    .registers 1

    return-void
.end method

.method public subVol()V
    .registers 3

    .line 85
    const-string v0, "gge3d"

    const-string v1, "subVol...1"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
