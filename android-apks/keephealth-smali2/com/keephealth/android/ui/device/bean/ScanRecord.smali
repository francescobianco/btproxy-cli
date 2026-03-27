.class public Lcom/keephealth/android/ui/device/bean/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"

.field static final hexArray:[C


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 306
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->hexArray:[C

    .line 379
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 380
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 185
    iput-object p2, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 186
    iput-object p3, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 187
    iput-object p6, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 188
    iput p4, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mAdvertiseFlags:I

    .line 189
    iput p5, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mTxPowerLevel:I

    .line 190
    iput-object p7, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mBytes:[B

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 309
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 310
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 311
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    .line 312
    sget-object v5, Lcom/keephealth/android/ui/device/bean/ScanRecord;->hexArray:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 313
    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 315
    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static extractBytes([BII)[B
    .registers 5

    .line 334
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 335
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseFromBytes([B)Lcom/keephealth/android/ui/device/bean/ScanRecord;
    .registers 16

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 210
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 215
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    move-object v8, v0

    move v6, v3

    move v7, v4

    .line 218
    :goto_1a
    :try_start_1a
    array-length v3, p0

    if-ge v2, v3, :cond_89

    add-int/lit8 v3, v2, 0x1

    .line 220
    aget-byte v4, p0, v2

    const/16 v9, 0xff

    and-int/2addr v4, v9

    if-nez v4, :cond_27

    goto :goto_89

    :cond_27
    add-int/lit8 v11, v4, -0x1

    add-int/lit8 v12, v2, 0x2

    .line 227
    aget-byte v3, p0, v3

    and-int/2addr v3, v9

    const/16 v13, 0x16

    const/16 v14, 0x10

    if-eq v3, v13, :cond_73

    if-eq v3, v9, :cond_5c

    packed-switch v3, :pswitch_data_aa

    goto :goto_86

    .line 253
    :pswitch_3a
    aget-byte v7, p0, v12

    goto :goto_86

    .line 249
    :pswitch_3d
    new-instance v8, Ljava/lang/String;

    .line 250
    invoke-static {p0, v12, v11}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_86

    :pswitch_47
    const/16 v2, 0x80

    .line 244
    invoke-static {p0, v12, v11, v2, v1}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_86

    :pswitch_4d
    const/16 v2, 0x20

    .line 239
    invoke-static {p0, v12, v11, v2, v1}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_86

    .line 234
    :pswitch_53
    invoke-static {p0, v12, v11, v14, v1}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_86

    .line 230
    :pswitch_57
    aget-byte v2, p0, v12

    and-int/lit16 v6, v2, 0xff

    goto :goto_86

    :cond_5c
    add-int/lit8 v3, v2, 0x3

    .line 270
    aget-byte v3, p0, v3

    and-int/2addr v3, v9

    shl-int/lit8 v3, v3, 0x8

    aget-byte v13, p0, v12

    and-int/2addr v9, v13

    add-int/2addr v3, v9

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v4, -0x3

    .line 272
    invoke-static {p0, v2, v4}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    .line 274
    invoke-virtual {v10, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_86

    .line 259
    :cond_73
    invoke-static {p0, v12, v14}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    .line 261
    invoke-static {v3}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v3

    add-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, v4, -0x11

    .line 263
    invoke-static {p0, v2, v4}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    .line 265
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_86
    add-int v2, v12, v11

    goto :goto_1a

    .line 283
    :cond_89
    :goto_89
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_91

    move-object v3, v0

    goto :goto_92

    :cond_91
    move-object v3, v1

    .line 286
    :goto_92
    new-instance v0, Lcom/keephealth/android/ui/device/bean/ScanRecord;

    move-object v2, v0

    move-object v4, v10

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/ui/device/bean/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9a} :catch_9b

    return-object v0

    .line 291
    :catch_9b
    new-instance v0, Lcom/keephealth/android/ui/device/bean/ScanRecord;

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v0

    move-object v4, v10

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/ui/device/bean/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_57
        :pswitch_53
        :pswitch_53
        :pswitch_4d
        :pswitch_4d
        :pswitch_47
        :pswitch_47
        :pswitch_3d
        :pswitch_3d
        :pswitch_3a
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_10

    .line 322
    invoke-static {p0, p1, p3}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_10
    return p1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .registers 9

    if-eqz p0, :cond_95

    .line 348
    array-length v0, p0

    const/16 v1, 0x20

    const/16 v2, 0x80

    const/16 v3, 0x10

    if-eq v0, v3, :cond_25

    if-eq v0, v1, :cond_25

    if-ne v0, v2, :cond_10

    goto :goto_25

    .line 351
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uuidBytes length invalid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v0, v2, :cond_47

    .line 356
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 357
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 358
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 359
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    :cond_47
    const/4 v2, 0x1

    if-ne v0, v3, :cond_57

    .line 366
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    .line 367
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v5

    int-to-long v5, p0

    add-long/2addr v3, v5

    goto :goto_75

    .line 369
    :cond_57
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    .line 370
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v5

    int-to-long v4, v0

    add-long/2addr v6, v4

    const/4 v0, 0x2

    .line 371
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    int-to-long v2, v0

    add-long/2addr v6, v2

    const/4 v0, 0x3

    .line 372
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    int-to-long v2, p0

    add-long v3, v6, v2

    .line 374
    :goto_75
    sget-object p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    shl-long v0, v3, v1

    add-long/2addr v5, v0

    .line 375
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 376
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v5, v6, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    .line 346
    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuidBytes cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 25
    const-string p0, "null"

    return-object p0

    .line 27
    :cond_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 28
    const-string p0, "{}"

    return-object p0

    .line 30
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 32
    :goto_16
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 33
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_3a
    const/16 p0, 0x7d

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 45
    const-string p0, "null"

    return-object p0

    .line 47
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    const-string p0, "{}"

    return-object p0

    .line 50
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 58
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_50
    const/16 p0, 0x7d

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 298
    invoke-static {v1}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 299
    invoke-static {v1}, Lcom/keephealth/android/ui/device/bean/ScanRecord;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/bean/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
