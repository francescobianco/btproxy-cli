.class public Lcom/keephealth/android/util/telinkota/OtaController;
.super Ljava/lang/Object;
.source "OtaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_READ_INTERVAL:I = 0x8

.field public static final OTA_STATE_FAILURE:I = 0x0

.field public static final OTA_STATE_PROGRESS:I = 0x2

.field public static final OTA_STATE_SUCCESS:I = 0x1

.field private static final START_WAITING:I = 0xc8

.field private static final TAG_OTA_END:I = 0x7

.field private static final TAG_OTA_FW_VERSION_REQ:I = 0x9

.field private static final TAG_OTA_LAST:I = 0x3

.field private static final TAG_OTA_READ:I = 0x2

.field private static final TAG_OTA_REQUEST_MTU:I = 0x4

.field private static final TAG_OTA_SET_FW_INDEX:I = 0xa

.field private static final TAG_OTA_SIGN_LAST:I = 0xc

.field private static final TAG_OTA_SIGN_WRITE:I = 0xb

.field private static final TAG_OTA_START:I = 0x6

.field private static final TAG_OTA_START_EXT:I = 0x8

.field private static final TAG_OTA_START_READ:I = 0xd

.field private static final TAG_OTA_VERSION:I = 0x5

.field private static final TAG_OTA_WRITE:I = 0x1

.field private static final TIMEOUT_VERSION_RSP:J = 0xbb8L


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

.field private final OTA_FW_VERSION_RSP_TASK:Ljava/lang/Runnable;

.field private final OTA_START_TASK:Ljava/lang/Runnable;

.field private final OTA_TIMEOUT_TASK:Ljava/lang/Runnable;

.field private mCallback:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

.field private mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

.field private final mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

.field private final mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

.field protected mTimeoutHandler:Landroid/os/Handler;

.field private otaProtocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

.field private otaRunning:Z

.field private otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

.field private realPduLen:I


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-direct {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    .line 95
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaSignParser;

    invoke-direct {v0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    .line 103
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    .line 104
    const-string v0, "GATT-OTA"

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->LOG_TAG:Ljava/lang/String;

    .line 569
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaController$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/telinkota/OtaController$1;-><init>(Lcom/keephealth/android/util/telinkota/OtaController;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 656
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaController$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/telinkota/OtaController$2;-><init>(Lcom/keephealth/android/util/telinkota/OtaController;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_START_TASK:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaController$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/telinkota/OtaController$3;-><init>(Lcom/keephealth/android/util/telinkota/OtaController;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_FW_VERSION_RSP_TASK:Ljava/lang/Runnable;

    .line 673
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaController$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/telinkota/OtaController$4;-><init>(Lcom/keephealth/android/util/telinkota/OtaController;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_TIMEOUT_TASK:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/telinkota/OtaController;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendNextSignCommand()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaStartReadCmd()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/telinkota/OtaController;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/OtaController;->onEndCmdComplete(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaEndCommand()V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/telinkota/OtaController;)Z
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->validateOta()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V

    return-void
.end method

.method private calcRealPduLen()I
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->getMtu()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    .line 237
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->pduLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private checkCRC([B)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    .line 340
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8

    goto :goto_5d

    .line 344
    :cond_8
    array-length v1, p1

    add-int/lit8 v2, v1, -0x4

    .line 345
    new-array v3, v2, [B

    .line 346
    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    invoke-static {v3}, Lcom/keephealth/android/util/telinkota/util/Crc;->calCrc32([B)I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    .line 351
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v1, -0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v4, v1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v4, p1

    int-to-long v1, v4

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "crc check compare: crc : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " local : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    int-to-long v3, v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5b

    .line 357
    const-string p1, "crc check err"

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    return v0

    :cond_5b
    const/4 p1, 0x1

    return p1

    :cond_5d
    :goto_5d
    return v0
.end method

.method private clear()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->clear()V

    return-void
.end method

.method private getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 217
    :cond_6
    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 220
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    :cond_2d
    return-object v1
.end method

.method private isLegacyProtocol()Z
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaProtocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;->Legacy:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private onEndCmdComplete(Z)V
    .registers 3

    .line 560
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->isLegacyProtocol()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 561
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V

    .line 562
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaProgressChanged()V

    .line 563
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaSuccess()V

    goto :goto_19

    :cond_10
    if-nez p1, :cond_19

    const/16 p1, 0x14

    .line 565
    const-string v0, "OTA fail: end packet sent err"

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method private parseDescriptor(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "parsed sign: "

    const-string v1, "parsed public key: "

    const/4 v2, 0x0

    if-nez p1, :cond_8

    return v2

    .line 307
    :cond_8
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 309
    new-array v4, p1, [B

    .line 310
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 311
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    add-int/lit8 v3, p1, -0x20

    .line 313
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x2

    invoke-static {v4, v3, v6, v5}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytes2Integer([BIILjava/nio/ByteOrder;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1e

    .line 315
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, p1, v6, v5}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytes2Integer([BIILjava/nio/ByteOrder;)I

    move-result p1

    const/16 v5, 0x40

    .line 317
    new-array v6, v5, [B

    .line 318
    invoke-static {v4, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 321
    new-array v1, v5, [B

    .line 322
    invoke-static {v4, p1, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

    invoke-virtual {p1, v6, v1}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->set([B[B)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_63} :catch_65

    const/4 p1, 0x1

    return p1

    :catch_65
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private parseFirmware(Ljava/lang/String;Z)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 285
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 287
    new-array p1, p1, [B

    .line 288
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 289
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_23

    .line 292
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/OtaController;->checkCRC([B)Z

    move-result p2

    if-nez p2, :cond_23

    .line 293
    const-string p1, "check firmware fail"

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_22} :catch_24

    return-object v0

    :cond_23
    return-object p1

    :catch_24
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private resetOta()V
    .registers 3

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    .line 398
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->clear()V

    return-void
.end method

.method private sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    if-eqz v0, :cond_7

    .line 549
    invoke-virtual {v0, p2, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->sendCommand(Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)Z

    :cond_7
    return-void
.end method

.method private sendNextOtaPacketCommand()V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->hasNextPacket()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 487
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 489
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 490
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 491
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacket()[B

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    .line 492
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->isLast()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x3

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    goto :goto_3f

    :cond_38
    const/4 v1, 0x1

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    .line 497
    :goto_3f
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V

    .line 498
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaProgressChanged()V

    goto :goto_4d

    .line 500
    :cond_48
    const-string v0, "no other packet"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

.method private sendNextSignCommand()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->hasNextPacket()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 506
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 508
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 509
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 510
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->getNextPacket()[B

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    .line 511
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mSignParser:Lcom/keephealth/android/util/telinkota/OtaSignParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->isLast()Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0xc

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    goto :goto_41

    :cond_39
    const/16 v1, 0xb

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    .line 516
    :goto_41
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V

    goto :goto_4c

    .line 518
    :cond_47
    const-string v0, "no other sign packet"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    :goto_4c
    return-void
.end method

.method private sendOTAVersionCmd()V
    .registers 4

    .line 417
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_VERSION:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    return-void
.end method

.method private sendOtaCmd(II[B)V
    .registers 9

    .line 465
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 467
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 468
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 469
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_32

    .line 473
    new-array p3, v2, [B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p3, p2

    goto :goto_47

    .line 475
    :cond_32
    array-length v3, p3

    add-int/2addr v3, v2

    new-array v3, v3, [B

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    .line 476
    aput-byte v4, v3, v1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 477
    aput-byte p1, v3, p2

    .line 478
    array-length p1, p3

    invoke-static {p3, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v3

    .line 480
    :goto_47
    iput-object p3, v0, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V

    return-void
.end method

.method private sendOtaEndCommand()V
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getIndex()I

    move-result v0

    const/16 v1, 0x12

    .line 453
    new-array v1, v1, [B

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 454
    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 455
    aput-byte v2, v1, v3

    not-int v0, v0

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    .line 456
    aput-byte v2, v1, v3

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    .line 457
    aput-byte v0, v1, v2

    .line 461
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_END:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    return-void
.end method

.method private sendOtaFwVersionReqCommand()V
    .registers 5

    const/4 v0, 0x3

    .line 444
    new-array v0, v0, [B

    .line 445
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwareVersion:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-boolean v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 447
    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v1, v1, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_FW_VERSION_RSP_TASK:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendOtaStartCmd()V
    .registers 4

    .line 422
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    return-void
.end method

.method private sendOtaStartExtCmd()V
    .registers 4

    const/16 v0, 0x12

    .line 426
    new-array v0, v0, [B

    .line 427
    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 428
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-boolean v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->versionCompare:Z

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 431
    sget-object v1, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_START_EXT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v1, v1, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    return-void
.end method

.method private sendOtaStartReadCmd()V
    .registers 3

    .line 435
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 437
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 438
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->READ:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    const/16 v1, 0xd

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V

    return-void
.end method

.method private sendSetFwIndexCmd()V
    .registers 5

    .line 413
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_SET_FW_INDEX:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-byte v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->fwIndex:B

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaCmd(II[B)V

    return-void
.end method

.method private setOtaProgressChanged()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->invalidateProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 404
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaProgress()V

    :cond_b
    return-void
.end method

.method private updateOtaState(ILjava/lang/String;)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mCallback:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    if-eqz v0, :cond_9

    .line 366
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;->onOtaStatusChanged(ILjava/lang/String;Lcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V

    :cond_9
    return-void
.end method

.method private validateOta()Z
    .registers 6

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->readInterval:I

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    mul-int/lit8 v0, v0, 0x10

    .line 531
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v2}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacketIndex()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    mul-int/2addr v2, v3

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ota onCommandSampled byte length : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->i(Ljava/lang/String;)I

    if-lez v2, :cond_68

    .line 533
    rem-int/2addr v2, v0

    if-nez v2, :cond_68

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCommandSampled ota read packet "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacketIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->i(Ljava/lang/String;)I

    .line 535
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 537
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 538
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->READ:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    const/4 v1, 0x2

    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    .line 541
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_CMD_CB:Lcom/keephealth/android/util/telinkota/Command$Callback;

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->sendGattCmd(Lcom/keephealth/android/util/telinkota/Command;Lcom/keephealth/android/util/telinkota/Command$Callback;)V

    const/4 v0, 0x1

    return v0

    :cond_68
    return v1
.end method


# virtual methods
.method public getOtaProgress()I
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getProgress()I

    move-result v0

    return v0
.end method

.method protected onOtaFailure(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/telinkota/OtaController;->updateOtaState(ILjava/lang/String;)V

    return-void
.end method

.method protected onOtaProgress()V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mCallback:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    if-eqz v0, :cond_d

    .line 387
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->getOtaProgress()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-interface {v0, v1, v2, p0}, Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;->onOtaProgressUpdate(ILcom/keephealth/android/util/telinkota/GattConnection;Lcom/keephealth/android/util/telinkota/OtaController;)V

    :cond_d
    return-void
.end method

.method protected onOtaStart()V
    .registers 3

    const/4 v0, 0x1

    .line 372
    const-string v1, "OTA started"

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->updateOtaState(ILjava/lang/String;)V

    return-void
.end method

.method protected onOtaSuccess()V
    .registers 3

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    .line 377
    const-string v1, "OTA success"

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->updateOtaState(ILjava/lang/String;)V

    return-void
.end method

.method public pushNotification([B)V
    .registers 9

    .line 173
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 175
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 176
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "ota notify: %04X"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 177
    sget-object v4, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v4, v4, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    if-ne v2, v4, :cond_70

    .line 179
    array-length v2, p1

    const/4 v4, 0x5

    if-ge v2, v4, :cond_37

    const/16 p1, 0x12

    .line 180
    const-string v0, "version response command format error"

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return-void

    .line 184
    :cond_37
    new-array v2, v1, [B

    .line 185
    invoke-static {p1, v1, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    .line 187
    aget-byte p1, p1, v1

    if-ne p1, v3, :cond_42

    move v0, v3

    .line 188
    :cond_42
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, ":"

    .line 189
    invoke-static {v2, v1}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 188
    const-string v2, "version response: version-%s accept-%b"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_FW_VERSION_RSP_TASK:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_68

    .line 193
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaStartExtCmd()V

    goto :goto_a7

    :cond_68
    const/16 p1, 0x13

    .line 195
    const-string v0, "device version compare fail"

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    goto :goto_a7

    .line 199
    :cond_70
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->CMD_OTA_RESULT:Lcom/keephealth/android/util/telinkota/foundation/Opcode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/Opcode;->value:I

    if-ne v2, v0, :cond_a7

    .line 200
    iget-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    if-nez v0, :cond_7b

    return-void

    .line 201
    :cond_7b
    array-length v0, p1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_80

    return-void

    .line 202
    :cond_80
    aget-byte p1, p1, v1

    .line 203
    sget-object v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->OTA_SUCCESS:Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->value:I

    if-ne p1, v0, :cond_95

    .line 204
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->isLegacyProtocol()Z

    move-result p1

    if-nez p1, :cond_a7

    .line 205
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V

    .line 206
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaSuccess()V

    goto :goto_a7

    .line 209
    :cond_95
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->getResultCode(I)Lcom/keephealth/android/util/telinkota/foundation/ResultCode;

    move-result-object p1

    if-nez p1, :cond_9e

    .line 210
    const-string p1, "unknown result code"

    goto :goto_a2

    :cond_9e
    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/foundation/ResultCode;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a2
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mCallback:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    return-void
.end method

.method public startOta(Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;)V
    .registers 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start ota - 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    if-eqz v0, :cond_21

    const/4 p1, 0x4

    .line 137
    const-string v0, "busy"

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return-void

    .line 141
    :cond_21
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_87

    .line 146
    :cond_2c
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    .line 147
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->validateOtaSettings()Z

    move-result v0

    if-nez v0, :cond_38

    return-void

    .line 152
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start ota: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->OTA_TIMEOUT_TASK:Ljava/lang/Runnable;

    iget v2, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/telinkota/GattConnection;->enableNotification(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 156
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaStart()V

    .line 158
    iget-boolean v0, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendFwIndex:Z

    if-eqz v0, :cond_72

    .line 159
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendSetFwIndexCmd()V

    .line 162
    :cond_72
    iget-boolean p1, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->sendOTAVersion:Z

    if-eqz p1, :cond_79

    .line 163
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOTAVersionCmd()V

    .line 165
    :cond_79
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->isLegacyProtocol()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 166
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaStartCmd()V

    goto :goto_86

    .line 168
    :cond_83
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaFwVersionReqCommand()V

    :goto_86
    return-void

    :cond_87
    :goto_87
    const/16 p1, 0x18

    .line 142
    const-string v0, "OTA fail: device not connected"

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return-void
.end method

.method public stopOta(Z)V
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V

    if-eqz p1, :cond_a

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->disconnect()Z

    :cond_a
    return-void
.end method

.method public validateOtaSettings()Z
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/16 v0, 0x10

    .line 243
    const-string v2, "OTA fail: params error"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return v1

    .line 247
    :cond_d
    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaService()Ljava/util/UUID;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1f

    const/16 v0, 0x19

    .line 250
    const-string v2, "OTA fail: service not found"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return v1

    .line 253
    :cond_1f
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-virtual {v2}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->getOtaCharacteristic()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_33

    const/16 v0, 0x1a

    .line 254
    const-string v2, "OTA fail: characteristic not found"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return v1

    .line 258
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-boolean v2, v2, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->checkFirmwareCrc:Z

    invoke-direct {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->parseFirmware(Ljava/lang/String;Z)[B

    move-result-object v0

    if-nez v0, :cond_49

    const/16 v0, 0x1b

    .line 260
    const-string v2, "OTA fail: check selected firmware bin error"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return v1

    .line 264
    :cond_49
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-boolean v2, v2, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    if-eqz v2, :cond_61

    .line 265
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-object v2, v2, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->descriptorPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->parseDescriptor(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    const/16 v0, 0x1e

    .line 266
    const-string v2, "OTA fail: check selected descriptor bin error"

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return v1

    .line 271
    :cond_61
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->protocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->otaProtocol:Lcom/keephealth/android/util/telinkota/foundation/OtaProtocol;

    .line 275
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/OtaController;->calcRealPduLen()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "used pdu len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaController;->mOtaParser:Lcom/keephealth/android/util/telinkota/OtaPacketParser;

    iget v2, p0, Lcom/keephealth/android/util/telinkota/OtaController;->realPduLen:I

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->set([BI)V

    const/4 v0, 0x1

    return v0
.end method
