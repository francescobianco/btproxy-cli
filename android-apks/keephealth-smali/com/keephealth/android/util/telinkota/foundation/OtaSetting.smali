.class public Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
.super Ljava/lang/Object;
.source "OtaSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bootloaderModeEnable:Z

.field public characteristicUUID:Ljava/util/UUID;

.field public checkFirmwareCrc:Z

.field public descriptorPath:Ljava/lang/String;

.field public firmwarePath:Ljava/lang/String;

.field public firmwareVersion:[B

.field public fwIndex:B

.field public pduLength:I

.field public protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

.field public readInterval:I

.field public secureBootEnable:Z

.field public sendFwIndex:Z

.field public sendOTAVersion:Z

.field public serviceUUID:Ljava/util/UUID;

.field public timeout:I

.field public versionCompare:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Legacy:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    .line 55
    sget-object v1, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    .line 60
    sget-object v1, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    .line 66
    iput v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    const/16 v1, 0x10

    .line 71
    iput v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    .line 76
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    const v1, 0x493e0

    .line 88
    iput v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    .line 96
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    .line 98
    iput-byte v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    .line 103
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    .line 113
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->bootloaderModeEnable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_82

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_82

    .line 154
    :cond_13
    check-cast p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    .line 155
    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    if-ne v2, v3, :cond_80

    iget v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    iget v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    if-ne v2, v3, :cond_80

    iget v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    iget v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    if-ne v2, v3, :cond_80

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    if-ne v2, v3, :cond_80

    iget v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    iget v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    if-ne v2, v3, :cond_80

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    if-ne v2, v3, :cond_80

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    if-ne v2, v3, :cond_80

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    if-ne v2, v3, :cond_80

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->bootloaderModeEnable:Z

    iget-boolean v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->bootloaderModeEnable:Z

    if-ne v2, v3, :cond_80

    iget-byte v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    iget-byte v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    if-ne v2, v3, :cond_80

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    iget-object v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    if-ne v2, v3, :cond_80

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    .line 166
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    .line 167
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    .line 168
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwareVersion:[B

    iget-object p1, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwareVersion:[B

    .line 169
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    return v0

    :cond_82
    :goto_82
    return v1
.end method

.method public getOtaCharacteristic()Ljava/util/UUID;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    if-eqz v0, :cond_5

    return-object v0

    .line 146
    :cond_5
    sget-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getOtaService()Ljava/util/UUID;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    if-eqz v0, :cond_5

    return-object v0

    .line 139
    :cond_5
    sget-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .registers 15

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    iget v5, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-byte v11, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    iget-boolean v12, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->bootloaderModeEnable:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwareVersion:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OtaSetting{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firmwarePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', checkFirmwareCrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->serviceUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", characteristicUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->characteristicUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pduLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCompare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firmwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwareVersion:[B

    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendOTAVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendFwIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fwIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secureBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
