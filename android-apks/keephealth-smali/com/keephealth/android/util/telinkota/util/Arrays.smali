.class public final Lcom/keephealth/android/util/telinkota/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field public static final HEX_BASIC:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/util/Arrays;->HEX_BASIC:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2Integer([BIILjava/nio/ByteOrder;)I
    .registers 8

    const/4 v0, 0x4

    .line 196
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v0, p2, :cond_2c

    .line 198
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v2, :cond_18

    add-int v2, v0, p1

    .line 199
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    :goto_15
    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_29

    .line 200
    :cond_18
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v2, :cond_29

    add-int v2, v0, p1

    .line 201
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    goto :goto_15

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2c
    return v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHexString([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_3f

    .line 139
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3f

    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    move v1, v0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    .line 144
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    :goto_18
    array-length v3, p0

    if-ge v0, v3, :cond_3a

    .line 147
    aget-byte v3, p0, v0

    and-int/lit16 v4, v3, 0xff

    if-eqz v0, :cond_26

    if-nez v1, :cond_26

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_26
    sget-object v5, Lcom/keephealth/android/util/telinkota/util/Arrays;->HEX_BASIC:[C

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 153
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_3f
    :goto_3f
    const-string p0, ""

    return-object p0
.end method

.method public static bytesToInt([BI)I
    .registers 4

    .line 177
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_6
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 108
    const-string p0, "null"

    return-object p0

    .line 111
    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    .line 112
    const-string p0, "[]"

    return-object p0

    .line 115
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 117
    aget-byte v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 118
    :goto_1f
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 119
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    const/16 p0, 0x5d

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static equals([B[B)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 92
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_e

    goto :goto_1d

    :cond_e
    move v2, v1

    .line 96
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_1c

    .line 97
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 6

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 162
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_35

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 165
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_35
    return-object v1
.end method

.method public static reverse([B)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    array-length v0, p0

    .line 49
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 52
    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    move v2, v3

    goto :goto_8

    :cond_14
    return-object v1
.end method

.method public static reverse([BII)[B
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_f

    .line 69
    aget-byte v0, p0, p2

    .line 70
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 71
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_f
    return-object p0
.end method
