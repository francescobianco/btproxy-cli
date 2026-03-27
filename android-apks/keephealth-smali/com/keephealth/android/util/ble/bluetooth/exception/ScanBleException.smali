.class public Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;
.super Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;
.source "ScanBleException.java"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 36
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(IILjava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_b

    .line 39
    const-string p1, "Fails to start scan as BLE scan with the same settings is already started by the app."

    goto :goto_2b

    :cond_b
    const/4 p2, 0x2

    if-ne p1, p2, :cond_11

    .line 41
    const-string p1, "Fails to start scan as app cannot be registered."

    goto :goto_2b

    :cond_11
    const/4 p2, 0x3

    if-ne p1, p2, :cond_17

    .line 43
    const-string p1, "Fails to start scan due an internal error"

    goto :goto_2b

    :cond_17
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1d

    .line 45
    const-string p1, "Fails to start power optimized scan as this feature is not supported."

    goto :goto_2b

    :cond_1d
    const/4 p2, 0x5

    if-ne p1, p2, :cond_23

    .line 47
    const-string p1, "Fails to start scan as it is out of hardware resources."

    goto :goto_2b

    :cond_23
    const/4 p2, 0x6

    if-ne p1, p2, :cond_29

    .line 49
    const-string p1, "scan time out"

    goto :goto_2b

    .line 51
    :cond_29
    const-string p1, "I don\'t know.."

    .line 53
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->setDetailMessage(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleException(BLE) : \n{ \nerrorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\ntype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getTypeArr()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\ndetail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getDetailMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
