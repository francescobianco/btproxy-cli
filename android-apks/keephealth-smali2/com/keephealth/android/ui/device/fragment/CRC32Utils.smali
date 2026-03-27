.class public Lcom/keephealth/android/ui/device/fragment/CRC32Utils;
.super Ljava/lang/Object;
.source "CRC32Utils.java"


# static fields
.field private static final CRC32_TABLE:[I

.field private static final s_crc32:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 12
    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->CRC32_TABLE:[I

    .line 27
    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->s_crc32:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1db71064
        0x3b6e20c8
        0x26d930ac
        0x76dc4190
        0x6b6b51f4
        0x4db26158
        0x5005713c
        -0x12477ce0
        -0xff06cbc
        -0x29295c18    # -1.1799973E14f
        -0x349e4c74    # -1.4791564E7f
        -0x649b3d50
        -0x792c2d2c
        -0x5ff51d88
        -0x42420de4
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x1db71064
        0x3b6e20c8
        0x26d930ac
        0x76dc4190
        0x6b6b51f4
        0x4db26158
        0x5005713c
        -0x12477ce0
        -0xff06cbc
        -0x29295c18    # -1.1799973E14f
        -0x349e4c74    # -1.4791564E7f
        -0x649b3d50
        -0x792c2d2c
        -0x5ff51d88
        -0x42420de4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCRC32(I[B)J
    .registers 15

    .line 44
    array-length p0, p1

    const-wide v0, 0xffffffffL

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p0, :cond_2d

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    const/4 v5, 0x4

    shr-long v6, v0, v5

    .line 46
    sget-object v8, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->s_crc32:[I

    const-wide/16 v9, 0xf

    and-long/2addr v0, v9

    and-int/lit8 v3, v3, 0xf

    int-to-long v11, v3

    xor-long/2addr v0, v11

    long-to-int v0, v0

    aget v0, v8, v0

    int-to-long v0, v0

    xor-long/2addr v0, v6

    shr-long v6, v0, v5

    and-long/2addr v0, v9

    shr-int/lit8 v3, v4, 0x4

    int-to-long v3, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    .line 47
    aget v0, v8, v0

    int-to-long v0, v0

    xor-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    not-long p0, v0

    return-wide p0
.end method

.method public static calculateCRC32([B)J
    .registers 16

    .line 33
    array-length v0, p0

    const-wide v1, 0xffffffffL

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_8
    if-ge v3, v0, :cond_2d

    aget-byte v6, p0, v3

    const/4 v7, 0x4

    shr-long v8, v4, v7

    .line 34
    sget-object v10, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->s_crc32:[I

    const-wide/16 v11, 0xf

    and-long/2addr v4, v11

    and-int/lit8 v13, v6, 0xf

    int-to-long v13, v13

    xor-long/2addr v4, v13

    long-to-int v4, v4

    aget v4, v10, v4

    int-to-long v4, v4

    xor-long/2addr v4, v8

    shr-long v8, v4, v7

    and-long/2addr v4, v11

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    int-to-long v6, v6

    xor-long/2addr v4, v6

    long-to-int v4, v4

    .line 35
    aget v4, v10, v4

    int-to-long v4, v4

    xor-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2d
    xor-long v0, v4, v1

    return-wide v0
.end method

.method public static utilsCrc32(I[B)I
    .registers 7

    not-int p0, p0

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_22

    aget-byte v2, p1, v1

    and-int/lit8 v3, p0, 0xf

    and-int/lit8 v4, v2, 0xf

    xor-int/2addr v3, v4

    shr-int/lit8 p0, p0, 0x4

    .line 19
    sget-object v4, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->CRC32_TABLE:[I

    aget v3, v4, v3

    xor-int/2addr p0, v3

    and-int/lit8 v3, p0, 0xf

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    xor-int/2addr v2, v3

    shr-int/lit8 p0, p0, 0x4

    .line 21
    aget v2, v4, v2

    xor-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    not-int p0, p0

    return p0
.end method
