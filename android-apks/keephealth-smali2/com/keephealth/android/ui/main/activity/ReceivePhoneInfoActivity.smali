.class public Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ReceivePhoneInfoActivity.java"


# instance fields
.field btnNext:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a8
    .end annotation
.end field

.field private had_set:Ljava/lang/String;

.field private mWeight:I

.field private next:I

.field tv_content_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09072d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;[B)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->handlerDeviceInfo([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getDeviceState()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;[B)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->handlerDeviceState([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setDeviceState()V

    return-void
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;I)I
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->next:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setDeviceDate()V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setUserInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getTarget()V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;[B)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->handlerTargeData([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getNotice()V

    return-void
.end method

.method private getDeviceInfo()V
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x31

    .line 139
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 141
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$3;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getDeviceState()V
    .registers 6

    .line 217
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 220
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE_STATE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getNotice()V
    .registers 6

    .line 426
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_NOTICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getNoticeData()V
    .registers 3

    .line 109
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 110
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_18

    .line 113
    :cond_b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->showLoading()V

    .line 114
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 115
    new-instance v1, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->requestByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private getTarget()V
    .registers 6

    .line 401
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_TARGE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private handlerDeviceInfo([B)V
    .registers 11

    .line 160
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0xb

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v1, 0xd

    .line 161
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 163
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 165
    aget-byte v6, v2, v5

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3a

    .line 166
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_3a
    and-int/lit16 v2, v6, 0xff

    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x13

    .line 172
    invoke-static {p1, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 173
    array-length v1, p1

    move v6, v4

    :goto_4c
    if-ge v6, v1, :cond_65

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 177
    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-nez p1, :cond_7e

    .line 181
    new-instance p1, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {p1}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 184
    :cond_7e
    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    .line 186
    invoke-static {p1, v4}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 187
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->requestByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method private handlerDeviceState([B)V
    .registers 11

    .line 252
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 253
    iget-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    const/4 v2, 0x3

    .line 254
    aget-byte v2, p1, v2

    const/4 v3, 0x4

    .line 255
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    .line 256
    aget-byte v4, p1, v4

    const/16 v5, 0x9

    .line 260
    aget-byte v5, p1, v5

    const/16 v6, 0xa

    .line 261
    aget-byte v6, p1, v6

    const/16 v7, 0xb

    .line 262
    aget-byte v7, p1, v7

    const/16 v8, 0xc

    .line 263
    aget-byte p1, p1, v8

    iput p1, v1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 265
    iput v2, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 266
    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 267
    iput v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 271
    iput v5, v1, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_35

    move v2, v1

    goto :goto_36

    :cond_35
    move v2, p1

    .line 272
    :goto_36
    iput-boolean v2, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-ne v7, v1, :cond_3b

    move p1, v1

    .line 273
    :cond_3b
    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 274
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 276
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    return-void
.end method

.method private handlerTargeData([B)V
    .registers 10

    .line 456
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 457
    new-instance v1, Lcom/keephealth/android/model/bean/Goal;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/Goal;-><init>()V

    const/4 v2, 0x3

    .line 460
    new-array v3, v2, [B

    const/4 v4, 0x6

    .line 461
    aget-byte v4, p1, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v4, 0x7

    .line 462
    aget-byte v4, p1, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    const/16 v4, 0x8

    .line 463
    aget-byte v4, p1, v4

    const/4 v7, 0x0

    aput-byte v4, v3, v7

    .line 464
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    .line 466
    new-array v3, v2, [B

    const/16 v4, 0xe

    .line 467
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xf

    .line 468
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0x10

    .line 469
    aget-byte v4, p1, v4

    aput-byte v4, v3, v7

    .line 470
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    .line 472
    new-array v3, v2, [B

    const/16 v4, 0xa

    .line 473
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xb

    .line 474
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0xc

    .line 475
    aget-byte p1, p1, v4

    aput-byte p1, v3, v7

    .line 476
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result p1

    iput p1, v1, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    .line 477
    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 478
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method private setDeviceDate()V
    .registers 6

    .line 335
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceData()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private setDeviceState()V
    .registers 17

    .line 279
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    .line 281
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    .line 283
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    goto :goto_30

    .line 285
    :cond_2a
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 287
    :goto_30
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    if-ne v3, v4, :cond_41

    .line 288
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    goto :goto_47

    .line 290
    :cond_41
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 292
    :goto_47
    iget v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 293
    iget v5, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 294
    iget v6, v0, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 295
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v8

    .line 296
    iget v9, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 297
    iget v10, v0, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 298
    iget-boolean v11, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 299
    iget-boolean v12, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 300
    iget v13, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 301
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v14

    .line 302
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    if-nez v3, :cond_66

    const/16 v3, 0xa

    :cond_66
    move v4, v3

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8bbe\u7f6e\u4f53\u6e29\u6e29\u5ea6\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget v7, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 308
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v15

    .line 307
    invoke-static/range {v4 .. v15}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$6;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private setUserInfo()V
    .registers 9

    .line 364
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u4f53\u91cd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF4325"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->mWeight:I

    const/16 v3, 0x12d

    if-le v1, v3, :cond_46

    .line 368
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->mWeight:I

    int-to-float v1, v1

    .line 369
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 370
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 371
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_4a

    :cond_46
    mul-int/lit8 v1, v1, 0xa

    .line 373
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->mWeight:I

    .line 375
    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "userInfo:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v4

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0075

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 86
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const/4 v0, 0x1

    .line 87
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->tv_content_1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 90
    sput v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    .line 91
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getDeviceInfo()V

    .line 104
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .line 587
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    .line 588
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "class"

    const-string v4, "classStr"

    const-string v5, "MainActivityNew"

    if-eqz v0, :cond_32

    .line 589
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v5, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 591
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 593
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_61

    :cond_32
    const/16 v0, 0x29

    const/4 v6, 0x0

    .line 595
    invoke-static {v6, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 596
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 597
    invoke-static {v6}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 598
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v5, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 600
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 602
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    :goto_61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b4
        }
    .end annotation

    const p1, 0x7f0900b4

    .line 526
    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_120

    .line 527
    const-string p1, "had_set"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->had_set:Ljava/lang/String;

    .line 528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->had_set:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 529
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    if-eqz p1, :cond_120

    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_120

    .line 530
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v1, "PersonInfoActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "class"

    const-string v2, "classStr"

    const-string v3, "MainActivityNew"

    const/4 v4, 0x1

    if-eqz p1, :cond_73

    .line 531
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_120

    .line 533
    new-instance p1, Landroid/content/Intent;

    const-class v5, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    const-string v5, "isConnect"

    const-string v6, "true"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 536
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 537
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 540
    sput v4, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 541
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto/16 :goto_120

    .line 544
    :cond_73
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v5, "MainActivity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 545
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    const/16 v5, 0xc8

    if-eqz p1, :cond_b0

    .line 546
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 548
    invoke-virtual {p0, v5}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setResult(I)V

    .line 549
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 550
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 552
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->finish()V

    .line 553
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_120

    .line 555
    :cond_b0
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 557
    invoke-virtual {p0, v5}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->setResult(I)V

    .line 558
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 559
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 561
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->finish()V

    .line 562
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    const/16 p1, 0x28

    const/4 v0, 0x0

    .line 563
    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 564
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 565
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    goto :goto_120

    .line 567
    :cond_eb
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    const-string v5, "AddMemberActivity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 568
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_120

    .line 569
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    sput-object v3, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 571
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 573
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    goto :goto_120

    .line 580
    :cond_11b
    const-class p1, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_120
    :goto_120
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 608
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 609
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 610
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/4 v0, 0x0

    .line 611
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 612
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method public onOneClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a8
        }
    .end annotation

    .line 513
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 515
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    const-string v0, "receivePhone"

    invoke-virtual {p1, v0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_24

    .line 519
    :cond_16
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->showToast(Ljava/lang/String;)V

    :goto_24
    return-void
.end method
