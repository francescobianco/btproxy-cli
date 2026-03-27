.class public Lcom/keephealth/android/util/ble/TargeDataHandler;
.super Ljava/lang/Object;
.source "TargeDataHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerTargeData([B)V
    .registers 10

    .line 17
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/keephealth/android/model/bean/Goal;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/Goal;-><init>()V

    const/4 v2, 0x3

    .line 21
    new-array v3, v2, [B

    const/4 v4, 0x6

    .line 22
    aget-byte v4, p1, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v4, 0x7

    .line 23
    aget-byte v4, p1, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    const/16 v4, 0x8

    .line 24
    aget-byte v4, p1, v4

    const/4 v7, 0x0

    aput-byte v4, v3, v7

    .line 25
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    .line 27
    new-array v3, v2, [B

    const/16 v4, 0xe

    .line 28
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xf

    .line 29
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0x10

    .line 30
    aget-byte v4, p1, v4

    aput-byte v4, v3, v7

    .line 31
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/Goal;->goalDistanceKm:I

    .line 33
    new-array v3, v2, [B

    const/16 v4, 0xa

    .line 34
    aget-byte v4, p1, v4

    aput-byte v4, v3, v5

    const/16 v4, 0xb

    .line 35
    aget-byte v4, p1, v4

    aput-byte v4, v3, v6

    const/16 v4, 0xc

    .line 36
    aget-byte p1, p1, v4

    aput-byte p1, v3, v7

    .line 37
    invoke-static {v3, v7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result p1

    iput p1, v1, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 39
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method
