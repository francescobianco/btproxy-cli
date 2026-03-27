.class public Lcom/keephealth/android/util/ota/Device;
.super Lcom/keephealth/android/util/ota/Peripheral;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ota/Device$DescriptorCallback;,
        Lcom/keephealth/android/util/ota/Device$GattOperationCallback;,
        Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;,
        Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;,
        Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

.field private static final DELAY_PERIOD:I = 0x14

.field public static final OTA_END:I = 0xff02

.field public static final OTA_PREPARE:I = 0xff00

.field public static final OTA_START:I = 0xff01

.field public static SERVICE_UUID:Ljava/util/UUID; = null

.field public static final STATE_FAILURE:I = 0x0

.field public static final STATE_PROGRESS:I = 0x2

.field public static final STATE_SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Device"

.field private static final TAG_GENERAL_ENABLE_NOTIFICATION:I = 0xe

.field private static final TAG_GENERAL_READ:I = 0xb

.field private static final TAG_GENERAL_READ_DESCRIPTOR:I = 0xd

.field private static final TAG_GENERAL_WRITE:I = 0xc

.field private static final TAG_OTA_ENABLE_NOTIFICATION:I = 0x9

.field private static final TAG_OTA_END:I = 0x8

.field private static final TAG_OTA_LAST:I = 0x3

.field private static final TAG_OTA_LAST_READ:I = 0xa

.field private static final TAG_OTA_PREPARE:I = 0x5

.field private static final TAG_OTA_PRE_READ:I = 0x4

.field private static final TAG_OTA_READ:I = 0x2

.field private static final TAG_OTA_START:I = 0x7

.field private static final TAG_OTA_WRITE:I = 0x1


# instance fields
.field private final mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

.field private mDescriptorCallback:Lcom/keephealth/android/util/ota/Device$DescriptorCallback;

.field private mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

.field private mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

.field private final mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

.field private final mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    .line 24
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[BI)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/util/ota/Peripheral;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    .line 50
    new-instance p1, Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-direct {p1}, Lcom/keephealth/android/util/ota/OtaPacketParser;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    .line 51
    new-instance p1, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;-><init>(Lcom/keephealth/android/util/ota/Device;Lcom/keephealth/android/util/ota/Device$1;)V

    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    .line 52
    new-instance p1, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;-><init>(Lcom/keephealth/android/util/ota/Device;Lcom/keephealth/android/util/ota/Device$1;)V

    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$DescriptorCallback;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/util/ota/Device;->mDescriptorCallback:Lcom/keephealth/android/util/ota/Device$DescriptorCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ota/Device;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->sendOtaStartCommand()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/ota/Device;I)Z
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Device;->sendNextOtaPacketCommand(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/ota/Device;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->resetOta()V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/ota/Device;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->setOtaProgressChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/ota/Device;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->sendOtaEndCommand()V

    return-void
.end method

.method private resetOta()V
    .registers 3

    .line 156
    const-string v0, "rtrtu5"

    const-string v1, "resetOta"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->clear()V

    return-void
.end method

.method private sendNextOtaPacketCommand(I)Z
    .registers 6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOtaParser.hasNextPacket():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->hasNextPacket()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtrtu5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->hasNextPacket()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    .line 221
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object p1

    .line 222
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 223
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 224
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    .line 225
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getNextPacket()[B

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->data:[B

    .line 226
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->isLast()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    const/4 v1, 0x3

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    goto :goto_5d

    .line 230
    :cond_56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    move v2, v0

    .line 232
    :goto_5d
    iput v0, p1, Lcom/keephealth/android/util/ota/Command;->delay:I

    .line 233
    iget-object v0, p1, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    move v0, v2

    :cond_6e
    return v0
.end method

.method private sendOTAPrepareCommand(I)V
    .registers 5

    .line 169
    const-string v0, "OTA_PREPARE"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendOTAPrepareCommand_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtrtu5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object p1

    .line 172
    sget-object v0, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v0, p1, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 173
    sget-object v0, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    iput-object v0, p1, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 174
    sget-object v0, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v0, p1, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/4 v0, 0x5

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 176
    new-array v1, v1, [B

    fill-array-data v1, :array_40

    iput-object v1, p1, Lcom/keephealth/android/util/ota/Command;->data:[B

    const/4 v1, 0x1

    .line 177
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void

    nop

    :array_40
    .array-data 1
        0x0t
        -0x1t
    .end array-data
.end method

.method private sendOtaEndCommand()V
    .registers 8

    .line 192
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 194
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 195
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/16 v1, 0x8

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    .line 197
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v2}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getIndex()I

    move-result v2

    .line 202
    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 203
    aput-byte v5, v3, v4

    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 204
    aput-byte v6, v3, v4

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    .line 205
    aput-byte v4, v3, v5

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x3

    .line 206
    aput-byte v4, v3, v5

    not-int v2, v2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x4

    .line 207
    aput-byte v4, v3, v6

    shr-int/2addr v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x5

    .line 208
    aput-byte v2, v3, v4

    .line 210
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ota/OtaPacketParser;->crc16([B)I

    move-result v2

    .line 211
    iget-object v4, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v4, v3, v2}, Lcom/keephealth/android/util/ota/OtaPacketParser;->fillCrc([BI)V

    .line 212
    iput-object v3, v0, Lcom/keephealth/android/util/ota/Command;->data:[B

    .line 213
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    invoke-virtual {p0, v5, v1, v2, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void
.end method

.method private sendOtaStartCommand()V
    .registers 5

    .line 182
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 184
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 185
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/4 v1, 0x7

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v2, 0x2

    .line 187
    new-array v3, v2, [B

    fill-array-data v3, :array_26

    iput-object v3, v0, Lcom/keephealth/android/util/ota/Command;->data:[B

    .line 188
    iget-object v3, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void

    nop

    :array_26
    .array-data 1
        0x1t
        -0x1t
    .end array-data
.end method

.method private setOtaProgressChanged()V
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOtaParser.invalidateProgress():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->invalidateProgress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->invalidateProgress()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 164
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Device;->onOtaProgress()V

    :cond_25
    return-void
.end method

.method private validateOta()Z
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_2d

    .line 267
    rem-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2d

    .line 268
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 270
    sget-object v1, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 271
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->READ:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/4 v1, 0x2

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v2, 0x5

    .line 273
    iget-object v3, p0, Lcom/keephealth/android/util/ota/Device;->mOtaCallback:Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    const/4 v0, 0x1

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getOtaProgress()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getProgress()I

    move-result v0

    return v0
.end method

.method public isNotificationEnable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 280
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/ota/Device;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notificationToggle(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 286
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 288
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 289
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ota/Device;->isNotificationEnable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_1d

    sget-object p1, Lcom/keephealth/android/util/ota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    goto :goto_1f

    :cond_1d
    sget-object p1, Lcom/keephealth/android/util/ota/Command$CommandType;->DISABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    :goto_1f
    iput-object p1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/16 p1, 0xe

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 291
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void
.end method

.method protected onConnect()V
    .registers 3

    .line 68
    invoke-super {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onConnect()V

    .line 69
    const-string v0, "rtrtu5"

    const-string v1, "onConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    if-eqz v0, :cond_11

    .line 71
    invoke-interface {v0, p0}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onConnected(Lcom/keephealth/android/util/ota/Device;)V

    :cond_11
    return-void
.end method

.method protected onDisableNotify()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    if-eqz v0, :cond_7

    .line 113
    invoke-interface {v0}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onDisableNotify()V

    :cond_7
    return-void
.end method

.method protected onDisconnect()V
    .registers 3

    .line 77
    invoke-super {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onDisconnect()V

    .line 78
    const-string v0, "gf3e3"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->resetOta()V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    if-eqz v0, :cond_14

    .line 81
    invoke-interface {v0, p0}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onDisconnected(Lcom/keephealth/android/util/ota/Device;)V

    :cond_14
    return-void
.end method

.method protected onEnableNotify()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    if-eqz v0, :cond_7

    .line 107
    invoke-interface {v0}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onEnableNotify()V

    :cond_7
    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .registers 8

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ota/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/keephealth/android/util/ota/Device;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onNotify ==> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-static {p1, v2}, Lcom/keephealth/android/util/ota/MArrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    if-eqz v0, :cond_24

    .line 102
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method protected onOtaFailure(I)V
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOtaFailure_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tttre4"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, p0, v0}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V

    :cond_1c
    return-void
.end method

.method protected onOtaProgress()V
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOtaProgress_mDeviceStateCallback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    if-eqz v0, :cond_1e

    const/4 v1, 0x2

    .line 134
    invoke-interface {v0, p0, v1}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V

    :cond_1e
    return-void
.end method

.method protected onOtaSuccess()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 120
    invoke-interface {v0, p0, v1}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V

    :cond_8
    return-void
.end method

.method protected onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/ota/Peripheral;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    const-string v1, "rtre5"

    if-eqz v0, :cond_14

    .line 90
    const-string v0, "mDeviceStateCallback != null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;->onServicesDiscovered(Lcom/keephealth/android/util/ota/Device;Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V

    goto :goto_19

    .line 93
    :cond_14
    const-string p1, "mDeviceStateCallback == null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public sendDescriptorReadCommand(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 319
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 320
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 322
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 323
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v2, Lcom/keephealth/android/util/ota/Command;->descriptorUUID:Ljava/util/UUID;

    .line 324
    sget-object v1, Lcom/keephealth/android/util/ota/Command$CommandType;->READ_DESCRIPTOR:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object v1, v2, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/16 v1, 0xd

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/16 v3, 0x9

    .line 326
    iget-object v4, p0, Lcom/keephealth/android/util/ota/Device;->mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    goto :goto_8

    :cond_42
    return-void
.end method

.method public sendGeneralReadCommand(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 300
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 302
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 303
    sget-object p1, Lcom/keephealth/android/util/ota/Command$CommandType;->READ:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object p1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/16 p1, 0xb

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 305
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Device;->mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void
.end method

.method public sendGeneralWriteCommand(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .registers 5

    .line 309
    invoke-static {}, Lcom/keephealth/android/util/ota/Command;->newInstance()Lcom/keephealth/android/util/ota/Command;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    .line 311
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 312
    sget-object p1, Lcom/keephealth/android/util/ota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/ota/Command$CommandType;

    iput-object p1, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    const/16 p1, 0xc

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    .line 314
    iput-object p2, v0, Lcom/keephealth/android/util/ota/Command;->data:[B

    const/16 p2, 0x8

    .line 315
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Device;->mCharacteristicCommandCallback:Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/keephealth/android/util/ota/Device;->sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z

    return-void
.end method

.method public setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device;->mDeviceStateCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    return-void
.end method

.method public startOta([B)V
    .registers 3

    .line 143
    const-string v0, "startOta"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Device;->resetOta()V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Device;->mOtaParser:Lcom/keephealth/android/util/ota/OtaPacketParser;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->set([B)V

    const/4 p1, 0x1

    .line 148
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Device;->sendOTAPrepareCommand(I)V

    return-void
.end method
