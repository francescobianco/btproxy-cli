.class public Lcom/keephealth/android/util/ble/CmdHelper;
.super Ljava/lang/Object;
.source "CmdHelper.java"


# static fields
.field public static final CMD_BIND_DEVICE:[B

.field public static final CMD_CLEAR_ACTIVITY:[B

.field public static final CMD_GET_ACTIVITY:[B

.field public static final CMD_GET_ALARM:[B

.field public static final CMD_GET_CURRENT_HISTORY_STEP:[B

.field public static final CMD_GET_CURRENT_POWER:[B

.field public static final CMD_GET_CURRENT_STEP:[B

.field public static final CMD_GET_DEVICE:[B

.field public static final CMD_GET_DEVICE_STATE:[B

.field public static final CMD_GET_HART_OPEN:[B

.field public static final CMD_GET_HART_RONG:[B

.field public static final CMD_GET_LONGSIT:[B

.field public static final CMD_GET_LONGSIT_NEW:[B

.field public static CMD_GET_NAVI_GAODE:[B = null

.field public static final CMD_GET_NOTICE:[B

.field public static final CMD_GET_SCREENLIGHT:[B

.field public static final CMD_GET_SLEEP:[B

.field public static final CMD_GET_TARGE:[B

.field public static final CMD_GET_USERINFO:[B

.field public static final DATA_LENTH:I = 0x2

.field public static END_MESSAGE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_92

    sput-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE:[B

    const/4 v1, 0x7

    .line 50
    new-array v1, v1, [B

    fill-array-data v1, :array_98

    sput-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_BIND_DEVICE:[B

    const/4 v1, 0x5

    .line 51
    new-array v2, v1, [B

    fill-array-data v2, :array_a0

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_ACTIVITY:[B

    .line 52
    new-array v2, v1, [B

    fill-array-data v2, :array_a8

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_CLEAR_ACTIVITY:[B

    .line 53
    new-array v2, v0, [B

    fill-array-data v2, :array_b0

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_ALARM:[B

    .line 54
    new-array v2, v0, [B

    fill-array-data v2, :array_b6

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT:[B

    .line 55
    new-array v2, v0, [B

    fill-array-data v2, :array_bc

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT_NEW:[B

    .line 56
    new-array v2, v0, [B

    fill-array-data v2, :array_c2

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SCREENLIGHT:[B

    .line 57
    new-array v2, v0, [B

    fill-array-data v2, :array_c8

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_USERINFO:[B

    .line 60
    new-array v2, v1, [B

    fill-array-data v2, :array_ce

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_STEP:[B

    .line 61
    new-array v2, v0, [B

    fill-array-data v2, :array_d6

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE_STATE:[B

    const/16 v2, 0x9

    .line 62
    new-array v2, v2, [B

    fill-array-data v2, :array_dc

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_HISTORY_STEP:[B

    .line 64
    new-array v2, v0, [B

    fill-array-data v2, :array_e6

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_POWER:[B

    .line 65
    new-array v2, v0, [B

    fill-array-data v2, :array_ec

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_TARGE:[B

    .line 66
    new-array v2, v0, [B

    fill-array-data v2, :array_f2

    sput-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SLEEP:[B

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_f8

    sput-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_NOTICE:[B

    .line 68
    new-array v0, v1, [B

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_HART_RONG:[B

    .line 69
    new-array v0, v1, [B

    fill-array-data v0, :array_106

    sput-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_HART_OPEN:[B

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_10e

    sput-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_NAVI_GAODE:[B

    .line 1393
    new-array v0, v1, [B

    fill-array-data v0, :array_116

    sput-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->END_MESSAGE:[B

    return-void

    :array_92
    .array-data 1
        0x1t
        0x0t
        0x0t
        -0x50t
    .end array-data

    :array_98
    .array-data 1
        0xct
        0x4t
        0x0t
        0x0t
        0x5t
        0x6t
        0x7t
    .end array-data

    :array_a0
    .array-data 1
        0x23t
        0x1t
        0x0t
        0x0t
        0x72t
    .end array-data

    nop

    :array_a8
    .array-data 1
        0x23t
        0x1t
        0x0t
        0x0t
        -0x38t
    .end array-data

    nop

    :array_b0
    .array-data 1
        0x5t
        0x0t
        0x0t
        0x8t
    .end array-data

    :array_b6
    .array-data 1
        0x6t
        0x0t
        0x0t
        0x5et
    .end array-data

    :array_bc
    .array-data 1
        0x41t
        0x0t
        0x0t
        0x30t
    .end array-data

    :array_c2
    .array-data 1
        0x42t
        0x0t
        0x0t
        -0x7at
    .end array-data

    :array_c8
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x5ct
    .end array-data

    :array_ce
    .array-data 1
        0x20t
        0x1t
        0x0t
        0x0t
        0x70t
    .end array-data

    nop

    :array_d6
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x6t
    .end array-data

    :array_dc
    .array-data 1
        0x20t
        0x5t
        0x0t
        0x1t
        -0x1et
        0x7t
        0xct
        0x1t
        -0x3et
    .end array-data

    nop

    :array_e6
    .array-data 1
        0x27t
        0x0t
        0x0t
        0x74t
    .end array-data

    :array_ec
    .array-data 1
        0x7t
        0x0t
        0x0t
        -0x4ct
    .end array-data

    :array_f2
    .array-data 1
        0x8t
        0x0t
        0x0t
        0xat
    .end array-data

    :array_f8
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x60t
    .end array-data

    :array_fe
    .array-data 1
        0x21t
        0x1t
        0x0t
        0x7t
        0x20t
    .end array-data

    nop

    :array_106
    .array-data 1
        0x21t
        0x1t
        0x0t
        0x8t
        0x76t
    .end array-data

    nop

    :array_10e
    .array-data 1
        0x60t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_116
    .array-data 1
        0xat
        0x1t
        0x0t
        0x3t
        0xet
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answerRingingCall()[B
    .registers 1

    const/16 v0, 0x14

    .line 1138
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static answerRingingCallToDevice()[B
    .registers 5

    const/16 v0, 0xc

    .line 1238
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1239
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 1240
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1241
    aput-byte v2, v0, v4

    const/4 v4, 0x3

    .line 1242
    aput-byte v1, v0, v4

    const/4 v1, 0x4

    .line 1243
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 1244
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 1245
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 1246
    aput-byte v2, v0, v1

    .line 1247
    aput-byte v2, v0, v3

    const/16 v1, 0x9

    .line 1248
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 1249
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 1250
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static bindCardOrWallet(IILjava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2376
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindCardOrWallet: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u540d\u7247"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    array-length v0, p2

    add-int/lit8 v1, v0, 0x9

    new-array v1, v1, [B

    const/16 v2, 0x70

    const/4 v3, 0x0

    .line 2379
    aput-byte v2, v1, v3

    add-int/lit8 v2, v0, 0x5

    const/4 v4, 0x2

    .line 2380
    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    .line 2381
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 2382
    aget-byte v2, v2, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x3

    .line 2383
    aput-byte v6, v1, v2

    const/4 v2, 0x4

    .line 2384
    aput-byte v6, v1, v2

    int-to-byte p1, p1

    const/4 v2, 0x5

    .line 2385
    aput-byte p1, v1, v2

    .line 2386
    array-length p1, p2

    add-int/2addr p1, v6

    int-to-byte p1, p1

    const/4 v2, 0x6

    aput-byte p1, v1, v2

    const/4 p1, 0x7

    int-to-byte p0, p0

    .line 2387
    aput-byte p0, v1, p1

    .line 2388
    array-length p0, p2

    const/16 p1, 0x8

    invoke-static {p2, v3, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p1

    .line 2389
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 2390
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static camare()[B
    .registers 1

    const/16 v0, 0x14

    .line 1157
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static clearActivityData()[B
    .registers 3

    const/4 v0, 0x5

    .line 209
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 210
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 211
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 212
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 213
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 214
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static clearCardOrWallet(II)[B
    .registers 8

    const/16 v0, 0x9

    .line 2397
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2398
    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/4 v3, 0x2

    .line 2399
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2400
    aget-byte v2, v4, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    .line 2401
    aget-byte v2, v4, v5

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 2402
    aput-byte v5, v0, v2

    const/4 v2, 0x4

    .line 2403
    aput-byte v5, v0, v2

    int-to-byte p1, p1

    .line 2404
    aput-byte p1, v0, v1

    const/4 p1, 0x6

    .line 2405
    aput-byte v5, v0, p1

    const/4 p1, 0x7

    int-to-byte p0, p0

    .line 2406
    aput-byte p0, v0, p1

    const/16 p0, 0x8

    .line 2407
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static clearCourse()[B
    .registers 4

    const/4 v0, 0x6

    .line 1988
    new-array v0, v0, [B

    const/16 v1, 0x51

    const/4 v2, 0x0

    .line 1989
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 1990
    aput-byte v3, v0, v1

    .line 1991
    aput-byte v2, v0, v3

    const/4 v3, 0x3

    .line 1992
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    .line 1993
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 1994
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static clearDeviceData(I)[B
    .registers 4

    const/4 v0, 0x5

    .line 229
    new-array v0, v0, [B

    const/16 v1, 0x26

    const/4 v2, 0x0

    .line 230
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 231
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 232
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte p0, p0

    .line 233
    aput-byte p0, v0, v1

    const/4 p0, 0x4

    .line 234
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static clearHeartData()[B
    .registers 3

    const/4 v0, 0x5

    .line 179
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 180
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 181
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 182
    aput-byte v2, v0, v1

    const/4 v2, 0x3

    .line 183
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    .line 184
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static clearStepData()[B
    .registers 3

    const/4 v0, 0x5

    .line 194
    new-array v0, v0, [B

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 195
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 196
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 197
    aput-byte v2, v0, v1

    const/4 v2, 0x3

    .line 198
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    .line 199
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static completeCheckCode([B)B
    .registers 5

    .line 1039
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    mul-int/lit8 v2, v2, 0x56

    add-int/lit8 v2, v2, 0x5a

    int-to-byte p0, v2

    return p0
.end method

.method public static completeCheckCodeReceive([B)B
    .registers 5

    .line 1049
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1050
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v2

    :goto_a
    if-ge v2, v0, :cond_13

    .line 1053
    aget-byte v3, v1, v2

    add-int/2addr p0, v3

    int-to-byte p0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    mul-int/lit8 p0, p0, 0x56

    add-int/lit8 p0, p0, 0x5a

    int-to-byte p0, p0

    return p0
.end method

.method public static completeCheckCodeReceive2([BB)B
    .registers 8

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6d4b\u8bd5:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fd0\u52a8\u8bb0\u5f55\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1c
    if-ge v2, v0, :cond_2c

    aget-byte v5, p0, v2

    if-ne p1, v5, :cond_27

    if-nez v4, :cond_27

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_27
    add-int/2addr v3, v5

    int-to-byte v3, v3

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1074
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "completeCheckCodeReceive2: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " -- "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    and-int/lit16 v4, p1, 0xff

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v3, v3, 0x56

    add-int/lit8 v3, v3, 0x5a

    int-to-byte p0, v3

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v3, p0, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static completeCmd([B)[B
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 1083
    :goto_2
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_e

    .line 1084
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    mul-int/lit8 v1, v1, 0x56

    add-int/lit8 v1, v1, 0x5a

    int-to-byte v0, v1

    .line 1087
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aput-byte v0, p0, v1

    return-object p0
.end method

.method private static controlDevice(II)[B
    .registers 6

    const/16 v0, 0xc

    .line 1303
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1304
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 1305
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1306
    aput-byte v2, v0, v1

    add-int/lit8 p0, p0, 0x3

    int-to-byte p1, p1

    .line 1307
    aput-byte p1, v0, p0

    const/16 p0, 0xb

    .line 1308
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static controlDeviceCall(I)[B
    .registers 2

    const/4 v0, 0x0

    .line 1275
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceCall2(I)[B
    .registers 2

    const/4 v0, 0x6

    .line 1295
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceCamare(I)[B
    .registers 2

    const/4 v0, 0x2

    .line 1279
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceFindPhone(I)[B
    .registers 2

    const/4 v0, 0x4

    .line 1287
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceGps(I)[B
    .registers 2

    const/4 v0, 0x7

    .line 1299
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDevicePhone(I)[B
    .registers 2

    const/4 v0, 0x0

    .line 1267
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceQuickResponse(I)[B
    .registers 2

    const/4 v0, 0x5

    .line 1291
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlDeviceSos(I)[B
    .registers 2

    const/4 v0, 0x1

    .line 1271
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static controlMusic(I)[B
    .registers 2

    const/4 v0, 0x3

    .line 1283
    invoke-static {v0, p0}, Lcom/keephealth/android/util/ble/CmdHelper;->controlDevice(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static deleteAllSchedule()[B
    .registers 6

    const/16 v0, 0x9

    .line 2525
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2526
    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/4 v3, 0x2

    .line 2527
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2528
    aget-byte v2, v4, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    .line 2529
    aget-byte v2, v4, v5

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 2530
    aput-byte v5, v0, v2

    const/4 v2, 0x4

    .line 2531
    aput-byte v5, v0, v2

    const/16 v3, 0xf

    .line 2532
    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 2533
    aput-byte v5, v0, v1

    const/4 v1, 0x7

    .line 2534
    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 2535
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static deleteAllTask()[B
    .registers 6

    const/16 v0, 0xc

    .line 2337
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2338
    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/4 v3, 0x2

    .line 2339
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2340
    aget-byte v2, v4, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    .line 2341
    aget-byte v2, v4, v5

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 2342
    aput-byte v5, v0, v2

    const/4 v2, 0x4

    .line 2343
    aput-byte v3, v0, v2

    const/4 v3, 0x5

    .line 2344
    aput-byte v2, v0, v3

    const/4 v3, 0x6

    .line 2345
    aput-byte v5, v0, v3

    const/4 v4, 0x7

    .line 2346
    aput-byte v2, v0, v4

    .line 2347
    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 2348
    aput-byte v5, v0, v1

    const/16 v1, 0xa

    .line 2349
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 2350
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static deleteDial(I)[B
    .registers 6

    const/4 v0, 0x7

    .line 1733
    new-array v0, v0, [B

    const/16 v1, 0x44

    const/4 v2, 0x0

    .line 1734
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 1735
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1736
    aput-byte v2, v0, v4

    .line 1737
    aput-byte v1, v0, v3

    .line 1738
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    aget-byte v2, v3, v2

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    .line 1739
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    aget-byte p0, p0, v1

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    const/4 p0, 0x6

    .line 1740
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static deleteTask(IIJ)[B
    .registers 12

    const/16 v0, 0xd

    .line 2312
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2313
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    const/4 v3, 0x2

    .line 2314
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2315
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2316
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 2317
    aput-byte v6, v0, v4

    const/4 v5, 0x4

    .line 2318
    aput-byte v6, v0, v5

    int-to-byte p0, p0

    const/4 v7, 0x5

    .line 2319
    aput-byte p0, v0, v7

    const/4 p0, 0x6

    .line 2320
    aput-byte v7, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p1

    .line 2321
    aput-byte p1, v0, p0

    .line 2322
    invoke-static {p2, p3, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object p0

    const/16 p1, 0x8

    .line 2323
    aget-byte p2, p0, v2

    aput-byte p2, v0, p1

    .line 2324
    aget-byte p1, p0, v6

    aput-byte p1, v0, v1

    const/16 p1, 0xa

    .line 2325
    aget-byte p2, p0, v3

    aput-byte p2, v0, p1

    const/16 p1, 0xb

    .line 2326
    aget-byte p0, p0, v4

    aput-byte p0, v0, p1

    const/16 p0, 0xc

    .line 2327
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static endFindPhone()[B
    .registers 1

    const/16 v0, 0x14

    .line 1201
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static endRingingCall()[B
    .registers 1

    const/16 v0, 0x14

    .line 1143
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static endRingingCallToDevice()[B
    .registers 5

    const/16 v0, 0xc

    .line 1221
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1222
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 1223
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1224
    aput-byte v2, v0, v1

    const/4 v4, 0x3

    .line 1225
    aput-byte v1, v0, v4

    const/4 v1, 0x4

    .line 1226
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 1227
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 1228
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 1229
    aput-byte v2, v0, v1

    .line 1230
    aput-byte v2, v0, v3

    const/16 v1, 0x9

    .line 1231
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 1232
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 1233
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static endSOS()[B
    .registers 1

    const/16 v0, 0x14

    .line 1213
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x4t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static endSOS2()[B
    .registers 1

    const/16 v0, 0x14

    .line 1217
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x4t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static enterCamare()[B
    .registers 1

    const/16 v0, 0x14

    .line 1152
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static enterUpdate()[B
    .registers 1

    const/4 v0, 0x4

    .line 1133
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0xbt
        0x0t
        0x0t
        0xct
    .end array-data
.end method

.method public static exitCamare()[B
    .registers 1

    const/16 v0, 0x14

    .line 1162
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static exitMusic()[B
    .registers 1

    const/16 v0, 0x14

    .line 1182
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static findDevice()[B
    .registers 1

    const/16 v0, 0x14

    .line 1205
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x10t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static findPhone()[B
    .registers 1

    const/16 v0, 0x14

    .line 1197
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getBind()[B
    .registers 5

    .line 86
    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_BIND_DEVICE:[B

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 87
    :goto_8
    sget-object v3, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_BIND_DEVICE:[B

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 88
    aget-byte v3, v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 90
    :cond_14
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public static getCmd(B)[B
    .registers 3

    const/4 v0, 0x2

    .line 1117
    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/ble/CmdHelper;->getCmd(B[B[B)[B

    move-result-object p0

    return-object p0

    :array_c
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getCmd(B[B)[B
    .registers 3

    const/4 v0, 0x0

    .line 1113
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getCmd(B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCmd(B[B[B)[B
    .registers 7

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u547d\u4ee4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u957f\u5ea6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1096
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x4

    .line 1097
    new-array v2, v2, [B

    .line 1098
    aput-byte p0, v2, v0

    move p0, v0

    .line 1099
    :goto_3a
    array-length v3, p1

    if-ge p0, v3, :cond_45

    add-int/lit8 v3, p0, 0x1

    .line 1100
    aget-byte p0, p1, p0

    aput-byte p0, v2, v3

    move p0, v3

    goto :goto_3a

    :cond_45
    if-eqz p2, :cond_53

    .line 1103
    :goto_47
    array-length p0, p2

    if-ge v0, p0, :cond_53

    add-int/lit8 p0, v0, 0x3

    .line 1104
    aget-byte p1, p2, v0

    aput-byte p1, v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_53
    add-int/lit8 v1, v1, 0x3

    .line 1107
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v2, v1

    .line 1108
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u8981\u53d1\u9001\u7684\u6570\u636e:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getCourseTable()[B
    .registers 3

    const/4 v0, 0x4

    .line 2002
    new-array v0, v0, [B

    const/16 v1, 0x51

    const/4 v2, 0x0

    .line 2003
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 2004
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 2005
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 2006
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getCurrentTemp()[B
    .registers 3

    const/4 v0, 0x5

    .line 423
    new-array v0, v0, [B

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 424
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 425
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 426
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 427
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 428
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getDatumLine()[B
    .registers 3

    const/4 v0, 0x5

    .line 1745
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 1746
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 1747
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 1748
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xa

    .line 1749
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 1750
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getDialInfo()[B
    .registers 3

    const/4 v0, 0x5

    .line 1665
    new-array v0, v0, [B

    const/16 v1, 0x44

    const/4 v2, 0x0

    .line 1666
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 1667
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 1668
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 1669
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 1670
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getDrinkWater()[B
    .registers 4

    const/4 v0, 0x5

    .line 1630
    new-array v0, v0, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    .line 1631
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 1632
    aput-byte v1, v0, v1

    const/4 v3, 0x2

    .line 1633
    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 1634
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    .line 1635
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getGameSwitch(I[I)I
    .registers 5

    .line 3130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3133
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_12

    .line 3134
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3136
    :cond_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 3138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTaskSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5468\u671f\u6570\u636e"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getGesture()[B
    .registers 7

    const/4 v0, 0x7

    .line 3052
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 3053
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 3054
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 3055
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 3056
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    .line 3057
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 3058
    aput-byte v6, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x13

    .line 3059
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 3060
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getHRV()[B
    .registers 3

    const/4 v0, 0x5

    .line 347
    new-array v0, v0, [B

    const/16 v1, 0x53

    const/4 v2, 0x0

    .line 348
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 349
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 350
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 351
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 352
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getHeartRate(I)[B
    .registers 4

    const/4 v0, 0x5

    .line 399
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 400
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 401
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 402
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte p0, p0

    .line 403
    aput-byte p0, v0, v1

    const/4 p0, 0x4

    .line 404
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static getHistoryData(IIII)[B
    .registers 9

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHistoryData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    .line 260
    new-array v0, v0, [B

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 261
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 262
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 263
    aput-byte v2, v0, v4

    .line 264
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    const/4 v4, 0x3

    int-to-byte p0, p0

    .line 265
    aput-byte p0, v0, v4

    const/4 p0, 0x4

    .line 266
    aget-byte v2, p1, v2

    aput-byte v2, v0, p0

    .line 267
    aget-byte p0, p1, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 268
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p3

    .line 269
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 270
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getHistoryHRV(III)[B
    .registers 8

    const/16 v0, 0x9

    .line 358
    new-array v0, v0, [B

    const/16 v1, 0x53

    const/4 v2, 0x0

    .line 359
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 360
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 361
    aput-byte v2, v0, v4

    .line 362
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 v4, 0x3

    .line 363
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 364
    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 365
    aget-byte p0, p0, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p1

    .line 366
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p2

    .line 367
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 368
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getHistoryHeartRateData(IIII)[B
    .registers 9

    const/16 v0, 0x9

    .line 292
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 293
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 294
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 295
    aput-byte v2, v0, v4

    .line 296
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    const/4 v4, 0x3

    int-to-byte p0, p0

    .line 297
    aput-byte p0, v0, v4

    const/4 p0, 0x4

    .line 298
    aget-byte v2, p1, v2

    aput-byte v2, v0, p0

    .line 299
    aget-byte p0, p1, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 300
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p3

    .line 301
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 302
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getHistoryTemp(III)[B
    .registers 8

    const/16 v0, 0x9

    .line 307
    new-array v0, v0, [B

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 308
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 309
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 310
    aput-byte v2, v0, v4

    .line 311
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 v4, 0x3

    .line 312
    aput-byte v1, v0, v4

    const/4 v4, 0x4

    .line 313
    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 314
    aget-byte p0, p0, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p1

    .line 315
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p2

    .line 316
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 317
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getNightViewDescription()[B
    .registers 7

    const/4 v0, 0x7

    .line 2941
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2942
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 2943
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2944
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2945
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    .line 2946
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 2947
    aput-byte v6, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xd

    .line 2948
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 2949
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getNotGame()[B
    .registers 7

    const/4 v0, 0x7

    .line 3090
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 3091
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 3092
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 3093
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 3094
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    .line 3095
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 3096
    aput-byte v6, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x14

    .line 3097
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 3098
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getPairingInfo()[B
    .registers 3

    const/4 v0, 0x4

    .line 1656
    new-array v0, v0, [B

    const/16 v1, 0x43

    const/4 v2, 0x0

    .line 1657
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 1658
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 1659
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 1660
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getRealTimeHRV(II)[B
    .registers 6

    const/4 v0, 0x7

    .line 374
    new-array v0, v0, [B

    const/16 v1, 0x53

    const/4 v2, 0x0

    .line 375
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 376
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 377
    aput-byte v2, v0, v1

    const/16 v1, 0x40

    .line 378
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 379
    aput-byte p0, v0, v1

    const/4 p0, 0x5

    int-to-byte p1, p1

    .line 380
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    .line 381
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getRealTimeHealth(II)[B
    .registers 6

    const/4 v0, 0x7

    .line 411
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 412
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 413
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 414
    aput-byte v2, v0, v1

    const/16 v1, 0x40

    .line 415
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 416
    aput-byte p0, v0, v1

    const/4 p0, 0x5

    int-to-byte p1, p1

    .line 417
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    .line 418
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static getSportMode()[B
    .registers 4

    const/4 v0, 0x5

    .line 239
    new-array v0, v0, [B

    const/16 v1, 0x2f

    const/4 v2, 0x0

    .line 240
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 241
    aput-byte v1, v0, v1

    const/4 v3, 0x2

    .line 242
    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 243
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    .line 244
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getSportTask()[B
    .registers 7

    const/4 v0, 0x7

    .line 2217
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2218
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 2219
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2220
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2221
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    .line 2222
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 2223
    aput-byte v6, v0, v1

    const/4 v2, 0x5

    .line 2224
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    .line 2225
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static getSubLength(Ljava/lang/String;I)I
    .registers 7

    .line 1497
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1498
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, p1, :cond_11

    .line 1500
    aget-byte v4, v0, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1502
    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1504
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const-string v3, "FF4536"

    if-le v1, p1, :cond_33

    add-int/lit8 v0, v0, -0x1

    .line 1505
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1506
    const-string p1, "\u7b2c\u4e00\u4e2a\u6e20\u9053"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1508
    :cond_33
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1509
    const-string p1, "\u7b2c\u4e8c\u4e2a\u6e20\u9053"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static getSucceedTask()[B
    .registers 7

    const/4 v0, 0x7

    .line 2357
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2358
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 2359
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2360
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2361
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    .line 2362
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 2363
    aput-byte v6, v0, v1

    const/4 v1, 0x5

    .line 2364
    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 2365
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getTaskSwitch(I[I)I
    .registers 5

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2293
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2294
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-lez v1, :cond_18

    .line 2295
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2297
    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 2299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTaskSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5468\u671f\u6570\u636e"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getTempTest()[B
    .registers 3

    const/4 v0, 0x5

    .line 336
    new-array v0, v0, [B

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 337
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 338
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 339
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    .line 340
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 341
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getTime()[B
    .registers 16

    .line 1018
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1019
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 1020
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 1021
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    const/4 v6, 0x5

    .line 1022
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xb

    .line 1023
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xc

    .line 1024
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xd

    .line 1025
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1027
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "year:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",month:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",day:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",hour:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",min:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ",sencond:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1028
    aget-byte v12, v4, v2

    aget-byte v4, v4, v1

    int-to-byte v5, v5

    int-to-byte v7, v7

    int-to-byte v9, v9

    int-to-byte v11, v11

    int-to-byte v0, v0

    new-array v13, v8, [B

    const/4 v14, 0x4

    aput-byte v14, v13, v2

    const/16 v15, 0x8

    aput-byte v15, v13, v1

    aput-byte v2, v13, v3

    const/4 v1, 0x3

    aput-byte v12, v13, v1

    aput-byte v4, v13, v14

    aput-byte v5, v13, v6

    const/4 v1, 0x6

    aput-byte v7, v13, v1

    const/4 v1, 0x7

    aput-byte v9, v13, v1

    aput-byte v11, v13, v15

    const/16 v1, 0x9

    aput-byte v0, v13, v1

    const/16 v0, 0xa

    aput-byte v2, v13, v0

    .line 1030
    invoke-static {v13}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v0

    .line 1031
    new-array v1, v10, [B

    .line 1032
    invoke-static {v13, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    aput-byte v0, v1, v8

    return-object v1
.end method

.method public static getUserInfo(IIIII)[B
    .registers 14

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF4325"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 444
    invoke-static {p3, v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p3

    .line 445
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p2

    int-to-byte p0, p0

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 446
    aget-byte v2, p2, v1

    const/4 v3, 0x1

    aget-byte p2, p2, v3

    aget-byte v4, p3, v1

    aget-byte p3, p3, v3

    int-to-byte p4, p4

    const/16 v5, 0xa

    new-array v6, v5, [B

    const/4 v7, 0x3

    aput-byte v7, v6, v1

    const/4 v8, 0x7

    aput-byte v8, v6, v3

    aput-byte v1, v6, v0

    aput-byte p0, v6, v7

    const/4 p0, 0x4

    aput-byte p1, v6, p0

    const/4 p0, 0x5

    aput-byte v2, v6, p0

    const/4 p0, 0x6

    aput-byte p2, v6, p0

    aput-byte v4, v6, v8

    const/16 p0, 0x8

    aput-byte p3, v6, p0

    const/16 p0, 0x9

    aput-byte p4, v6, p0

    .line 447
    invoke-static {v6}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    const/16 p1, 0xb

    .line 448
    new-array p1, p1, [B

    .line 449
    invoke-static {v6, v1, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    aput-byte p0, p1, v5

    return-object p1
.end method

.method public static getVirateModelList()[B
    .registers 9

    const/16 v0, 0x15

    .line 2793
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2794
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    const/4 v3, 0x2

    .line 2795
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2796
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2797
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 2798
    aput-byte v2, v0, v4

    const/4 v2, 0x4

    const/4 v5, 0x5

    .line 2799
    aput-byte v5, v0, v2

    const/16 v7, 0xc

    .line 2800
    aput-byte v7, v0, v5

    const/4 v8, 0x6

    .line 2801
    aput-byte v6, v0, v8

    const/4 v8, 0x7

    .line 2802
    aput-byte v6, v0, v8

    const/16 v8, 0x8

    .line 2803
    aput-byte v7, v0, v8

    const/16 v8, 0x9

    .line 2804
    aput-byte v6, v0, v8

    const/16 v8, 0xa

    .line 2805
    aput-byte v3, v0, v8

    const/16 v3, 0xb

    .line 2806
    aput-byte v7, v0, v3

    .line 2807
    aput-byte v6, v0, v7

    const/16 v3, 0xd

    .line 2808
    aput-byte v4, v0, v3

    const/16 v3, 0xe

    .line 2809
    aput-byte v7, v0, v3

    const/16 v3, 0xf

    .line 2810
    aput-byte v6, v0, v3

    const/16 v3, 0x10

    .line 2811
    aput-byte v2, v0, v3

    .line 2812
    aput-byte v7, v0, v1

    const/16 v1, 0x12

    .line 2813
    aput-byte v6, v0, v1

    const/16 v1, 0x13

    .line 2814
    aput-byte v5, v0, v1

    const/16 v1, 0x14

    .line 2815
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static highSleep(III)[B
    .registers 9

    const/16 v0, 0x9

    .line 3179
    new-array v0, v0, [B

    const/16 v1, 0x29

    const/4 v2, 0x0

    .line 3180
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 3181
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 3182
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    .line 3183
    aput-byte v1, v0, v5

    .line 3184
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 v4, 0x4

    .line 3185
    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 3186
    aget-byte p0, p0, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p1

    .line 3187
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p2

    .line 3188
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 3189
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method private static intToBytes(I)[B
    .registers 4

    const/4 v0, 0x4

    .line 1607
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 1608
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 1609
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 1610
    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    .line 1611
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intoSportModel()[B
    .registers 4

    const/4 v0, 0x7

    .line 2825
    new-array v0, v0, [B

    const/16 v1, -0x5d

    const/4 v2, 0x0

    .line 2826
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 2827
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 2828
    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 2829
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    .line 2830
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 2831
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 2832
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static isSwitch(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ge v1, v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    shr-int v2, p0, v1

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    return v0

    :cond_e
    return v3
.end method

.method public static musicControl()[B
    .registers 1

    const/16 v0, 0x14

    .line 1167
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static nextMusic()[B
    .registers 1

    const/16 v0, 0x14

    .line 1177
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static openOrCloseSchedule(Z)[B
    .registers 8

    const/16 v0, 0x9

    .line 2545
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2546
    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/4 v3, 0x2

    .line 2547
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2548
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2549
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    .line 2550
    aput-byte v6, v0, v3

    const/4 v3, 0x4

    .line 2551
    aput-byte v6, v0, v3

    const/16 v3, 0x12

    .line 2552
    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 2553
    aput-byte v6, v0, v1

    const/4 v1, 0x7

    if-eqz p0, :cond_2b

    .line 2555
    aput-byte v6, v0, v1

    goto :goto_2d

    .line 2557
    :cond_2b
    aput-byte v2, v0, v1

    :goto_2d
    const/16 p0, 0x8

    .line 2559
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static parseBits(I)[I
    .registers 6

    const/4 v0, 0x7

    .line 3144
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    add-int/lit8 v3, v2, 0x1

    shr-int v4, p0, v3

    and-int/lit8 v4, v4, 0x1

    .line 3146
    aput v4, v1, v2

    move v2, v3

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static preMusic()[B
    .registers 1

    const/16 v0, 0x14

    .line 1172
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static queryWaterList(I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 3021
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    mul-int/lit8 v1, p0, 0x7

    add-int/lit8 v2, v1, 0x6

    .line 3022
    new-array v2, v2, [B

    const/16 v3, 0x70

    const/4 v4, 0x0

    .line 3023
    aput-byte v3, v2, v4

    add-int/lit8 v3, v1, 0x2

    const/4 v5, 0x2

    .line 3024
    invoke-static {v3, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    .line 3025
    aget-byte v6, v3, v4

    const/4 v7, 0x1

    aput-byte v6, v2, v7

    .line 3026
    aget-byte v3, v3, v7

    aput-byte v3, v2, v5

    const/4 v3, 0x3

    .line 3027
    aput-byte v4, v2, v3

    const/4 v3, 0x4

    int-to-byte v6, p0

    .line 3028
    aput-byte v6, v2, v3

    move v3, v4

    :goto_27
    const/4 v6, 0x5

    if-ge v3, p0, :cond_68

    .line 3030
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 3031
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 3032
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v11, v3, 0x7

    add-int/lit8 v12, v11, 0x5

    const/16 v13, 0x11

    .line 3033
    aput-byte v13, v2, v12

    add-int/lit8 v12, v11, 0x6

    .line 3034
    aput-byte v6, v2, v12

    add-int/lit8 v12, v11, 0x7

    .line 3035
    aput-byte v4, v2, v12

    .line 3036
    invoke-static {v8, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v8

    add-int/lit8 v12, v11, 0x8

    .line 3037
    aget-byte v13, v8, v4

    aput-byte v13, v2, v12

    add-int/lit8 v12, v11, 0x9

    .line 3038
    aget-byte v8, v8, v7

    aput-byte v8, v2, v12

    add-int/lit8 v8, v11, 0xa

    int-to-byte v9, v9

    .line 3039
    aput-byte v9, v2, v8

    add-int/lit8 v11, v11, 0xb

    int-to-byte v8, v10

    .line 3040
    aput-byte v8, v2, v11

    const/4 v8, -0x1

    .line 3041
    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_68
    add-int/2addr v1, v6

    .line 3043
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v2, v1

    .line 3044
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static quitSportModel()[B
    .registers 4

    const/4 v0, 0x7

    .line 2838
    new-array v0, v0, [B

    const/16 v1, -0x5d

    const/4 v2, 0x0

    .line 2839
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 2840
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 2841
    aput-byte v2, v0, v1

    const/16 v1, 0x31

    .line 2842
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    .line 2843
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 2844
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 2845
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static sendBloodCose(IIIII)[B
    .registers 9

    const/16 v0, 0xb

    .line 1770
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 1771
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x7

    .line 1772
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1773
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x9

    .line 1774
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 1775
    aput-byte p0, v0, v1

    const/4 p0, 0x5

    int-to-byte p1, p1

    .line 1776
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 1777
    aput-byte p1, v0, p0

    const/16 p0, 0x62

    .line 1778
    aput-byte p0, v0, v3

    const/16 p0, 0x8

    int-to-byte p1, p3

    .line 1779
    aput-byte p1, v0, p0

    int-to-byte p0, p4

    .line 1780
    aput-byte p0, v0, v2

    const/16 p0, 0xa

    .line 1781
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static sendContacts(Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1787
    const-string v0, "UTF-8"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x23

    add-int/lit8 v2, v1, 0x5

    .line 1788
    new-array v2, v2, [B

    const/16 v3, 0x46

    const/4 v4, 0x0

    .line 1789
    aput-byte v3, v2, v4

    add-int/lit8 v3, v1, 0x1

    const/4 v5, 0x2

    .line 1790
    invoke-static {v3, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    .line 1791
    aget-byte v6, v3, v4

    const/4 v7, 0x1

    aput-byte v6, v2, v7

    .line 1792
    aget-byte v3, v3, v7

    aput-byte v3, v2, v5

    const/4 v3, 0x3

    .line 1793
    aput-byte v5, v2, v3

    move v3, v4

    .line 1794
    :goto_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_79

    .line 1795
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    const/16 v6, 0xf

    .line 1796
    new-array v7, v6, [B

    const/16 v8, 0x14

    .line 1797
    new-array v9, v8, [B

    .line 1799
    :try_start_39
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1800
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhonePerson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v5

    .line 1802
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1806
    :goto_4e
    array-length v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1807
    array-length v6, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v8, v4

    :goto_59
    if-ge v8, v5, :cond_67

    mul-int/lit8 v10, v3, 0x23

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v8

    .line 1809
    aget-byte v11, v7, v8

    aput-byte v11, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    :cond_67
    move v5, v4

    :goto_68
    if-ge v5, v6, :cond_76

    mul-int/lit8 v7, v3, 0x23

    add-int/lit8 v7, v7, 0x13

    add-int/2addr v7, v5

    .line 1812
    aget-byte v8, v9, v5

    aput-byte v8, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_79
    add-int/lit8 v1, v1, 0x4

    .line 1815
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v2, v1

    .line 1816
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sendDatumLine(III)[B
    .registers 8

    const/16 v0, 0x9

    .line 1755
    new-array v1, v0, [B

    const/16 v2, 0x21

    const/4 v3, 0x0

    .line 1756
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x5

    .line 1757
    aput-byte v4, v1, v2

    const/4 v2, 0x2

    .line 1758
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 1759
    aput-byte v0, v1, v2

    const/4 v0, 0x4

    int-to-byte p0, p0

    .line 1760
    aput-byte p0, v1, v0

    int-to-byte p0, p1

    .line 1761
    aput-byte p0, v1, v4

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 1762
    aput-byte p1, v1, p0

    const/4 p0, 0x7

    const/16 p1, 0x62

    .line 1763
    aput-byte p1, v1, p0

    const/16 p0, 0x8

    .line 1764
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v1, p0

    return-object v1
.end method

.method public static sendDownLoadDial(I)[B
    .registers 8

    const/16 v0, 0x9

    .line 1719
    new-array v0, v0, [B

    const/16 v1, 0x44

    const/4 v2, 0x0

    .line 1720
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 1721
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1722
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    .line 1723
    aput-byte v6, v0, v5

    .line 1724
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    aget-byte v5, v5, v2

    aput-byte v5, v0, v6

    .line 1725
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    aget-byte p0, p0, v1

    aput-byte p0, v0, v3

    const/4 p0, 0x6

    .line 1726
    aput-byte v2, v0, p0

    const/4 p0, 0x7

    .line 1727
    aput-byte v2, v0, p0

    const/16 p0, 0x8

    .line 1728
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static sendGps(I)[B
    .registers 5

    const/4 v0, 0x6

    .line 2854
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 2855
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 2856
    aput-byte v3, v0, v1

    .line 2857
    aput-byte v2, v0, v3

    const/4 v1, 0x3

    const/16 v2, 0x22

    .line 2858
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 2859
    aput-byte p0, v0, v1

    const/4 p0, 0x5

    .line 2860
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static sendNaviGaode(I)[B
    .registers 4

    const/4 v0, 0x5

    .line 1825
    new-array v0, v0, [B

    const/16 v1, 0x60

    const/4 v2, 0x0

    .line 1826
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 1827
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 1828
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte p0, p0

    .line 1829
    aput-byte p0, v0, v1

    const/4 p0, 0x4

    .line 1830
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static sendNaviInfo(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1843
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0xd

    .line 1844
    new-array v1, v1, [B

    const/16 v2, 0x60

    const/4 v3, 0x0

    .line 1845
    aput-byte v2, v1, v3

    add-int/lit8 v2, v0, 0x9

    const/4 v4, 0x2

    .line 1846
    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    .line 1847
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 1848
    aget-byte v2, v2, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x3

    .line 1849
    aput-byte v4, v1, v2

    const/4 v5, 0x4

    .line 1850
    invoke-static {p1, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    .line 1851
    aget-byte v7, p1, v3

    aput-byte v7, v1, v5

    const/4 v5, 0x5

    .line 1852
    aget-byte v7, p1, v6

    aput-byte v7, v1, v5

    const/4 v5, 0x6

    .line 1853
    aget-byte v7, p1, v4

    aput-byte v7, v1, v5

    const/4 v5, 0x7

    .line 1854
    aget-byte p1, p1, v2

    aput-byte p1, v1, v5

    const/16 p1, 0x41

    if-ne p2, p1, :cond_41

    const/16 p2, 0x37

    :cond_41
    const/16 p1, 0x42

    if-ne p2, p1, :cond_47

    const/16 p2, 0x38

    .line 1861
    :cond_47
    invoke-static {p2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    const/16 p2, 0x8

    .line 1862
    aget-byte v2, p1, v3

    aput-byte v2, v1, p2

    .line 1863
    aget-byte p1, p1, v6

    const/16 p2, 0x9

    aput-byte p1, v1, p2

    .line 1864
    invoke-static {v0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    const/16 p2, 0xa

    .line 1865
    aget-byte v2, p1, v3

    aput-byte v2, v1, p2

    const/16 p2, 0xb

    .line 1866
    aget-byte p1, p1, v6

    aput-byte p1, v1, p2

    .line 1868
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    if-eqz p0, :cond_85

    .line 1869
    array-length p1, p0

    if-nez p1, :cond_73

    goto :goto_85

    .line 1872
    :cond_73
    array-length p1, p0

    const/16 p2, 0xc

    invoke-static {p0, v3, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    .line 1873
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 1875
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_85
    :goto_85
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sendSportData(IIII)[B
    .registers 13

    const/16 v0, 0x14

    .line 2892
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x23

    .line 2893
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 2894
    aput-byte v4, v0, v3

    const/4 v5, 0x2

    .line 2895
    aput-byte v1, v0, v5

    const/4 v6, 0x3

    .line 2896
    aput-byte v2, v0, v6

    const/4 v2, 0x4

    .line 2897
    invoke-static {p0, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    .line 2898
    aget-byte v7, p0, v1

    aput-byte v7, v0, v2

    const/4 v7, 0x5

    .line 2899
    aget-byte v8, p0, v3

    aput-byte v8, v0, v7

    const/4 v7, 0x6

    .line 2900
    aget-byte v8, p0, v5

    aput-byte v8, v0, v7

    const/4 v7, 0x7

    .line 2901
    aget-byte p0, p0, v6

    aput-byte p0, v0, v7

    .line 2902
    invoke-static {p1, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/16 p1, 0x8

    .line 2903
    aget-byte v7, p0, v1

    aput-byte v7, v0, p1

    const/16 p1, 0x9

    .line 2904
    aget-byte p0, p0, v3

    aput-byte p0, v0, p1

    .line 2905
    invoke-static {p2, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/16 p1, 0xa

    .line 2906
    aget-byte p2, p0, v1

    aput-byte p2, v0, p1

    const/16 p1, 0xb

    .line 2907
    aget-byte p2, p0, v3

    aput-byte p2, v0, p1

    const/16 p1, 0xc

    .line 2908
    aget-byte p2, p0, v5

    aput-byte p2, v0, p1

    const/16 p1, 0xd

    .line 2909
    aget-byte p0, p0, v6

    aput-byte p0, v0, p1

    .line 2910
    invoke-static {p3, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/16 p1, 0xe

    .line 2911
    aget-byte p2, p0, v1

    aput-byte p2, v0, p1

    const/16 p1, 0xf

    .line 2912
    aget-byte p2, p0, v3

    aput-byte p2, v0, p1

    .line 2913
    aget-byte p1, p0, v5

    aput-byte p1, v0, v4

    const/16 p1, 0x11

    .line 2914
    aget-byte p0, p0, v6

    aput-byte p0, v0, p1

    const/16 p0, 0x12

    .line 2915
    aput-byte v1, v0, p0

    const/16 p0, 0x13

    .line 2916
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static sendStopSos()[B
    .registers 1

    const/4 v0, 0x4

    .line 3202
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        -0x4t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static setAlarm2(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/AlarmBean;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1402
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1405
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->getMaxAlarmClockCount()I

    move-result v0

    goto :goto_11

    :cond_f
    const/16 v0, 0x8

    :goto_11
    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x24

    if-ge v0, v1, :cond_1a

    move v0, v1

    .line 1411
    :cond_1a
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1412
    aput-byte v3, v1, v2

    add-int/lit8 v3, v0, -0x4

    int-to-byte v3, v3

    const/4 v4, 0x1

    .line 1413
    aput-byte v3, v1, v4

    const/4 v3, 0x2

    .line 1414
    aput-byte v2, v1, v3

    move v3, v2

    .line 1415
    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_72

    .line 1416
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/AlarmBean;

    .line 1417
    iget-object v6, v5, Lcom/keephealth/android/model/bean/AlarmBean;->weeks:[B

    array-length v6, v6

    new-array v6, v6, [B

    move v7, v2

    .line 1418
    :goto_3c
    iget-object v8, v5, Lcom/keephealth/android/model/bean/AlarmBean;->weeks:[B

    array-length v8, v8

    if-ge v7, v8, :cond_4f

    .line 1419
    iget-object v8, v5, Lcom/keephealth/android/model/bean/AlarmBean;->weeks:[B

    iget-object v9, v5, Lcom/keephealth/android/model/bean/AlarmBean;->weeks:[B

    array-length v9, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v7

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_4f
    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v7, 0x3

    .line 1421
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v8

    add-int/lit8 v6, v7, 0x4

    .line 1422
    iget v8, v5, Lcom/keephealth/android/model/bean/AlarmBean;->hour:I

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    add-int/lit8 v6, v7, 0x5

    .line 1423
    iget v8, v5, Lcom/keephealth/android/model/bean/AlarmBean;->min:I

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    add-int/lit8 v7, v7, 0x6

    .line 1424
    iget v5, v5, Lcom/keephealth/android/model/bean/AlarmBean;->type:I

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_72
    add-int/lit8 v2, v0, -0x2

    .line 1426
    :goto_74
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_84

    const/4 v3, -0x1

    .line 1427
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_74

    :cond_84
    sub-int/2addr v0, v4

    .line 1429
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 1430
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setBackgroud([BI)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1585
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x200

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    .line 1586
    array-length v0, p0

    mul-int/lit16 v1, p1, 0x200

    sub-int/2addr v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    add-int/lit8 v1, v0, 0x9

    .line 1588
    new-array v1, v1, [B

    const/16 v3, 0x2d

    const/4 v4, 0x0

    .line 1589
    aput-byte v3, v1, v4

    add-int/lit8 v3, v0, 0x5

    const/4 v5, 0x2

    .line 1590
    invoke-static {v3, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    .line 1591
    aget-byte v6, v3, v4

    const/4 v7, 0x1

    aput-byte v6, v1, v7

    .line 1592
    aget-byte v3, v3, v7

    aput-byte v3, v1, v5

    const/4 v3, 0x3

    .line 1593
    aput-byte v3, v1, v3

    .line 1594
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->intToBytes(I)[B

    move-result-object v6

    const/4 v8, 0x4

    .line 1595
    aget-byte v9, v6, v4

    aput-byte v9, v1, v8

    .line 1596
    aget-byte v7, v6, v7

    const/4 v8, 0x5

    aput-byte v7, v1, v8

    const/4 v7, 0x6

    .line 1597
    aget-byte v5, v6, v5

    aput-byte v5, v1, v7

    const/4 v5, 0x7

    .line 1598
    aget-byte v3, v6, v3

    aput-byte v3, v1, v5

    :goto_42
    if-ge v4, v0, :cond_50

    add-int/lit8 v3, v4, 0x8

    mul-int/lit16 v5, p1, 0x200

    add-int/2addr v5, v4

    .line 1600
    aget-byte v5, p0, v5

    aput-byte v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_50
    add-int/lit8 v0, v0, 0x8

    .line 1602
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 1603
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setCancelExchangeReward()[B
    .registers 4

    const/4 v0, 0x6

    .line 2028
    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 2029
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 2030
    aput-byte v3, v0, v1

    .line 2031
    aput-byte v2, v0, v3

    const/4 v3, 0x3

    .line 2032
    aput-byte v1, v0, v3

    const/4 v1, 0x4

    .line 2033
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 2034
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static setCourseTable(Ljava/util/List;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean;",
            ">;I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_305

    .line 1883
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_305

    .line 1884
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u751f\u6210byte\u7684sendCourseBeans.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "courseviewmode4l"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    .line 1885
    :goto_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "UTF-8"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v4, :cond_142

    .line 1887
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1891
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 1892
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13e

    .line 1893
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u751f\u6210byte\u7684sendCourseBeans.get(i).getSingleCourseList().size():"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 1894
    :goto_83
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v8, "  "

    if-ge v4, v6, :cond_120

    .line 1896
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1897
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1901
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    :try_start_bf
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1905
    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 1906
    array-length v9, v6

    if-lez v9, :cond_e8

    move v9, v1

    .line 1907
    :goto_db
    array-length v10, v6

    if-ge v9, v10, :cond_e8

    .line 1908
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_db

    .line 1911
    :cond_e8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allListLength.size:  j:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  strByte.length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bf .. :try_end_115} :catch_119

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_83

    :catch_119
    move-exception p0

    .line 1913
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1917
    :cond_120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "allListLength.size:  i:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27

    .line 1920
    :cond_142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v8, v4, 0x6

    new-array v8, v8, [B

    .line 1923
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "allListLength.size():"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x51

    .line 1924
    aput-byte v9, v8, v1

    .line 1926
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v0, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v0

    .line 1927
    aget-byte v9, v0, v1

    aput-byte v9, v8, v7

    .line 1928
    aget-byte v0, v0, v7

    aput-byte v0, v8, v6

    const/4 v0, 0x3

    .line 1929
    aput-byte v7, v8, v0

    const/4 v0, 0x4

    int-to-byte p1, p1

    .line 1930
    aput-byte p1, v8, v0

    if-eqz p0, :cond_2e1

    .line 1931
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2e1

    move p1, v1

    .line 1932
    :goto_18a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2e1

    .line 1933
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getWeekSub()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getCurrentDayCourse()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1935
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getUpdateCourseNumber()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2dd

    .line 1937
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2dd

    move v0, v1

    .line 1939
    :goto_1e3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_2dd

    .line 1941
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1942
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCurrentDayCourseSub()I

    move-result v9

    int-to-byte v9, v9

    .line 1941
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1945
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseZore()I

    move-result v9

    int-to-byte v9, v9

    .line 1944
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1947
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1948
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseStartTime()I

    move-result v9

    .line 1949
    invoke-static {v9, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v9

    .line 1950
    aget-byte v10, v9, v1

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1951
    aget-byte v9, v9, v7

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1953
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseTimeLength()I

    move-result v9

    int-to-byte v9, v9

    .line 1952
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1954
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1955
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseNameLength()I

    move-result v9

    int-to-byte v9, v9

    .line 1954
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    :try_start_28d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->getSingleCourseList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    .line 1959
    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1960
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strByte:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    array-length v10, v9

    if-lez v10, :cond_2d2

    move v10, v1

    .line 1963
    :goto_2c3
    array-length v11, v9

    if-ge v10, v11, :cond_2d2

    .line 1964
    aget-byte v11, v9, v10

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2cf
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28d .. :try_end_2cf} :catch_2d6

    add-int/lit8 v10, v10, 0x1

    goto :goto_2c3

    :cond_2d2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1e3

    :catch_2d6
    move-exception p0

    .line 1968
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2dd
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_18a

    .line 1974
    :cond_2e1
    :goto_2e1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_2f8

    add-int/lit8 p0, v1, 0x5

    .line 1975
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    aput-byte p1, v8, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e1

    :cond_2f8
    add-int/lit8 v4, v4, 0x5

    .line 1977
    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v8, v4

    .line 1978
    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_305
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setCustomTask(IILjava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2246
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 2247
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2249
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    const/4 v3, 0x6

    add-int/2addr v2, v3

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v0, v2, [B

    const/16 v4, 0x70

    .line 2251
    aput-byte v4, v0, v1

    add-int/lit8 v4, v2, -0x4

    const/4 v5, 0x2

    .line 2252
    invoke-static {v4, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2253
    aget-byte v6, v4, v1

    const/4 v7, 0x1

    aput-byte v6, v0, v7

    .line 2254
    aget-byte v4, v4, v7

    aput-byte v4, v0, v5

    const/4 v4, 0x3

    .line 2255
    aput-byte v7, v0, v4

    int-to-byte p0, p0

    const/4 v6, 0x4

    .line 2256
    aput-byte p0, v0, v6

    move p0, v1

    move v8, p0

    .line 2258
    :goto_4e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge p0, v9, :cond_137

    add-int/lit8 v9, v8, 0x5

    .line 2259
    aput-byte v3, v0, v9

    .line 2260
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    add-int/lit8 v10, v8, 0x6

    .line 2261
    array-length v11, v9

    add-int/lit8 v11, v11, 0xb

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    add-int/lit8 v10, v8, 0x7

    int-to-byte v11, p1

    .line 2262
    aput-byte v11, v0, v10

    .line 2263
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v10}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v10

    invoke-static {v10, v11, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v10

    add-int/lit8 v11, v8, 0x8

    .line 2264
    aget-byte v12, v10, v1

    aput-byte v12, v0, v11

    add-int/lit8 v11, v8, 0x9

    .line 2265
    aget-byte v12, v10, v7

    aput-byte v12, v0, v11

    add-int/lit8 v11, v8, 0xa

    .line 2266
    aget-byte v12, v10, v5

    aput-byte v12, v0, v11

    add-int/lit8 v11, v8, 0xb

    .line 2267
    aget-byte v10, v10, v4

    aput-byte v10, v0, v11

    add-int/lit8 v10, v8, 0xc

    .line 2268
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v11}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getAlarmEnable()I

    move-result v11

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v12

    invoke-static {v11, v12}, Lcom/keephealth/android/util/ble/CmdHelper;->getTaskSwitch(I[I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 2269
    const-string v10, "255:255"

    .line 2270
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2271
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_ea

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v12}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ea

    .line 2272
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v10}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :cond_ea
    add-int/lit8 v11, v8, 0xd

    .line 2274
    aget-object v12, v10, v1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    add-int/lit8 v11, v8, 0xe

    .line 2275
    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v0, v11

    .line 2276
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v10}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v10

    invoke-static {v10, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v10

    add-int/lit8 v11, v8, 0xf

    .line 2277
    aget-byte v12, v10, v1

    aput-byte v12, v0, v11

    add-int/lit8 v11, v8, 0x10

    .line 2278
    aget-byte v10, v10, v7

    aput-byte v10, v0, v11

    add-int/lit8 v10, v8, 0x11

    .line 2279
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v11}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getStatus()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    add-int/lit8 v8, v8, 0x12

    .line 2281
    array-length v10, v9

    invoke-static {v9, v1, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2282
    array-length v9, v9

    add-int/lit8 v9, v9, -0x5

    add-int/2addr v8, v9

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_4e

    :cond_137
    sub-int/2addr v2, v7

    .line 2284
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v0, v2

    .line 2285
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setDeviceData()[B
    .registers 10

    .line 1353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1354
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 1356
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTimezoneRequired()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1357
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v3, 0xdbba0

    .line 1359
    div-int/2addr v1, v3

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDeviceData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u65f6\u533a"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    const/16 v3, 0xc

    .line 1362
    new-array v4, v3, [B

    const/4 v5, 0x4

    .line 1363
    aput-byte v5, v4, v2

    const/4 v6, 0x1

    const/16 v7, 0x8

    .line 1364
    aput-byte v7, v4, v6

    const/4 v8, 0x2

    .line 1365
    aput-byte v2, v4, v8

    .line 1366
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9, v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v9

    aget-byte v2, v9, v2

    const/4 v9, 0x3

    aput-byte v2, v4, v9

    .line 1367
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    aget-byte v2, v2, v6

    aput-byte v2, v4, v5

    .line 1368
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Byte(I)B

    move-result v2

    const/4 v5, 0x5

    aput-byte v2, v4, v5

    .line 1369
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Byte(I)B

    move-result v2

    const/4 v5, 0x6

    aput-byte v2, v4, v5

    const/16 v2, 0xb

    .line 1370
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Byte(I)B

    move-result v5

    const/4 v6, 0x7

    aput-byte v5, v4, v6

    .line 1371
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Byte(I)B

    move-result v3

    aput-byte v3, v4, v7

    const/16 v3, 0xd

    .line 1372
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Byte(I)B

    move-result v0

    const/16 v3, 0x9

    aput-byte v0, v4, v3

    const/16 v0, 0xa

    int-to-byte v1, v1

    .line 1373
    aput-byte v1, v4, v0

    .line 1374
    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v0

    aput-byte v0, v4, v2

    return-object v4
.end method

.method public static setDeviceSport(III)[B
    .registers 7

    const/4 v0, 0x7

    .line 2872
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 2873
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 2874
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 2875
    aput-byte v2, v0, v1

    int-to-byte p0, p0

    .line 2876
    aput-byte p0, v0, v3

    const/4 p0, 0x4

    int-to-byte p1, p1

    .line 2877
    aput-byte p1, v0, p0

    const/4 p0, 0x5

    int-to-byte p1, p2

    .line 2878
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    .line 2879
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setDeviceState(IIIIIIIIIIII)[B
    .registers 18

    const/16 v0, 0x14

    .line 466
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 467
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 468
    aput-byte v4, v0, v3

    .line 469
    aput-byte v1, v0, v2

    const/4 v3, 0x3

    move v5, p0

    int-to-byte v5, v5

    .line 470
    aput-byte v5, v0, v3

    const/4 v3, 0x4

    move v5, p1

    int-to-byte v5, v5

    .line 471
    aput-byte v5, v0, v3

    const/4 v3, 0x5

    move v5, p2

    int-to-byte v5, v5

    .line 472
    aput-byte v5, v0, v3

    const/4 v3, 0x6

    move v5, p3

    int-to-byte v5, v5

    .line 473
    aput-byte v5, v0, v3

    const/4 v3, 0x7

    move v5, p4

    int-to-byte v5, v5

    .line 474
    aput-byte v5, v0, v3

    const/16 v3, 0x8

    move v5, p5

    int-to-byte v5, v5

    .line 475
    aput-byte v5, v0, v3

    const/16 v3, 0x9

    move v5, p6

    int-to-byte v5, v5

    .line 476
    aput-byte v5, v0, v3

    const/16 v3, 0xa

    move v5, p7

    int-to-byte v5, v5

    .line 477
    aput-byte v5, v0, v3

    const/16 v3, 0xb

    move v5, p8

    int-to-byte v5, v5

    .line 478
    aput-byte v5, v0, v3

    const/16 v3, 0xc

    move v5, p9

    int-to-byte v5, v5

    .line 479
    aput-byte v5, v0, v3

    const/16 v3, 0xd

    move/from16 v5, p10

    int-to-byte v5, v5

    .line 480
    aput-byte v5, v0, v3

    const/16 v3, 0xe

    move/from16 v5, p11

    int-to-byte v5, v5

    .line 481
    aput-byte v5, v0, v3

    const/16 v3, 0xf

    .line 482
    aput-byte v1, v0, v3

    .line 483
    aput-byte v1, v0, v4

    const/16 v3, 0x11

    .line 484
    aput-byte v2, v0, v3

    const/16 v2, 0x12

    .line 485
    aput-byte v1, v0, v2

    const/16 v2, 0x13

    .line 486
    aput-byte v1, v0, v2

    .line 487
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static setDeviceStateStrong(IIIIIIIIIIIII)[B
    .registers 18

    const/16 v0, 0x14

    .line 493
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 494
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 495
    aput-byte v4, v0, v3

    .line 496
    aput-byte v1, v0, v2

    const/4 v2, 0x3

    move v3, p0

    int-to-byte v3, v3

    .line 497
    aput-byte v3, v0, v2

    const/4 v2, 0x4

    move v3, p1

    int-to-byte v3, v3

    .line 498
    aput-byte v3, v0, v2

    const/4 v2, 0x5

    move v3, p2

    int-to-byte v3, v3

    .line 499
    aput-byte v3, v0, v2

    const/4 v2, 0x6

    move v3, p3

    int-to-byte v3, v3

    .line 500
    aput-byte v3, v0, v2

    const/4 v2, 0x7

    move v3, p4

    int-to-byte v3, v3

    .line 501
    aput-byte v3, v0, v2

    const/16 v2, 0x8

    move v3, p5

    int-to-byte v3, v3

    .line 502
    aput-byte v3, v0, v2

    const/16 v2, 0x9

    move v3, p6

    int-to-byte v3, v3

    .line 503
    aput-byte v3, v0, v2

    const/16 v2, 0xa

    move v3, p7

    int-to-byte v3, v3

    .line 504
    aput-byte v3, v0, v2

    const/16 v2, 0xb

    move v3, p8

    int-to-byte v3, v3

    .line 505
    aput-byte v3, v0, v2

    const/16 v2, 0xc

    move v3, p9

    int-to-byte v3, v3

    .line 506
    aput-byte v3, v0, v2

    const/16 v2, 0xd

    move v3, p10

    int-to-byte v3, v3

    .line 507
    aput-byte v3, v0, v2

    const/16 v2, 0xe

    move/from16 v3, p11

    int-to-byte v3, v3

    .line 508
    aput-byte v3, v0, v2

    const/16 v2, 0xf

    .line 509
    aput-byte v1, v0, v2

    .line 510
    aput-byte v1, v0, v4

    const/16 v2, 0x11

    move/from16 v3, p12

    int-to-byte v3, v3

    .line 511
    aput-byte v3, v0, v2

    const/16 v2, 0x12

    .line 512
    aput-byte v1, v0, v2

    const/16 v2, 0x13

    .line 513
    aput-byte v1, v0, v2

    .line 514
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static setDialBin([BI)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1697
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x200

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    .line 1698
    array-length v0, p0

    mul-int/lit16 v1, p1, 0x200

    sub-int/2addr v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    add-int/lit8 v1, v0, 0x9

    .line 1700
    new-array v1, v1, [B

    const/16 v3, 0x44

    const/4 v4, 0x0

    .line 1701
    aput-byte v3, v1, v4

    add-int/lit8 v3, v0, 0x5

    const/4 v5, 0x2

    .line 1702
    invoke-static {v3, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    .line 1703
    aget-byte v6, v3, v4

    const/4 v7, 0x1

    aput-byte v6, v1, v7

    .line 1704
    aget-byte v3, v3, v7

    aput-byte v3, v1, v5

    const/4 v3, 0x3

    .line 1705
    aput-byte v3, v1, v3

    .line 1706
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->intToBytes(I)[B

    move-result-object v6

    const/4 v8, 0x4

    .line 1707
    aget-byte v9, v6, v4

    aput-byte v9, v1, v8

    .line 1708
    aget-byte v7, v6, v7

    const/4 v8, 0x5

    aput-byte v7, v1, v8

    const/4 v7, 0x6

    .line 1709
    aget-byte v5, v6, v5

    aput-byte v5, v1, v7

    const/4 v5, 0x7

    .line 1710
    aget-byte v3, v6, v3

    aput-byte v3, v1, v5

    :goto_42
    if-ge v4, v0, :cond_50

    add-int/lit8 v3, v4, 0x8

    mul-int/lit16 v5, p1, 0x200

    add-int/2addr v5, v4

    .line 1712
    aget-byte v5, p0, v5

    aput-byte v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_50
    add-int/lit8 v0, v0, 0x8

    .line 1714
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 1715
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setDialInfo(II)[B
    .registers 10

    const/16 v0, 0xf

    .line 1675
    new-array v0, v0, [B

    const/16 v1, 0x44

    const/4 v2, 0x0

    .line 1676
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xb

    .line 1677
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1678
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    .line 1679
    aput-byte v4, v0, v5

    .line 1680
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v6

    aget-byte v6, v6, v2

    const/4 v7, 0x4

    aput-byte v6, v0, v7

    .line 1681
    invoke-static {p0, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    aget-byte p0, p0, v1

    const/4 v6, 0x5

    aput-byte p0, v0, v6

    .line 1682
    invoke-static {p1, v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 p1, 0x6

    .line 1683
    aget-byte v6, p0, v2

    aput-byte v6, v0, p1

    const/4 p1, 0x7

    .line 1684
    aget-byte v1, p0, v1

    aput-byte v1, v0, p1

    const/16 p1, 0x8

    .line 1685
    aget-byte v1, p0, v4

    aput-byte v1, v0, p1

    const/16 p1, 0x9

    .line 1686
    aget-byte p0, p0, v5

    aput-byte p0, v0, p1

    const/16 p0, 0xa

    .line 1687
    aput-byte v2, v0, p0

    .line 1688
    aput-byte v2, v0, v3

    const/16 p0, 0xc

    .line 1689
    aput-byte v2, v0, p0

    const/16 p0, 0xd

    .line 1690
    aput-byte v2, v0, p0

    const/16 p0, 0xe

    .line 1691
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setDrinkWater(Ljava/util/List;ZI)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;",
            ">;ZI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1541
    new-array v0, v0, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    .line 1542
    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/4 v3, 0x1

    .line 1543
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    .line 1544
    aput-byte v2, v0, v1

    const/4 v4, 0x3

    .line 1545
    aput-byte v1, v0, v4

    if-eqz p1, :cond_19

    const/16 p1, 0xff

    goto :goto_1a

    :cond_19
    move p1, v2

    :goto_1a
    int-to-byte p1, p1

    const/4 v5, 0x4

    .line 1546
    aput-byte p1, v0, v5

    const/4 p1, 0x5

    .line 1547
    aput-byte v3, v0, p1

    .line 1548
    invoke-static {p2, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    const/4 p2, 0x6

    .line 1549
    aget-byte v5, p1, v2

    aput-byte v5, v0, p2

    const/4 p2, 0x7

    .line 1550
    aget-byte v3, p1, v3

    aput-byte v3, v0, p2

    .line 1551
    aget-byte p2, p1, v1

    const/16 v1, 0x8

    aput-byte p2, v0, v1

    const/16 p2, 0x9

    .line 1552
    aget-byte p1, p1, v4

    aput-byte p1, v0, p2

    :goto_3b
    if-ge v2, v1, :cond_62

    if-eqz p0, :cond_5f

    .line 1554
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5f

    .line 1555
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    mul-int/lit8 p2, v2, 0x2

    add-int/lit8 v3, p2, 0xa

    .line 1556
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 p2, p2, 0xb

    .line 1557
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_62
    const/16 p0, 0x1a

    .line 1560
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    .line 1562
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setEcg(I)[B
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p0, v6, :cond_1d

    const/16 p0, 0x9

    .line 133
    new-array p0, p0, [B

    .line 134
    aput-byte v2, p0, v4

    const/16 v7, 0x10

    .line 135
    aput-byte v7, p0, v3

    .line 136
    aput-byte v5, p0, v0

    .line 137
    aput-byte v5, p0, v2

    const/4 v0, 0x6

    .line 138
    aput-byte v5, p0, v0

    .line 139
    aput-byte v5, p0, v1

    goto :goto_2b

    .line 141
    :cond_1d
    new-array v1, v1, [B

    .line 142
    aput-byte v3, v1, v4

    int-to-byte p0, p0

    .line 143
    aput-byte p0, v1, v3

    const/16 p0, 0x3c

    .line 144
    aput-byte p0, v1, v0

    .line 145
    aput-byte v5, v1, v2

    move-object p0, v1

    :goto_2b
    const/16 v0, 0x22

    .line 147
    aput-byte v0, p0, v5

    .line 148
    aput-byte v5, p0, v6

    .line 149
    array-length v0, p0

    sub-int/2addr v0, v4

    invoke-static {p0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static setExchangeReward()[B
    .registers 4

    const/4 v0, 0x6

    .line 2014
    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 2015
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 2016
    aput-byte v3, v0, v1

    .line 2017
    aput-byte v2, v0, v3

    const/4 v1, 0x3

    .line 2018
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 2019
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 2020
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static setGesture(I)[B
    .registers 7

    const/16 v0, 0x9

    .line 3072
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 3073
    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/4 v3, 0x2

    .line 3074
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 3075
    aget-byte v2, v4, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    .line 3076
    aget-byte v2, v4, v5

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 3077
    aput-byte v5, v0, v2

    const/4 v2, 0x4

    .line 3078
    aput-byte v5, v0, v2

    const/16 v2, 0x13

    .line 3079
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 3080
    aput-byte v5, v0, v1

    const/4 v1, 0x7

    int-to-byte p0, p0

    .line 3081
    aput-byte p0, v0, v1

    const/16 p0, 0x8

    .line 3082
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setGold(I)[B
    .registers 9

    const/16 v0, 0xc

    .line 2056
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2057
    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/4 v3, 0x2

    .line 2058
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2059
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2060
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 2061
    aput-byte v6, v0, v4

    const/4 v5, 0x4

    .line 2062
    aput-byte v6, v0, v5

    const/4 v7, 0x5

    .line 2063
    aput-byte v6, v0, v7

    const/4 v7, 0x6

    .line 2064
    aput-byte v5, v0, v7

    .line 2065
    invoke-static {p0, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 v5, 0x7

    .line 2066
    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 2067
    aget-byte v2, p0, v6

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    .line 2068
    aget-byte v2, p0, v3

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 2069
    aget-byte p0, p0, v4

    aput-byte p0, v0, v1

    const/16 p0, 0xb

    .line 2070
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setHeartRange(III)[B
    .registers 7

    const/16 v0, 0x8

    .line 107
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 108
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 109
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 110
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 111
    aput-byte v1, v0, v1

    int-to-byte p0, p0

    .line 112
    aput-byte p0, v0, v3

    const/4 p0, 0x5

    int-to-byte p1, p1

    .line 113
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 114
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    .line 115
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setHeartTest(II)[B
    .registers 8

    const/16 v0, 0x8

    .line 160
    new-array v0, v0, [B

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 161
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 162
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 163
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    .line 164
    aput-byte v3, v0, v5

    int-to-byte p0, p0

    .line 165
    aput-byte p0, v0, v3

    .line 166
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 p1, 0x5

    .line 167
    aget-byte v2, p0, v2

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    .line 168
    aget-byte p0, p0, v1

    aput-byte p0, v0, p1

    const/4 p0, 0x7

    .line 169
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setLongSit(Lcom/keephealth/android/model/bean/LongSit;)[B
    .registers 6

    const/16 v0, 0x9

    .line 1318
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1319
    aput-byte v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x5

    .line 1320
    aput-byte v4, v0, v3

    const/4 v3, 0x2

    .line 1321
    aput-byte v1, v0, v3

    .line 1322
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 1323
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 1324
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 1325
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveRepetitions()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1326
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p0

    div-int/2addr p0, v4

    int-to-byte p0, p0

    const/4 v1, 0x7

    aput-byte p0, v0, v1

    const/16 p0, 0x8

    .line 1327
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setLongSitNew(Lcom/keephealth/android/model/bean/LongSit;)[B
    .registers 6

    const/16 v0, 0xf

    .line 1332
    new-array v0, v0, [B

    const/16 v1, 0x41

    const/4 v2, 0x0

    .line 1333
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xb

    .line 1334
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1335
    aput-byte v2, v0, v1

    .line 1336
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveRepetitions()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1337
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1338
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartMinute()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1339
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x6

    aput-byte v1, v0, v4

    .line 1340
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndMinute()I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x7

    aput-byte v1, v0, v4

    .line 1341
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidRepetitions()I

    move-result v1

    int-to-byte v1, v1

    const/16 v4, 0x8

    aput-byte v1, v0, v4

    .line 1342
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartHour()I

    move-result v1

    int-to-byte v1, v1

    const/16 v4, 0x9

    aput-byte v1, v0, v4

    .line 1343
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartMinute()I

    move-result v1

    int-to-byte v1, v1

    const/16 v4, 0xa

    aput-byte v1, v0, v4

    .line 1344
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndHour()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 1345
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndMinute()I

    move-result v1

    int-to-byte v1, v1

    const/16 v3, 0xc

    aput-byte v1, v0, v3

    .line 1346
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p0

    div-int/2addr p0, v2

    int-to-byte p0, p0

    const/16 v1, 0xd

    aput-byte p0, v0, v1

    const/16 p0, 0xe

    .line 1347
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setMessage(ILjava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1437
    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1438
    array-length p1, v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception p1

    .line 1440
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v0

    :goto_f
    if-nez v1, :cond_13

    .line 1443
    new-array v1, v0, [B

    :cond_13
    add-int/lit8 v2, p1, 0x5

    .line 1445
    new-array v2, v2, [B

    const/16 v3, 0xa

    .line 1446
    aput-byte v3, v2, v0

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x2

    .line 1447
    invoke-static {v3, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v3

    .line 1448
    aget-byte v5, v3, v0

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    .line 1449
    aget-byte v3, v3, v6

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    int-to-byte p0, p0

    .line 1450
    aput-byte p0, v2, v3

    .line 1451
    array-length p0, v1

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v3

    .line 1452
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v2, p1

    return-object v2
.end method

.method public static setMessage2(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1460
    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1461
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1463
    array-length v2, v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_2d

    :catch_28
    move-exception v2

    .line 1465
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v0

    :goto_2d
    if-nez v1, :cond_31

    .line 1468
    new-array v1, v0, [B

    :cond_31
    const/4 v3, 0x1

    if-ne p0, v3, :cond_3d

    const/16 v4, 0x20

    if-le v2, v4, :cond_45

    .line 1472
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->getSubLength(Ljava/lang/String;I)I

    move-result v2

    goto :goto_45

    :cond_3d
    const/16 v4, 0x80

    if-le v2, v4, :cond_45

    .line 1476
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->getSubLength(Ljava/lang/String;I)I

    move-result v2

    .line 1479
    :cond_45
    :goto_45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u957f\u5ea6:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "FF4536"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v2, 0x5

    .line 1480
    new-array p1, p1, [B

    const/16 v4, 0xa

    .line 1481
    aput-byte v4, p1, v0

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    .line 1482
    invoke-static {v4, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 1483
    aget-byte v6, v4, v0

    aput-byte v6, p1, v3

    .line 1484
    aget-byte v3, v4, v3

    aput-byte v3, p1, v5

    const/4 v3, 0x3

    int-to-byte p0, p0

    .line 1485
    aput-byte p0, p1, v3

    :goto_74
    if-ge v0, v2, :cond_7f

    add-int/lit8 p0, v0, 0x4

    .line 1487
    aget-byte v3, v1, v0

    aput-byte v3, p1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_7f
    add-int/lit8 v2, v2, 0x4

    .line 1489
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, p1, v2

    .line 1490
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setMessageType(I)[B
    .registers 5

    const/4 v0, 0x6

    .line 1396
    new-array v0, v0, [B

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput-byte v3, v0, v1

    aput-byte v2, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x5

    aput-byte v2, v0, p0

    .line 1397
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setNightViewDescription(IIIIIII)[B
    .registers 13

    const/16 v0, 0xf

    .line 2958
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2959
    aput-byte v1, v0, v2

    const/16 v1, 0xb

    const/4 v3, 0x2

    .line 2960
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2961
    aget-byte v2, v4, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    .line 2962
    aget-byte v2, v4, v5

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 2963
    aput-byte v5, v0, v2

    const/4 v2, 0x4

    .line 2964
    aput-byte v5, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0xd

    .line 2965
    aput-byte v3, v0, v2

    const/4 v2, 0x6

    const/4 v4, 0x7

    .line 2966
    aput-byte v4, v0, v2

    int-to-byte p0, p0

    .line 2967
    aput-byte p0, v0, v4

    const/16 p0, 0x8

    int-to-byte p1, p1

    .line 2968
    aput-byte p1, v0, p0

    const/16 p0, 0x9

    int-to-byte p1, p2

    .line 2969
    aput-byte p1, v0, p0

    const/16 p0, 0xa

    int-to-byte p1, p3

    .line 2970
    aput-byte p1, v0, p0

    int-to-byte p0, p4

    .line 2971
    aput-byte p0, v0, v1

    const/16 p0, 0xc

    int-to-byte p1, p5

    .line 2972
    aput-byte p1, v0, p0

    int-to-byte p0, p6

    .line 2973
    aput-byte p0, v0, v3

    const/16 p0, 0xe

    .line 2974
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setNotGame(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/NotGameBean;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 3106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v0, 0x9

    .line 3107
    new-array v1, v1, [B

    const/16 v2, 0x70

    const/4 v3, 0x0

    .line 3108
    aput-byte v2, v1, v3

    add-int/lit8 v2, v0, 0x5

    const/4 v4, 0x2

    .line 3109
    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    .line 3110
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 3111
    aget-byte v2, v2, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x3

    .line 3112
    aput-byte v6, v1, v2

    .line 3113
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 3114
    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9e

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v4, v2, 0x5

    const/16 v5, 0x14

    .line 3115
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x6

    const/4 v5, 0x6

    .line 3116
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x7

    int-to-byte v5, v3

    .line 3117
    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x8

    .line 3118
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getOnOrOff()I

    move-result v5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getCycle()[I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/keephealth/android/util/ble/CmdHelper;->getGameSwitch(I[I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x9

    .line 3119
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getStartTimeHour()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0xa

    .line 3120
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getStartTimeMin()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0xb

    .line 3121
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getEndTimeHour()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0xc

    .line 3122
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->getEndTimeMin()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_9e
    add-int/lit8 v0, v0, 0x8

    .line 3124
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 3125
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B
    .registers 14

    const/16 v0, 0x41

    .line 538
    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    const/16 v0, 0x8

    .line 539
    new-array v1, v0, [B

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 540
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x4

    .line 541
    aput-byte v4, v1, v2

    const/4 v5, 0x2

    .line 542
    aput-byte v3, v1, v5

    .line 543
    new-array v6, v0, [B

    .line 544
    iget-boolean v7, p0, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    const/4 v8, 0x7

    if-eqz v7, :cond_20

    .line 545
    aput-byte v2, v6, v8

    goto :goto_22

    .line 547
    :cond_20
    aput-byte v3, v6, v8

    .line 549
    :goto_22
    iget-boolean v7, p0, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    const/4 v9, 0x6

    if-eqz v7, :cond_2a

    .line 550
    aput-byte v2, v6, v9

    goto :goto_2c

    .line 552
    :cond_2a
    aput-byte v3, v6, v9

    .line 554
    :goto_2c
    iget-boolean v7, p0, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    const/4 v10, 0x5

    if-eqz v7, :cond_34

    .line 555
    aput-byte v2, v6, v10

    goto :goto_36

    .line 557
    :cond_34
    aput-byte v3, v6, v10

    .line 559
    :goto_36
    iget-boolean v7, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    if-eqz v7, :cond_3d

    .line 560
    aput-byte v2, v6, v4

    goto :goto_3f

    .line 562
    :cond_3d
    aput-byte v3, v6, v4

    .line 564
    :goto_3f
    iget-boolean p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    const/4 v7, 0x3

    if-eqz p1, :cond_47

    .line 565
    aput-byte v2, v6, v7

    goto :goto_49

    .line 567
    :cond_47
    aput-byte v3, v6, v7

    .line 569
    :goto_49
    iget-boolean p1, p0, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-eqz p1, :cond_50

    .line 570
    aput-byte v2, v6, v5

    goto :goto_52

    .line 572
    :cond_50
    aput-byte v3, v6, v5

    .line 574
    :goto_52
    iget-boolean p1, p0, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-eqz p1, :cond_59

    .line 575
    aput-byte v2, v6, v2

    goto :goto_5b

    .line 577
    :cond_59
    aput-byte v3, v6, v2

    .line 579
    :goto_5b
    iget-boolean p1, p0, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz p1, :cond_62

    .line 580
    aput-byte v2, v6, v3

    goto :goto_64

    .line 582
    :cond_62
    aput-byte v3, v6, v3

    .line 584
    :goto_64
    new-array p1, v0, [B

    .line 585
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-eqz v11, :cond_6d

    .line 586
    aput-byte v2, p1, v8

    goto :goto_6f

    .line 588
    :cond_6d
    aput-byte v3, p1, v8

    .line 590
    :goto_6f
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-eqz v11, :cond_76

    .line 591
    aput-byte v2, p1, v9

    goto :goto_78

    .line 593
    :cond_76
    aput-byte v3, p1, v9

    .line 595
    :goto_78
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-eqz v11, :cond_7f

    .line 596
    aput-byte v2, p1, v10

    goto :goto_81

    .line 598
    :cond_7f
    aput-byte v3, p1, v10

    .line 600
    :goto_81
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-eqz v11, :cond_88

    .line 601
    aput-byte v2, p1, v4

    goto :goto_8a

    .line 603
    :cond_88
    aput-byte v3, p1, v4

    .line 605
    :goto_8a
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    if-eqz v11, :cond_91

    .line 606
    aput-byte v2, p1, v7

    goto :goto_93

    .line 608
    :cond_91
    aput-byte v3, p1, v7

    .line 610
    :goto_93
    iget-boolean v11, p0, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-eqz v11, :cond_9a

    .line 611
    aput-byte v2, p1, v5

    goto :goto_9c

    .line 613
    :cond_9a
    aput-byte v3, p1, v5

    .line 615
    :goto_9c
    iget-boolean v5, p0, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    if-eqz v5, :cond_a3

    .line 616
    aput-byte v2, p1, v2

    goto :goto_a5

    .line 618
    :cond_a3
    aput-byte v3, p1, v2

    .line 620
    :goto_a5
    iget-boolean v5, p0, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 621
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    .line 622
    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v4

    .line 623
    new-array p1, v0, [B

    .line 624
    iget-boolean v4, p0, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    if-eqz v4, :cond_c1

    .line 625
    aput-byte v2, p1, v8

    goto :goto_c3

    .line 627
    :cond_c1
    aput-byte v3, p1, v8

    .line 629
    :goto_c3
    iget-boolean v4, p0, Lcom/keephealth/android/model/bean/AppNotice;->sina:Z

    if-eqz v4, :cond_ca

    .line 630
    aput-byte v2, p1, v9

    goto :goto_cc

    .line 632
    :cond_ca
    aput-byte v3, p1, v9

    .line 634
    :goto_cc
    iget-boolean v4, p0, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    if-eqz v4, :cond_d3

    .line 635
    aput-byte v2, p1, v10

    goto :goto_d5

    .line 637
    :cond_d3
    aput-byte v3, p1, v10

    .line 639
    :goto_d5
    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v10

    .line 640
    new-array p1, v0, [B

    .line 641
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    int-to-byte v0, v0

    aput-byte v0, p1, v8

    .line 642
    iget-boolean p0, p0, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz p0, :cond_ea

    .line 643
    aput-byte v2, p1, v3

    goto :goto_ec

    .line 645
    :cond_ea
    aput-byte v3, p1, v3

    .line 647
    :goto_ec
    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v9

    .line 648
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v8

    return-object v1
.end method

.method public static setNoticeNew(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)[B
    .registers 19

    move-object/from16 v0, p0

    const/16 v1, 0x41

    move-object/from16 v2, p1

    .line 653
    invoke-static {v2, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    const/16 v2, 0xe

    .line 654
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x9

    .line 655
    aput-byte v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0xa

    .line 656
    aput-byte v6, v2, v5

    const/4 v7, 0x2

    .line 657
    aput-byte v3, v2, v7

    const/16 v8, 0x8

    .line 658
    new-array v9, v8, [B

    .line 659
    iget-boolean v10, v0, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    const/4 v11, 0x7

    if-eqz v10, :cond_27

    .line 660
    aput-byte v5, v9, v11

    goto :goto_29

    .line 662
    :cond_27
    aput-byte v3, v9, v11

    .line 664
    :goto_29
    iget-boolean v10, v0, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    const/4 v12, 0x6

    if-eqz v10, :cond_31

    .line 665
    aput-byte v5, v9, v12

    goto :goto_33

    .line 667
    :cond_31
    aput-byte v3, v9, v12

    .line 669
    :goto_33
    iget-boolean v10, v0, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    const/4 v13, 0x5

    if-eqz v10, :cond_3b

    .line 670
    aput-byte v5, v9, v13

    goto :goto_3d

    .line 672
    :cond_3b
    aput-byte v3, v9, v13

    .line 674
    :goto_3d
    iget-boolean v10, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    const/4 v14, 0x4

    if-eqz v10, :cond_45

    .line 675
    aput-byte v5, v9, v14

    goto :goto_47

    .line 677
    :cond_45
    aput-byte v3, v9, v14

    .line 679
    :goto_47
    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    const/4 v10, 0x3

    if-eqz v1, :cond_4f

    .line 680
    aput-byte v5, v9, v10

    goto :goto_51

    .line 682
    :cond_4f
    aput-byte v3, v9, v10

    .line 684
    :goto_51
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-eqz v1, :cond_58

    .line 685
    aput-byte v5, v9, v7

    goto :goto_5a

    .line 687
    :cond_58
    aput-byte v3, v9, v7

    .line 689
    :goto_5a
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-eqz v1, :cond_61

    .line 690
    aput-byte v5, v9, v5

    goto :goto_63

    .line 692
    :cond_61
    aput-byte v3, v9, v5

    .line 694
    :goto_63
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz v1, :cond_6a

    .line 695
    aput-byte v5, v9, v3

    goto :goto_6c

    .line 697
    :cond_6a
    aput-byte v3, v9, v3

    .line 699
    :goto_6c
    new-array v1, v8, [B

    .line 700
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-eqz v15, :cond_75

    .line 701
    aput-byte v5, v1, v11

    goto :goto_77

    .line 703
    :cond_75
    aput-byte v3, v1, v11

    .line 705
    :goto_77
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-eqz v15, :cond_7e

    .line 706
    aput-byte v5, v1, v12

    goto :goto_80

    .line 708
    :cond_7e
    aput-byte v3, v1, v12

    .line 710
    :goto_80
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-eqz v15, :cond_87

    .line 711
    aput-byte v5, v1, v13

    goto :goto_89

    .line 713
    :cond_87
    aput-byte v3, v1, v13

    .line 715
    :goto_89
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-eqz v15, :cond_90

    .line 716
    aput-byte v5, v1, v14

    goto :goto_92

    .line 718
    :cond_90
    aput-byte v3, v1, v14

    .line 720
    :goto_92
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    if-eqz v15, :cond_99

    .line 721
    aput-byte v5, v1, v10

    goto :goto_9b

    .line 723
    :cond_99
    aput-byte v3, v1, v10

    .line 725
    :goto_9b
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-eqz v15, :cond_a2

    .line 726
    aput-byte v5, v1, v7

    goto :goto_a4

    .line 728
    :cond_a2
    aput-byte v3, v1, v7

    .line 730
    :goto_a4
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    if-eqz v15, :cond_ab

    .line 731
    aput-byte v5, v1, v5

    goto :goto_ad

    .line 733
    :cond_ab
    aput-byte v3, v1, v5

    .line 735
    :goto_ad
    iget-boolean v15, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    int-to-byte v15, v15

    aput-byte v15, v1, v3

    .line 736
    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    .line 737
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v14

    .line 739
    new-array v1, v8, [B

    .line 740
    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    if-eqz v9, :cond_c9

    .line 741
    aput-byte v5, v1, v11

    goto :goto_cb

    .line 743
    :cond_c9
    aput-byte v3, v1, v11

    .line 750
    :goto_cb
    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWeibo:Z

    int-to-byte v9, v9

    aput-byte v9, v1, v12

    .line 751
    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    if-eqz v9, :cond_d7

    .line 752
    aput-byte v5, v1, v13

    goto :goto_d9

    .line 754
    :cond_d7
    aput-byte v3, v1, v13

    .line 756
    :goto_d9
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    .line 757
    new-array v1, v8, [B

    .line 758
    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    if-eqz v9, :cond_e9

    .line 759
    aput-byte v5, v1, v3

    goto :goto_eb

    .line 761
    :cond_e9
    aput-byte v3, v1, v3

    .line 763
    :goto_eb
    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    int-to-byte v9, v9

    aput-byte v9, v1, v11

    .line 764
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v12

    .line 765
    new-array v1, v8, [B

    .line 766
    new-array v9, v8, [B

    .line 767
    new-array v15, v8, [B

    .line 768
    new-array v6, v8, [B

    .line 769
    new-array v4, v8, [B

    .line 770
    new-array v3, v8, [B

    .line 771
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouyin:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v11

    .line 772
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishou:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v12

    .line 773
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouyinjisuban:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v13

    .line 774
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isHaluo:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v14

    .line 775
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXiaohongshu:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v10

    .line 776
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMeituan:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 777
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhifubao:Z

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 778
    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDazongdianping:Z

    int-to-byte v8, v8

    const/16 v16, 0x0

    aput-byte v8, v1, v16

    .line 779
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v11

    .line 780
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMomo:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v11

    .line 781
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBilibili:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v12

    .line 782
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBosszhipin:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v13

    .line 783
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v14

    .line 784
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isSoul:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v10

    .line 785
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZoom:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v7

    .line 786
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBaidutieba:Z

    int-to-byte v1, v1

    aput-byte v1, v9, v5

    .line 787
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDouban:Z

    int-to-byte v1, v1

    const/4 v8, 0x0

    aput-byte v1, v9, v8

    .line 788
    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v8, 0x8

    aput-byte v1, v2, v8

    .line 789
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isEleme:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v11

    .line 790
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isGaodeditu:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v12

    .line 791
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isJingdong:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v13

    .line 792
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishoujisuban:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v14

    .line 793
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMaimai:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v10

    .line 794
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isPinduoduo:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v7

    .line 795
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQiyeweixin:Z

    int-to-byte v1, v1

    aput-byte v1, v15, v5

    .line 796
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDidachuxing:Z

    int-to-byte v1, v1

    const/4 v8, 0x0

    aput-byte v1, v15, v8

    .line 797
    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v8, 0x9

    aput-byte v1, v2, v8

    .line 798
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTantan:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v11

    .line 799
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTaobao:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v12

    .line 800
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTielu12306:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v13

    .line 801
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXianyu:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v14

    .line 802
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhihu:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v10

    .line 803
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isAlibaba:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v7

    .line 804
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDidichuxing:Z

    int-to-byte v1, v1

    aput-byte v1, v6, v5

    .line 805
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isMeiyou:Z

    int-to-byte v1, v1

    const/4 v8, 0x0

    aput-byte v1, v6, v8

    .line 806
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v6, 0xa

    aput-byte v1, v2, v6

    .line 807
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isJiaoguan12123:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v11

    .line 808
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isDewu:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v12

    .line 809
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v13

    .line 810
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isWangzherongyao:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v14

    .line 811
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunhuiyi:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v10

    .line 812
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isQunaerlvxing:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v7

    .line 813
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isXiechenglvxing:Z

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 814
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTongchenglvxing:Z

    int-to-byte v1, v1

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    .line 815
    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v1

    int-to-byte v1, v1

    const/16 v4, 0xb

    aput-byte v1, v2, v4

    .line 816
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isFeizhulvxing:Z

    int-to-byte v1, v1

    aput-byte v1, v3, v11

    .line 817
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isZhixinghuochepiao:Z

    int-to-byte v1, v1

    aput-byte v1, v3, v12

    .line 818
    iget-boolean v1, v0, Lcom/keephealth/android/model/bean/AppNotice;->isBaiduditu:Z

    int-to-byte v1, v1

    aput-byte v1, v3, v13

    .line 819
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunditu:Z

    int-to-byte v0, v0

    aput-byte v0, v3, v14

    .line 820
    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Bit8Array2Int([B)I

    move-result v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    aput-byte v0, v2, v1

    const/16 v0, 0xd

    .line 821
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v2, v0

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNoticeNew: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gff333"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static setOutExchangeReward()[B
    .registers 4

    const/4 v0, 0x5

    .line 2042
    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 2043
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/4 v3, 0x1

    .line 2044
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    .line 2045
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 2046
    aput-byte v3, v0, v1

    const/4 v1, 0x4

    .line 2047
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static setPair()[B
    .registers 4

    const/16 v0, 0x9

    .line 3162
    new-array v0, v0, [B

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 3163
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 3164
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 3165
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 3166
    aput-byte v1, v0, v1

    const/4 v1, 0x4

    .line 3167
    aput-byte v2, v0, v1

    .line 3168
    aput-byte v2, v0, v3

    const/4 v1, 0x6

    .line 3169
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 3170
    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 3171
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static setPairingcode(IIII)[B
    .registers 8

    const/16 v0, 0x9

    .line 1616
    new-array v0, v0, [B

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 1617
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 1618
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1619
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 1620
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 1621
    aput-byte p0, v0, v1

    int-to-byte p0, p1

    .line 1622
    aput-byte p0, v0, v3

    const/4 p0, 0x6

    int-to-byte p1, p2

    .line 1623
    aput-byte p1, v0, p0

    const/4 p0, 0x7

    int-to-byte p1, p3

    .line 1624
    aput-byte p1, v0, p0

    const/16 p0, 0x8

    .line 1625
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setPhoneType()[B
    .registers 4

    const/4 v0, 0x5

    .line 74
    new-array v0, v0, [B

    const/16 v1, 0x47

    const/4 v2, 0x0

    .line 75
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 76
    aput-byte v1, v0, v1

    const/4 v3, 0x2

    .line 77
    aput-byte v2, v0, v3

    const/4 v2, 0x3

    .line 78
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    .line 79
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static setSchedule(ILjava/util/List;Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;",
            ">;Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v0, v2

    move v3, v0

    move v4, v3

    move v5, v4

    .line 2571
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "CalenderDataStruct"

    const-string v8, "UTF-8"

    if-ge v0, v6, :cond_b4

    .line 2572
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "\u6807\u9898i:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v9}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    :try_start_37
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 2575
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 2577
    :cond_57
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 2578
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v4, v6

    .line 2580
    :cond_77
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_97

    .line 2581
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v6}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_96} :catch_9b

    add-int/2addr v5, v6

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :catch_9b
    move-exception v0

    .line 2584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u65e5\u7a0b\u5f02\u5e38:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2585
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2588
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\u603b\u957f\u5ea6:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x15

    const/4 v9, 0x6

    add-int/2addr v6, v9

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x15

    add-int/2addr v0, v9

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int v6, v0, v5

    add-int/lit8 v0, v6, 0x3

    new-array v10, v0, [B

    const/16 v0, 0x70

    .line 2590
    aput-byte v0, v10, v2

    add-int/lit8 v0, v6, -0x1

    const/4 v11, 0x2

    .line 2591
    invoke-static {v0, v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v0

    .line 2592
    aget-byte v12, v0, v2

    const/4 v13, 0x1

    aput-byte v12, v10, v13

    .line 2593
    aget-byte v0, v0, v13

    aput-byte v0, v10, v11

    const/4 v0, 0x3

    .line 2594
    aput-byte v13, v10, v0

    .line 2595
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v13

    int-to-byte v0, v0

    const/4 v12, 0x4

    aput-byte v0, v10, v12

    const/4 v0, 0x5

    const/16 v14, 0xf

    .line 2596
    aput-byte v14, v10, v0

    .line 2597
    aput-byte v13, v10, v9

    const/4 v0, 0x7

    .line 2598
    aput-byte v12, v10, v0

    add-int/lit8 v3, v3, 0x13

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  list_length:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move v4, v0

    .line 2605
    :goto_122
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4b8

    const/16 v5, 0x8

    if-nez v4, :cond_131

    .line 2608
    aput-byte v14, v10, v5

    const/16 v0, 0x9

    goto :goto_136

    :cond_131
    add-int/lit8 v7, v0, 0x1

    .line 2610
    aput-byte v14, v10, v0

    move v0, v7

    .line 2612
    :goto_136
    const-string v7, "CalenderDataStruc2t"

    if-eqz p2, :cond_191

    mul-int v5, v4, v3

    add-int/lit8 v9, v5, 0x6

    const/4 v12, -0x1

    .line 2614
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x7

    .line 2615
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x8

    .line 2616
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x9

    .line 2617
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xa

    .line 2618
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xb

    .line 2619
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xc

    .line 2620
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xd

    .line 2621
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xe

    .line 2622
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0xf

    .line 2623
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x10

    .line 2624
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x11

    .line 2625
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x12

    .line 2626
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x13

    .line 2627
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x14

    .line 2628
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x15

    .line 2629
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x16

    .line 2630
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x17

    .line 2631
    aput-byte v12, v10, v9

    add-int/lit8 v9, v5, 0x18

    .line 2632
    aput-byte v12, v10, v9

    add-int/lit8 v5, v5, 0x19

    .line 2633
    aput-byte v12, v10, v5

    move/from16 v12, p0

    goto/16 :goto_499

    .line 2636
    :cond_191
    :try_start_191
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v9}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b1

    .line 2637
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v9}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v9, v9

    goto :goto_1b2

    :cond_1b1
    move v9, v2

    .line 2641
    :goto_1b2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v12}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1d2

    .line 2642
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v12}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    goto :goto_1d3

    :cond_1d2
    move v12, v2

    .line 2646
    :goto_1d3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v15}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1f3

    .line 2647
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v15}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    array-length v15, v15
    :try_end_1f2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_191 .. :try_end_1f2} :catch_4b1

    goto :goto_1f4

    :cond_1f3
    move v15, v2

    .line 2654
    :goto_1f4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v5, "titleLength:"

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "  locationLength:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "  descriptionLength:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v9, v9, 0x13

    add-int/2addr v9, v12

    add-int/2addr v9, v15

    int-to-byte v9, v9

    .line 2655
    aput-byte v9, v10, v0

    add-int/lit8 v9, v0, 0x2

    move/from16 v12, p0

    int-to-byte v14, v12

    .line 2656
    aput-byte v14, v10, v5

    .line 2658
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getStartYear()I

    move-result v5

    invoke-static {v5, v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    add-int/lit8 v14, v0, 0x3

    .line 2659
    aget-byte v15, v5, v2

    aput-byte v15, v10, v9

    add-int/lit8 v9, v0, 0x4

    .line 2660
    aget-byte v5, v5, v13

    aput-byte v5, v10, v14

    add-int/lit8 v5, v0, 0x5

    .line 2661
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getStartMonth()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    add-int/lit8 v9, v0, 0x6

    .line 2662
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getStartDay()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v5

    add-int/lit8 v5, v0, 0x7

    .line 2663
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getStartHour()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    add-int/lit8 v9, v0, 0x8

    .line 2664
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getStartMinute()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v5

    .line 2666
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getEndYear()I

    move-result v5

    invoke-static {v5, v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    add-int/lit8 v14, v0, 0x9

    .line 2667
    aget-byte v15, v5, v2

    aput-byte v15, v10, v9

    add-int/lit8 v9, v0, 0xa

    .line 2668
    aget-byte v5, v5, v13

    aput-byte v5, v10, v14

    add-int/lit8 v5, v0, 0xb

    .line 2669
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getEndMonth()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    add-int/lit8 v9, v0, 0xc

    .line 2670
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getEndDay()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v5

    add-int/lit8 v5, v0, 0xd

    .line 2671
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getEndHour()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    add-int/lit8 v9, v0, 0xe

    .line 2672
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v14}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getEndMinute()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v5

    const/16 v5, 0x8

    .line 2681
    new-array v14, v5, [B

    fill-array-data v14, :array_4c4

    add-int/lit8 v15, v0, 0xf

    .line 2682
    invoke-static {v14, v2, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v9

    add-int/lit8 v5, v0, 0x10

    .line 2683
    aput-byte v13, v10, v15

    add-int/lit8 v9, v0, 0x11

    .line 2684
    aput-byte v2, v10, v5

    .line 2685
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_380

    add-int/lit8 v0, v0, 0x12

    .line 2687
    :try_start_300
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    int-to-byte v5, v5

    aput-byte v5, v10, v9

    .line 2688
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5
    :try_end_321
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_300 .. :try_end_321} :catch_379

    .line 2692
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    if-eqz v5, :cond_384

    .line 2693
    array-length v9, v5

    if-lez v9, :cond_384

    move v9, v0

    move v0, v2

    .line 2695
    :goto_33a
    :try_start_33a
    array-length v14, v5
    :try_end_33b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_33a .. :try_end_33b} :catch_363

    if-ge v0, v14, :cond_34b

    add-int/lit8 v14, v9, 0x1

    .line 2696
    :try_start_33f
    aget-byte v15, v5, v0

    aput-byte v15, v10, v9
    :try_end_343
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_33f .. :try_end_343} :catch_347

    add-int/lit8 v0, v0, 0x1

    move v9, v14

    goto :goto_33a

    :catch_347
    move-exception v0

    move-object v5, v0

    move v0, v14

    goto :goto_366

    .line 2698
    :cond_34b
    :try_start_34b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6807\u9898  allLength:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_361
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34b .. :try_end_361} :catch_363

    move v0, v9

    goto :goto_384

    :catch_363
    move-exception v0

    move-object v5, v0

    move v0, v9

    .line 2700
    :goto_366
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "e \u6807\u9898:"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_384

    :catch_379
    move-exception v0

    .line 2690
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_380
    add-int/lit8 v0, v0, 0x12

    .line 2704
    aput-byte v2, v10, v9

    .line 2707
    :cond_384
    :goto_384
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v5}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_411

    add-int/lit8 v5, v0, 0x1

    .line 2709
    :try_start_396
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v9}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v9, v9

    int-to-byte v9, v9

    aput-byte v9, v10, v0

    .line 2710
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_3b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_396 .. :try_end_3b7} :catch_40a

    .line 2716
    :try_start_3b7
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    if-eqz v0, :cond_3df

    .line 2717
    array-length v9, v0

    if-lez v9, :cond_3df

    move v9, v2

    .line 2718
    :goto_3cf
    array-length v14, v0
    :try_end_3d0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b7 .. :try_end_3d0} :catch_3f6

    if-ge v9, v14, :cond_3df

    add-int/lit8 v14, v5, 0x1

    .line 2719
    :try_start_3d4
    aget-byte v15, v0, v9

    aput-byte v15, v10, v5
    :try_end_3d8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d4 .. :try_end_3d8} :catch_3dc

    add-int/lit8 v9, v9, 0x1

    move v5, v14

    goto :goto_3cf

    :catch_3dc
    move-exception v0

    move v5, v14

    goto :goto_3f7

    .line 2722
    :cond_3df
    :try_start_3df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5730\u70b9  allLength:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3df .. :try_end_3f5} :catch_3f6

    goto :goto_415

    :catch_3f6
    move-exception v0

    .line 2724
    :goto_3f7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "e \u5730\u70b9:"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_415

    :catch_40a
    move-exception v0

    .line 2712
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_411
    add-int/lit8 v5, v0, 0x1

    .line 2728
    aput-byte v2, v10, v0

    .line 2730
    :goto_415
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_494

    add-int/lit8 v9, v5, 0x1

    .line 2732
    :try_start_427
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    aput-byte v0, v10, v5
    :try_end_439
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_427 .. :try_end_439} :catch_48d

    .line 2737
    :try_start_439
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;

    invoke-virtual {v0}, Lcom/keephealth/android/util/CalendarEventsRetriever$CalendarEvent;->getDescrition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    if-eqz v0, :cond_461

    .line 2738
    array-length v5, v0

    if-lez v5, :cond_461

    move v5, v2

    .line 2739
    :goto_451
    array-length v14, v0
    :try_end_452
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_439 .. :try_end_452} :catch_478

    if-ge v5, v14, :cond_461

    add-int/lit8 v14, v9, 0x1

    .line 2740
    :try_start_456
    aget-byte v15, v0, v5

    aput-byte v15, v10, v9
    :try_end_45a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_456 .. :try_end_45a} :catch_45e

    add-int/lit8 v5, v5, 0x1

    move v9, v14

    goto :goto_451

    :catch_45e
    move-exception v0

    move v9, v14

    goto :goto_479

    .line 2743
    :cond_461
    :try_start_461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5907\u6ce8  allLength:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_477
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_461 .. :try_end_477} :catch_478

    goto :goto_48b

    :catch_478
    move-exception v0

    .line 2745
    :goto_479
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "e \u5907\u6ce8:"

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48b
    move v0, v9

    goto :goto_499

    :catch_48d
    move-exception v0

    .line 2734
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_494
    add-int/lit8 v5, v5, 0x1

    .line 2748
    aput-byte v2, v10, v5

    move v0, v5

    .line 2751
    :goto_499
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "allLength:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v14, 0xf

    goto/16 :goto_122

    :catch_4b1
    move-exception v0

    .line 2652
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4b8
    add-int/2addr v6, v11

    .line 2753
    invoke-static {v10}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v0

    aput-byte v0, v10, v6

    .line 2754
    invoke-static {v10}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_4c4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static setScreenLight(Lcom/keephealth/android/model/bean/UpHander;)[B
    .registers 5

    const/16 v0, 0xa

    .line 1640
    new-array v0, v0, [B

    const/16 v1, 0x42

    const/4 v2, 0x0

    .line 1641
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x6

    .line 1642
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 1643
    aput-byte v2, v0, v1

    .line 1644
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveRepetitions()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1645
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartHour()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1646
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartMinute()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1647
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndHour()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 1648
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndMinute()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 1649
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/UpHander;->getLightTime()I

    move-result p0

    int-to-byte p0, p0

    const/16 v1, 0x8

    aput-byte p0, v0, v1

    const/16 p0, 0x9

    .line 1650
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setSleepTime(Ljava/util/List;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SleepTime;",
            ">;I)[B"
        }
    .end annotation

    const/16 v0, 0x14

    .line 917
    new-array v0, v0, [B

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 918
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x10

    .line 919
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 920
    aput-byte v2, v0, v1

    .line 921
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_45

    .line 922
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/SleepTime;

    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, v3, 0x3

    .line 923
    iget v5, v1, Lcom/keephealth/android/model/bean/SleepTime;->state:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x4

    .line 924
    iget v5, v1, Lcom/keephealth/android/model/bean/SleepTime;->startH:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x5

    .line 925
    iget v5, v1, Lcom/keephealth/android/model/bean/SleepTime;->startM:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x6

    .line 926
    iget v5, v1, Lcom/keephealth/android/model/bean/SleepTime;->endH:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x7

    .line 927
    iget v1, v1, Lcom/keephealth/android/model/bean/SleepTime;->endM:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_45
    const/16 p0, 0x12

    int-to-byte p1, p1

    .line 929
    aput-byte p1, v0, p0

    const/16 p0, 0x13

    .line 930
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setSportPauseOrContinue(I)[B
    .registers 4

    const/4 v0, 0x5

    .line 2926
    new-array v0, v0, [B

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 2927
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 2928
    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 2929
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte p0, p0

    .line 2930
    aput-byte p0, v0, v1

    const/4 p0, 0x4

    .line 2931
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v1

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static setSportTargetCustomTask(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 2138
    :goto_d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    .line 2139
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2141
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2142
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xd

    mul-int/2addr v5, v6

    array-length v3, v3

    add-int/2addr v5, v3

    new-array v3, v5, [B

    .line 2143
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xf

    add-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v5

    new-array v8, v7, [B

    const/16 v9, 0x70

    .line 2146
    aput-byte v9, v8, v4

    add-int/lit8 v9, v7, -0x4

    const/4 v10, 0x2

    .line 2147
    invoke-static {v9, v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v9

    .line 2148
    aget-byte v11, v9, v4

    const/4 v12, 0x1

    aput-byte v11, v8, v12

    .line 2149
    aget-byte v9, v9, v12

    aput-byte v9, v8, v10

    const/4 v9, 0x3

    .line 2150
    aput-byte v12, v8, v9

    .line 2151
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v11, v13

    add-int/2addr v11, v10

    int-to-byte v11, v11

    const/4 v13, 0x4

    aput-byte v11, v8, v13

    const/4 v11, 0x5

    .line 2153
    aput-byte v13, v8, v11

    const/4 v11, 0x6

    .line 2154
    aput-byte v12, v8, v11

    const/4 v14, 0x7

    .line 2155
    aput-byte v13, v8, v14

    const/16 v14, 0x8

    .line 2156
    aput-byte v11, v8, v14

    const/16 v14, 0x9

    .line 2157
    aput-byte v12, v8, v14

    const/16 v14, 0xa

    .line 2158
    aput-byte v13, v8, v14

    move v14, v4

    .line 2160
    :goto_7c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_123

    mul-int/lit8 v15, v14, 0xf

    add-int/lit8 v16, v15, 0xb

    .line 2161
    aput-byte v13, v8, v16

    add-int/lit8 v16, v15, 0xc

    .line 2162
    aput-byte v6, v8, v16

    add-int/lit8 v16, v15, 0xd

    int-to-byte v6, v0

    .line 2163
    aput-byte v6, v8, v16

    .line 2164
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v9

    invoke-static {v9, v10, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v6

    add-int/lit8 v9, v15, 0xe

    .line 2165
    aget-byte v10, v6, v4

    aput-byte v10, v8, v9

    add-int/lit8 v9, v15, 0xf

    .line 2166
    aget-byte v10, v6, v12

    aput-byte v10, v8, v9

    add-int/lit8 v9, v15, 0x10

    const/4 v10, 0x2

    .line 2167
    aget-byte v19, v6, v10

    aput-byte v19, v8, v9

    add-int/lit8 v9, v15, 0x11

    const/4 v10, 0x3

    .line 2168
    aget-byte v6, v6, v10

    aput-byte v6, v8, v9

    add-int/lit8 v6, v15, 0x12

    .line 2169
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    add-int/lit8 v6, v15, 0x13

    .line 2170
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v9

    sub-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    .line 2171
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v6

    invoke-static {v6, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v6

    add-int/lit8 v9, v15, 0x14

    .line 2172
    aget-byte v10, v6, v4

    aput-byte v10, v8, v9

    add-int/lit8 v9, v15, 0x15

    .line 2173
    aget-byte v10, v6, v12

    aput-byte v10, v8, v9

    add-int/lit8 v9, v15, 0x16

    const/4 v10, 0x2

    .line 2174
    aget-byte v16, v6, v10

    aput-byte v16, v8, v9

    add-int/lit8 v9, v15, 0x17

    const/16 v16, 0x3

    .line 2175
    aget-byte v6, v6, v16

    aput-byte v6, v8, v9

    .line 2176
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v6

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v6

    add-int/lit8 v9, v15, 0x18

    .line 2177
    aget-byte v10, v6, v4

    aput-byte v10, v8, v9

    add-int/lit8 v15, v15, 0x19

    .line 2178
    aget-byte v6, v6, v12

    aput-byte v6, v8, v15

    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0xd

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto/16 :goto_7c

    :cond_123
    move v6, v4

    move v9, v6

    .line 2183
    :goto_125
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_210

    .line 2184
    aput-byte v11, v3, v9

    .line 2185
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v10}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    add-int/lit8 v14, v9, 0x1

    .line 2186
    array-length v15, v10

    add-int/lit8 v15, v15, 0xb

    int-to-byte v15, v15

    aput-byte v15, v3, v14

    add-int/lit8 v14, v9, 0x2

    int-to-byte v15, v0

    .line 2187
    aput-byte v15, v3, v14

    .line 2188
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v14}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v14

    invoke-static {v14, v15, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v14

    add-int/lit8 v15, v9, 0x3

    .line 2189
    aget-byte v17, v14, v4

    aput-byte v17, v3, v15

    add-int/lit8 v15, v9, 0x4

    .line 2190
    aget-byte v17, v14, v12

    aput-byte v17, v3, v15

    add-int/lit8 v15, v9, 0x5

    const/16 v16, 0x2

    .line 2191
    aget-byte v17, v14, v16

    aput-byte v17, v3, v15

    add-int/lit8 v15, v9, 0x6

    const/16 v17, 0x3

    .line 2192
    aget-byte v14, v14, v17

    aput-byte v14, v3, v15

    add-int/lit8 v14, v9, 0x7

    .line 2193
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v15}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getAlarmEnable()I

    move-result v15

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v11

    invoke-static {v15, v11}, Lcom/keephealth/android/util/ble/CmdHelper;->getTaskSwitch(I[I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v14

    .line 2194
    const-string v11, "255:255"

    .line 2195
    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2196
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v15}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v15}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1c3

    .line 2197
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v11}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    :cond_1c3
    add-int/lit8 v14, v9, 0x8

    .line 2199
    aget-object v15, v11, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v3, v14

    add-int/lit8 v14, v9, 0x9

    .line 2200
    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v14

    .line 2201
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v11}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v11

    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v11

    add-int/lit8 v15, v9, 0xa

    .line 2202
    aget-byte v16, v11, v4

    aput-byte v16, v3, v15

    add-int/lit8 v15, v9, 0xb

    .line 2203
    aget-byte v11, v11, v12

    aput-byte v11, v3, v15

    add-int/lit8 v11, v9, 0xc

    .line 2204
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v15}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getStatus()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v3, v11

    add-int/lit8 v9, v9, 0xd

    .line 2206
    array-length v11, v10

    invoke-static {v10, v4, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2207
    array-length v10, v10

    add-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x6

    goto/16 :goto_125

    .line 2209
    :cond_210
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0xb

    invoke-static {v3, v4, v8, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v7, v12

    .line 2211
    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v0

    aput-byte v0, v8, v7

    .line 2212
    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setSportTargetTask(IILjava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v0, 0x6

    new-array v1, v1, [B

    const/16 v2, 0x70

    const/4 v3, 0x0

    .line 2105
    aput-byte v2, v1, v3

    add-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    .line 2106
    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    .line 2107
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 2108
    aget-byte v2, v2, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x3

    .line 2109
    aput-byte v6, v1, v2

    int-to-byte p0, p0

    const/4 v5, 0x4

    .line 2110
    aput-byte p0, v1, v5

    move p0, v3

    .line 2111
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge p0, v7, :cond_c7

    mul-int/lit8 v7, p0, 0xf

    add-int/lit8 v8, v7, 0x5

    .line 2112
    aput-byte v5, v1, v8

    add-int/lit8 v8, v7, 0x6

    const/16 v9, 0xd

    .line 2113
    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0x7

    int-to-byte v9, p1

    .line 2114
    aput-byte v9, v1, v8

    .line 2115
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v8}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v8

    add-int/lit8 v9, v7, 0x8

    .line 2116
    aget-byte v10, v8, v3

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0x9

    .line 2117
    aget-byte v10, v8, v6

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0xa

    .line 2118
    aget-byte v10, v8, v4

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0xb

    .line 2119
    aget-byte v8, v8, v2

    aput-byte v8, v1, v9

    add-int/lit8 v8, v7, 0xc

    .line 2120
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0xd

    .line 2121
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v9}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v9

    sub-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 2122
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v8}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v8

    invoke-static {v8, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v8

    add-int/lit8 v9, v7, 0xe

    .line 2123
    aget-byte v10, v8, v3

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0xf

    .line 2124
    aget-byte v10, v8, v6

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0x10

    .line 2125
    aget-byte v10, v8, v4

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0x11

    .line 2126
    aget-byte v8, v8, v2

    aput-byte v8, v1, v9

    .line 2127
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v8}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v8

    invoke-static {v8, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v8

    add-int/lit8 v9, v7, 0x12

    .line 2128
    aget-byte v10, v8, v3

    aput-byte v10, v1, v9

    add-int/lit8 v7, v7, 0x13

    .line 2129
    aget-byte v8, v8, v6

    aput-byte v8, v1, v7

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_27

    :cond_c7
    add-int/lit8 v0, v0, 0x5

    .line 2131
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 2132
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setTarget(IIIIIIIIIIII)[B
    .registers 22

    move/from16 v0, p9

    const/16 v1, 0x18

    .line 981
    new-array v1, v1, [B

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 982
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x14

    .line 983
    aput-byte v4, v1, v2

    const/4 v2, 0x2

    .line 984
    aput-byte v3, v1, v2

    move v5, p0

    int-to-byte v5, v5

    const/4 v6, 0x3

    .line 985
    aput-byte v5, v1, v6

    const/4 v5, 0x4

    move v7, p1

    int-to-byte v7, v7

    .line 986
    aput-byte v7, v1, v5

    const/4 v5, 0x5

    move v7, p2

    int-to-byte v7, v7

    .line 987
    aput-byte v7, v1, v5

    move v5, p3

    .line 988
    invoke-static {p3, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    move v7, v3

    .line 989
    :goto_27
    array-length v8, v5

    if-ge v7, v8, :cond_33

    add-int/lit8 v8, v7, 0x6

    .line 990
    aget-byte v9, v5, v7

    aput-byte v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_33
    const/16 v5, 0x9

    move v7, p4

    int-to-byte v7, v7

    .line 992
    aput-byte v7, v1, v5

    move v5, p5

    .line 993
    invoke-static {p5, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    move v7, v3

    .line 994
    :goto_3f
    array-length v8, v5

    if-ge v7, v8, :cond_4b

    add-int/lit8 v8, v7, 0xa

    .line 995
    aget-byte v9, v5, v7

    aput-byte v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_4b
    const/16 v5, 0xd

    move/from16 v7, p6

    int-to-byte v7, v7

    .line 997
    aput-byte v7, v1, v5

    move/from16 v5, p7

    .line 998
    invoke-static {v5, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    move v6, v3

    .line 999
    :goto_59
    array-length v7, v5

    if-ge v6, v7, :cond_65

    add-int/lit8 v7, v6, 0xe

    .line 1000
    aget-byte v8, v5, v6

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_65
    const/16 v5, 0x11

    move/from16 v6, p8

    int-to-byte v6, v6

    .line 1002
    aput-byte v6, v1, v5

    .line 1003
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exervice:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gtru4"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-static {v0, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v0

    move v5, v3

    .line 1005
    :goto_85
    array-length v6, v0

    if-ge v5, v6, :cond_91

    add-int/lit8 v6, v5, 0x12

    .line 1006
    aget-byte v7, v0, v5

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    :cond_91
    move/from16 v5, p10

    int-to-byte v0, v5

    .line 1008
    aput-byte v0, v1, v4

    move/from16 v0, p11

    .line 1009
    invoke-static {v0, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v0

    .line 1010
    :goto_9c
    array-length v2, v0

    if-ge v3, v2, :cond_a8

    add-int/lit8 v2, v3, 0x15

    .line 1011
    aget-byte v4, v0, v3

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :cond_a8
    const/16 v0, 0x17

    .line 1013
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public static setTargetShort(IIIIIIII)[B
    .registers 9

    const/16 p0, 0x12

    .line 945
    new-array p0, p0, [B

    const/4 p4, 0x7

    const/4 p6, 0x0

    .line 946
    aput-byte p4, p0, p6

    const/4 p4, 0x1

    const/16 v0, 0xe

    .line 947
    aput-byte v0, p0, p4

    const/4 p4, 0x2

    .line 948
    aput-byte p6, p0, p4

    const/4 p4, 0x3

    .line 949
    aput-byte p6, p0, p4

    const/4 v0, 0x4

    int-to-byte p1, p1

    .line 950
    aput-byte p1, p0, v0

    const/4 p1, 0x5

    int-to-byte p2, p2

    .line 951
    aput-byte p2, p0, p1

    .line 952
    invoke-static {p3, p4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    move p2, p6

    .line 953
    :goto_20
    array-length p3, p1

    if-ge p2, p3, :cond_2c

    add-int/lit8 p3, p2, 0x6

    .line 954
    aget-byte v0, p1, p2

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_2c
    const/16 p1, 0x9

    .line 956
    aput-byte p6, p0, p1

    .line 957
    invoke-static {p5, p4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    move p2, p6

    .line 958
    :goto_35
    array-length p3, p1

    if-ge p2, p3, :cond_41

    add-int/lit8 p3, p2, 0xa

    .line 959
    aget-byte p5, p1, p2

    aput-byte p5, p0, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    :cond_41
    const/16 p1, 0xd

    .line 961
    aput-byte p6, p0, p1

    .line 962
    invoke-static {p7, p4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p1

    .line 963
    :goto_49
    array-length p2, p1

    if-ge p6, p2, :cond_55

    add-int/lit8 p2, p6, 0xe

    .line 964
    aget-byte p3, p1, p6

    aput-byte p3, p0, p2

    add-int/lit8 p6, p6, 0x1

    goto :goto_49

    :cond_55
    const/16 p1, 0x11

    .line 966
    invoke-static {p0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p2

    aput-byte p2, p0, p1

    return-object p0
.end method

.method public static setTaskNumber(II)[B
    .registers 9

    const/16 v0, 0xa

    .line 2076
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2077
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/4 v3, 0x2

    .line 2078
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2079
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2080
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 2081
    aput-byte v6, v0, v4

    const/4 v4, 0x4

    .line 2082
    aput-byte v6, v0, v4

    const/4 v4, 0x5

    int-to-byte p1, p1

    .line 2083
    aput-byte p1, v0, v4

    .line 2084
    aput-byte v3, v0, v1

    .line 2085
    invoke-static {p0, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 p1, 0x7

    .line 2086
    aget-byte v1, p0, v2

    aput-byte v1, v0, p1

    const/16 p1, 0x8

    .line 2087
    aget-byte p0, p0, v6

    aput-byte p0, v0, p1

    const/16 p0, 0x9

    .line 2088
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setTempTest(II)[B
    .registers 8

    const/16 v0, 0x8

    .line 322
    new-array v0, v0, [B

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 323
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 324
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 325
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    .line 326
    aput-byte v3, v0, v5

    int-to-byte p0, p0

    .line 327
    aput-byte p0, v0, v3

    .line 328
    invoke-static {p1, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 p1, 0x5

    .line 329
    aget-byte v2, p0, v2

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    .line 330
    aget-byte p0, p0, v1

    aput-byte p0, v0, p1

    const/4 p0, 0x7

    .line 331
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setTheme(III)[B
    .registers 10

    const/16 v0, 0xc

    .line 1566
    new-array v0, v0, [B

    const/16 v1, 0x2d

    const/4 v2, 0x0

    .line 1567
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 1568
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1569
    aput-byte v2, v0, v4

    const/4 v5, 0x3

    .line 1570
    aput-byte v4, v0, v5

    int-to-byte p0, p0

    const/4 v6, 0x4

    .line 1571
    aput-byte p0, v0, v6

    const/4 p0, 0x5

    int-to-byte p1, p1

    .line 1572
    aput-byte p1, v0, p0

    const/4 p0, 0x6

    .line 1573
    aput-byte v2, v0, p0

    .line 1574
    invoke-static {p2, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/4 p1, 0x7

    .line 1575
    aget-byte p2, p0, v2

    aput-byte p2, v0, p1

    .line 1576
    aget-byte p1, p0, v1

    aput-byte p1, v0, v3

    const/16 p1, 0x9

    .line 1577
    aget-byte p2, p0, v4

    aput-byte p2, v0, p1

    const/16 p1, 0xa

    .line 1578
    aget-byte p0, p0, v5

    aput-byte p0, v0, p1

    const/16 p0, 0xb

    .line 1579
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setVibrate(Ljava/util/List;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SetVibrateBean;",
            ">;Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2761
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v0, 0x6

    new-array v2, v1, [B

    const/16 v3, 0x70

    const/4 v4, 0x0

    .line 2762
    aput-byte v3, v2, v4

    .line 2763
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bytes.length:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CalenderDataStruct"

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x2

    const/4 v5, 0x2

    .line 2764
    invoke-static {v1, v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v1

    .line 2765
    aget-byte v6, v1, v4

    const/4 v7, 0x1

    aput-byte v6, v2, v7

    .line 2766
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bytes[1]:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    aget-byte v1, v1, v7

    aput-byte v1, v2, v5

    const/4 v1, 0x3

    .line 2768
    aput-byte v7, v2, v1

    .line 2769
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v2, v3

    .line 2770
    :goto_52
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_b0

    mul-int/lit8 v1, v4, 0x6

    add-int/lit8 v5, v1, 0x5

    const/16 v6, 0xc

    .line 2771
    aput-byte v6, v2, v5

    const/4 v5, -0x1

    if-eqz p1, :cond_78

    add-int/lit8 v6, v1, 0x6

    .line 2773
    aput-byte v5, v2, v6

    add-int/lit8 v6, v1, 0x7

    .line 2774
    aput-byte v5, v2, v6

    add-int/lit8 v6, v1, 0x8

    .line 2775
    aput-byte v5, v2, v6

    add-int/lit8 v6, v1, 0x9

    .line 2776
    aput-byte v5, v2, v6

    add-int/lit8 v1, v1, 0xa

    .line 2777
    aput-byte v5, v2, v1

    goto :goto_ad

    :cond_78
    add-int/lit8 v6, v1, 0x6

    .line 2779
    aput-byte v3, v2, v6

    add-int/lit8 v6, v1, 0x7

    .line 2780
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getType()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v1, 0x8

    .line 2781
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getStyle()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v1, 0x9

    .line 2782
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/SetVibrateBean;->getVibrateStrong()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v1, v1, 0xa

    .line 2783
    aput-byte v5, v2, v1

    :goto_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_b0
    add-int/lit8 v0, v0, 0x5

    .line 2786
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v2, v0

    .line 2787
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setWater(IIIIIIII)[B
    .registers 16

    const/16 v0, 0x13

    .line 2992
    new-array v0, v0, [B

    const/16 v1, 0x70

    const/4 v2, 0x0

    .line 2993
    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/4 v3, 0x2

    .line 2994
    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2995
    aget-byte v5, v4, v2

    const/4 v6, 0x1

    aput-byte v5, v0, v6

    .line 2996
    aget-byte v4, v4, v6

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    .line 2997
    aput-byte v6, v0, v4

    const/4 v4, 0x4

    .line 2998
    aput-byte v6, v0, v4

    const/4 v4, 0x5

    const/16 v5, 0x11

    .line 2999
    aput-byte v5, v0, v4

    const/4 v4, 0x6

    const/16 v7, 0xb

    .line 3000
    aput-byte v7, v0, v4

    const/4 v4, 0x7

    int-to-byte p0, p0

    .line 3001
    aput-byte p0, v0, v4

    .line 3002
    invoke-static {p1, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/16 p1, 0x8

    .line 3003
    aget-byte v4, p0, v2

    aput-byte v4, v0, p1

    const/16 p1, 0x9

    .line 3004
    aget-byte p0, p0, v6

    aput-byte p0, v0, p1

    const/16 p0, 0xa

    int-to-byte p1, p2

    .line 3005
    aput-byte p1, v0, p0

    int-to-byte p0, p3

    .line 3006
    aput-byte p0, v0, v7

    const/16 p0, 0xc

    .line 3007
    aput-byte v6, v0, p0

    const/16 p0, 0xd

    int-to-byte p1, p4

    .line 3008
    aput-byte p1, v0, p0

    const/16 p0, 0xe

    int-to-byte p1, p5

    .line 3009
    aput-byte p1, v0, p0

    int-to-byte p0, p6

    .line 3010
    aput-byte p0, v0, v1

    .line 3011
    invoke-static {p7, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    const/16 p1, 0x10

    .line 3012
    aget-byte p2, p0, v2

    aput-byte p2, v0, p1

    .line 3013
    aget-byte p0, p0, v6

    aput-byte p0, v0, v5

    const/16 p0, 0x12

    .line 3014
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    .line 3015
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onSuccess: \u5220\u9664\u559d\u6c34 \u6dfb\u52a0\u559d\u6c34: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " --hour: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " --min: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " --second: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " -- "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {p1, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setWeather(IIIIIIII)[B
    .registers 14

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentTemp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddf6t"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    .line 837
    new-array v0, v0, [B

    const/16 v2, 0x25

    const/4 v3, 0x0

    .line 838
    aput-byte v2, v0, v3

    const/4 v2, 0x1

    const/16 v4, 0xb

    .line 839
    aput-byte v4, v0, v2

    const/4 v2, 0x2

    .line 840
    aput-byte v3, v0, v2

    const/4 v5, 0x3

    int-to-byte p0, p0

    .line 841
    aput-byte p0, v0, v5

    const/4 p0, 0x4

    int-to-byte p1, p1

    .line 842
    aput-byte p1, v0, p0

    const/4 p0, 0x5

    int-to-byte p1, p2

    .line 843
    aput-byte p1, v0, p0

    .line 844
    invoke-static {p3, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "currentTemps[]:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 846
    :goto_4c
    array-length p2, p0

    if-ge p1, p2, :cond_58

    add-int/lit8 p2, p1, 0x6

    .line 847
    aget-byte p3, p0, p1

    aput-byte p3, v0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    :cond_58
    const/16 p0, 0x8

    int-to-byte p1, p4

    .line 849
    aput-byte p1, v0, p0

    .line 850
    invoke-static {p5, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    move p1, v3

    .line 851
    :goto_62
    array-length p2, p0

    if-ge p1, p2, :cond_6e

    add-int/lit8 p2, p1, 0x9

    .line 852
    aget-byte p3, p0, p1

    aput-byte p3, v0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    :cond_6e
    int-to-byte p0, p6

    .line 854
    aput-byte p0, v0, v4

    .line 855
    invoke-static {p7, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object p0

    .line 856
    :goto_75
    array-length p1, p0

    if-ge v3, p1, :cond_81

    add-int/lit8 p1, v3, 0xc

    .line 857
    aget-byte p2, p0, v3

    aput-byte p2, v0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_81
    const/16 p0, 0xe

    .line 859
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setWeather(IILcom/keephealth/android/model/bean/WeatherNext;Lcom/keephealth/android/model/bean/WeatherNext;Lcom/keephealth/android/model/bean/WeatherNext;)[B
    .registers 10

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u5f53\u524dcurrentTemp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddf6t"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    .line 865
    new-array v0, v0, [B

    const/16 v1, 0x45

    const/4 v2, 0x0

    .line 866
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x10

    .line 867
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 868
    aput-byte v2, v0, v4

    const/4 v4, 0x3

    .line 869
    aput-byte v1, v0, v4

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 870
    aput-byte p0, v0, v1

    .line 871
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/WeatherNext;->getIconDay()I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    const/4 p0, 0x6

    int-to-byte p1, p1

    .line 872
    aput-byte p1, v0, p0

    .line 873
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_min()I

    move-result p0

    int-to-byte p0, p0

    const/4 p1, 0x7

    aput-byte p0, v0, p1

    .line 874
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_max()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0x8

    aput-byte p0, v0, p1

    .line 875
    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/WeatherNext;->getIconDay()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0x9

    aput-byte p0, v0, p1

    .line 876
    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_min()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0xa

    aput-byte p0, v0, p1

    .line 877
    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_max()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0xb

    aput-byte p0, v0, p1

    .line 878
    invoke-virtual {p4}, Lcom/keephealth/android/model/bean/WeatherNext;->getIconDay()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0xc

    aput-byte p0, v0, p1

    .line 879
    invoke-virtual {p4}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_min()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0xd

    aput-byte p0, v0, p1

    .line 880
    invoke-virtual {p4}, Lcom/keephealth/android/model/bean/WeatherNext;->getTemp_max()I

    move-result p0

    int-to-byte p0, p0

    const/16 p1, 0xe

    aput-byte p0, v0, p1

    const/16 p0, 0xf

    .line 881
    aput-byte v2, v0, p0

    .line 882
    aput-byte v2, v0, v3

    const/16 p0, 0x11

    .line 883
    aput-byte v2, v0, p0

    const/16 p0, 0x12

    .line 884
    aput-byte v2, v0, p0

    const/16 p0, 0x13

    .line 885
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p1

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static setWeather(Lcom/keephealth/android/model/bean/WeatherBean;)[B
    .registers 13

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 896
    iget-object v0, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/WeatherBean;

    iget v0, v0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherType:I

    .line 897
    iget-object v2, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WeatherBean;

    iget v2, v2, Lcom/keephealth/android/model/bean/WeatherBean;->currentTemp:I

    goto :goto_24

    :cond_22
    move v0, v1

    move v2, v0

    .line 899
    :goto_24
    iget-object v3, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_46

    .line 900
    iget-object v1, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/WeatherBean;

    iget v1, v1, Lcom/keephealth/android/model/bean/WeatherBean;->weatherType:I

    .line 901
    iget-object v3, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherBeans:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/WeatherBean;

    iget v3, v3, Lcom/keephealth/android/model/bean/WeatherBean;->currentTemp:I

    move v8, v0

    move v10, v1

    move v9, v2

    move v11, v3

    goto :goto_4f

    :cond_46
    move v8, v0

    move v10, v1

    move v11, v10

    move v9, v2

    goto :goto_4f

    :cond_4b
    move v8, v1

    move v9, v8

    move v10, v9

    move v11, v10

    .line 904
    :goto_4f
    iget v4, p0, Lcom/keephealth/android/model/bean/WeatherBean;->state:I

    iget v5, p0, Lcom/keephealth/android/model/bean/WeatherBean;->tempUnit:I

    iget v6, p0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherType:I

    iget v7, p0, Lcom/keephealth/android/model/bean/WeatherBean;->currentTemp:I

    invoke-static/range {v4 .. v11}, Lcom/keephealth/android/util/ble/CmdHelper;->setWeather(IIIIIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static setWomenTarget(ILjava/util/List;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;Z)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;",
            ">;",
            "Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;",
            "Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v0, 0x6

    new-array v1, v1, [B

    const/16 v2, 0x70

    const/4 v3, 0x0

    .line 2415
    aput-byte v2, v1, v3

    add-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    .line 2416
    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    .line 2417
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 2418
    aget-byte v2, v2, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x3

    .line 2419
    aput-byte v6, v1, v2

    move v2, v3

    .line 2420
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_11a

    add-int/lit8 v5, v2, 0x1

    int-to-byte v7, v5

    const/4 v8, 0x4

    .line 2421
    aput-byte v7, v1, v8

    mul-int/lit8 v7, v2, 0xf

    add-int/lit8 v8, v7, 0x5

    const/16 v9, 0x9

    .line 2422
    aput-byte v9, v1, v8

    if-eqz p3, :cond_74

    add-int/lit8 v2, v7, 0x6

    const/4 v8, -0x1

    .line 2425
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x7

    .line 2426
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x8

    .line 2427
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x9

    .line 2428
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xa

    .line 2429
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xb

    .line 2430
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xc

    .line 2431
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xd

    .line 2432
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xe

    .line 2433
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0xf

    .line 2434
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x10

    .line 2435
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x11

    .line 2436
    aput-byte v8, v1, v2

    add-int/lit8 v2, v7, 0x12

    .line 2437
    aput-byte v8, v1, v2

    add-int/lit8 v7, v7, 0x13

    .line 2438
    aput-byte v8, v1, v7

    goto/16 :goto_117

    :cond_74
    add-int/lit8 v8, v7, 0x6

    const/16 v9, 0xd

    .line 2440
    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0x7

    int-to-byte v9, p0

    .line 2441
    aput-byte v9, v1, v8

    .line 2442
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartYear()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v8

    add-int/lit8 v9, v7, 0x8

    .line 2443
    aget-byte v10, v8, v3

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0x9

    .line 2444
    aget-byte v8, v8, v6

    aput-byte v8, v1, v9

    add-int/lit8 v8, v7, 0xa

    .line 2445
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartMonth()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0xb

    .line 2446
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartDay()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 2447
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndYear()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v8

    add-int/lit8 v9, v7, 0xc

    .line 2448
    aget-byte v10, v8, v3

    aput-byte v10, v1, v9

    add-int/lit8 v9, v7, 0xd

    .line 2449
    aget-byte v8, v8, v6

    aput-byte v8, v1, v9

    add-int/lit8 v8, v7, 0xe

    .line 2450
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v9}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndMonth()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0xf

    .line 2451
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndDay()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 2452
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v2

    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    add-int/lit8 v8, v7, 0x10

    .line 2453
    aget-byte v9, v2, v3

    aput-byte v9, v1, v8

    add-int/lit8 v8, v7, 0x11

    .line 2454
    aget-byte v2, v2, v6

    aput-byte v2, v1, v8

    .line 2455
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-static {v2, v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v2

    add-int/lit8 v8, v7, 0x12

    .line 2456
    aget-byte v9, v2, v3

    aput-byte v9, v1, v8

    add-int/lit8 v7, v7, 0x13

    .line 2457
    aget-byte v2, v2, v6

    aput-byte v2, v1, v7

    :goto_117
    move v2, v5

    goto/16 :goto_23

    :cond_11a
    add-int/lit8 v0, v0, 0x5

    .line 2460
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v1, v0

    .line 2461
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setWomenTargetNew(ILjava/util/List;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;",
            ">;Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2467
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dura"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2468
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "perimeter"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 2469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    add-int/lit8 v3, v2, 0x6

    new-array v3, v3, [B

    const/16 v4, 0x70

    const/4 v5, 0x0

    .line 2470
    aput-byte v4, v3, v5

    add-int/lit8 v4, v2, 0x2

    const/4 v6, 0x2

    .line 2471
    invoke-static {v4, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    .line 2472
    aget-byte v7, v4, v5

    const/4 v8, 0x1

    aput-byte v7, v3, v8

    .line 2473
    aget-byte v4, v4, v8

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    .line 2474
    aput-byte v8, v3, v4

    move v4, v5

    .line 2475
    :goto_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_126

    add-int/lit8 v7, v4, 0x1

    int-to-byte v9, v7

    const/4 v10, 0x4

    .line 2476
    aput-byte v9, v3, v10

    mul-int/lit8 v9, v4, 0xf

    add-int/lit8 v10, v9, 0x5

    const/16 v11, 0x9

    .line 2477
    aput-byte v11, v3, v10

    if-eqz p2, :cond_88

    add-int/lit8 v4, v9, 0x6

    const/4 v10, -0x1

    .line 2480
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x7

    .line 2481
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x8

    .line 2482
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x9

    .line 2483
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xa

    .line 2484
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xb

    .line 2485
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xc

    .line 2486
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xd

    .line 2487
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xe

    .line 2488
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0xf

    .line 2489
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x10

    .line 2490
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x11

    .line 2491
    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x12

    .line 2492
    aput-byte v10, v3, v4

    add-int/lit8 v9, v9, 0x13

    .line 2493
    aput-byte v10, v3, v9

    goto/16 :goto_123

    :cond_88
    add-int/lit8 v10, v9, 0x6

    const/16 v11, 0xd

    .line 2495
    aput-byte v11, v3, v10

    add-int/lit8 v10, v9, 0x7

    int-to-byte v11, p0

    .line 2496
    aput-byte v11, v3, v10

    .line 2497
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartYear()J

    move-result-wide v10

    invoke-static {v10, v11, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v10

    add-int/lit8 v11, v9, 0x8

    .line 2498
    aget-byte v12, v10, v5

    aput-byte v12, v3, v11

    add-int/lit8 v11, v9, 0x9

    .line 2499
    aget-byte v10, v10, v8

    aput-byte v10, v3, v11

    add-int/lit8 v10, v9, 0xa

    .line 2500
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartMonth()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v10, v9, 0xb

    .line 2501
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartDay()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 2502
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndYear()J

    move-result-wide v10

    invoke-static {v10, v11, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(JI)[B

    move-result-object v10

    add-int/lit8 v11, v9, 0xc

    .line 2503
    aget-byte v12, v10, v5

    aput-byte v12, v3, v11

    add-int/lit8 v11, v9, 0xd

    .line 2504
    aget-byte v10, v10, v8

    aput-byte v10, v3, v11

    add-int/lit8 v10, v9, 0xe

    .line 2505
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndMonth()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v10, v9, 0xf

    .line 2506
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getEndDay()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    .line 2507
    invoke-static {v0, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    add-int/lit8 v10, v9, 0x10

    .line 2508
    aget-byte v11, v4, v5

    aput-byte v11, v3, v10

    add-int/lit8 v10, v9, 0x11

    .line 2509
    aget-byte v4, v4, v8

    aput-byte v4, v3, v10

    .line 2510
    invoke-static {v1, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v4

    add-int/lit8 v10, v9, 0x12

    .line 2511
    aget-byte v11, v4, v5

    aput-byte v11, v3, v10

    add-int/lit8 v9, v9, 0x13

    .line 2512
    aget-byte v4, v4, v8

    aput-byte v4, v3, v9

    :goto_123
    move v4, v7

    goto/16 :goto_37

    :cond_126
    add-int/lit8 v2, v2, 0x5

    .line 2515
    invoke-static {v3}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result p0

    aput-byte p0, v3, v2

    .line 2516
    invoke-static {v3}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sos()[B
    .registers 1

    const/16 v0, 0x14

    .line 1147
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static spliteData([B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    array-length v1, p0

    const/16 v2, 0x14

    div-int/2addr v1, v2

    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",model:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1520
    array-length v3, p0

    if-gt v3, v2, :cond_2e

    .line 1521
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 1523
    :cond_2e
    array-length v3, p0

    rem-int/2addr v3, v2

    if-lez v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    :cond_34
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_4e

    mul-int/lit8 v3, v2, 0x14

    add-int/lit8 v4, v3, 0x14

    .line 1528
    array-length v5, p0

    if-lt v4, v5, :cond_44

    .line 1529
    array-length v4, p0

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_48

    .line 1531
    :cond_44
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1533
    :goto_48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public static startSOS()[B
    .registers 1

    const/16 v0, 0x14

    .line 1209
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x4t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static voiceAdd()[B
    .registers 1

    const/16 v0, 0x14

    .line 1187
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static voiceSub()[B
    .registers 1

    const/16 v0, 0x14

    .line 1192
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x70t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
