.class public final Lcom/keephealth/android/util/ota/MArrays;
.super Ljava/lang/Object;
.source "MArrays.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([BLjava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_48

    .line 123
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_48

    .line 125
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    .line 127
    aget-byte v2, p0, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02X"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v2, 0x1

    .line 128
    :goto_21
    array-length v4, p0

    if-ge v2, v4, :cond_3d

    .line 129
    invoke-static {p1}, Lcom/keephealth/android/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2d
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 133
    :cond_3d
    invoke-virtual {v1}, Ljava/util/Formatter;->flush()V

    .line 134
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_48
    :goto_48
    const-string p0, ""

    return-object p0
.end method

.method public static bytesToInt([BI)I
    .registers 4

    .line 151
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 153
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

    .line 93
    const-string p0, "null"

    return-object p0

    .line 96
    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    .line 97
    const-string p0, "[]"

    return-object p0

    .line 100
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 102
    aget-byte v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 103
    :goto_1f
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 104
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    const/16 p0, 0x5d

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
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

    .line 112
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

    .line 77
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_e

    goto :goto_1d

    :cond_e
    move v2, v1

    .line 81
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_1c

    .line 82
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

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 143
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_35

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 145
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

    .line 33
    :cond_4
    array-length v0, p0

    .line 34
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 37
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

    .line 54
    aget-byte v0, p0, p2

    .line 55
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 56
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_f
    return-object p0
.end method
