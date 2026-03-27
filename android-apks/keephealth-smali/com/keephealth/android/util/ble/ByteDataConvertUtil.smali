.class public Lcom/keephealth/android/util/ble/ByteDataConvertUtil;
.super Ljava/lang/Object;
.source "ByteDataConvertUtil.java"


# static fields
.field private static CHAR_ENCODE:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BinToInt([BII)I
    .registers 5

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_3
    if-ltz p2, :cond_11

    shl-int/lit8 v0, v0, 0x8

    .line 171
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method public static BinToLong([BII)J
    .registers 7

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v0, 0x0

    :goto_4
    if-ltz p2, :cond_14

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 161
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_14
    return-wide v0
.end method

.method public static BinnCat([BBII)V
    .registers 5

    add-int/2addr p3, p2

    const/4 p1, 0x0

    :goto_2
    if-ge p2, p3, :cond_b

    .line 90
    aget-byte v0, p0, p1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public static BinnCat([B[BII)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_c

    .line 98
    aget-byte v1, p0, p2

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public static Bit8Array2Int([B)I
    .registers 6

    .line 294
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_5
    if-ltz v2, :cond_10

    .line 297
    aget-byte v3, p0, v2

    sub-int v4, v0, v2

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_10
    return v1
.end method

.method public static BitToByte([B)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 306
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 307
    aget-byte v2, p0, v0

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return v1
.end method

.method public static Byte2Int(B)I
    .registers 1

    if-ltz p0, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit16 p0, p0, 0x100

    :goto_5
    return p0
.end method

.method public static Int2Bit8(I)[B
    .registers 4

    int-to-byte p0, p0

    const/16 v0, 0x8

    .line 283
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x7

    if-gt v1, v2, :cond_14

    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    .line 285
    aput-byte v2, v0, v1

    shr-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return-object v0
.end method

.method public static Int2Byte(I)B
    .registers 1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static IntToBin(II)[B
    .registers 5

    .line 122
    new-array v0, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_5
    if-ltz p1, :cond_13

    mul-int/lit8 v2, p1, 0x8

    shr-int v2, p0, v2

    int-to-byte v2, v2

    .line 125
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method public static IntToBin(I[BII)[B
    .registers 5

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_10

    mul-int/lit8 v0, p3, 0x8

    shr-int v0, p0, v0

    int-to-byte v0, v0

    .line 150
    aput-byte v0, p1, p2

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_10
    return-object p1
.end method

.method public static IntToBinReverseArray(II)[B
    .registers 5

    .line 131
    invoke-static {p0, p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBin(II)[B

    move-result-object p0

    .line 132
    array-length p1, p0

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_15

    .line 134
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    return-object v0
.end method

.method public static IntToBinReverseArray(JI)[B
    .registers 5

    .line 139
    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->LongToBin(JI)[B

    move-result-object p0

    .line 140
    array-length p1, p0

    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_15

    .line 142
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    aget-byte v1, p0, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-object p2
.end method

.method public static LongToBin(J[BII)V
    .registers 7

    add-int/lit8 p4, p4, -0x1

    :goto_2
    if-ltz p4, :cond_11

    mul-int/lit8 v0, p4, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 116
    aput-byte v0, p2, p3

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public static LongToBin(JI)[B
    .registers 7

    .line 104
    new-array v0, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    :goto_5
    if-ltz p2, :cond_14

    mul-int/lit8 v2, p2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 107
    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return-object v0
.end method

.method public static StringToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    if-eqz p0, :cond_14

    .line 326
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_14

    .line 331
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_1d

    :cond_14
    :goto_14
    const/4 p0, 0x0

    .line 327
    new-array p0, p0, [B
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public static byteMerger([B[B)[B
    .registers 5

    .line 316
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 317
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 7

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_31

    .line 203
    array-length v1, p0

    if-lez v1, :cond_31

    const/4 v1, 0x0

    move v2, v1

    .line 204
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    .line 205
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_21

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 214
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytesToHexString2([B)Ljava/lang/String;
    .registers 7

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2c

    .line 62
    array-length v1, p0

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    move v2, v1

    .line 63
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 64
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_21

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 71
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytesToHexStringNo([B)Ljava/lang/String;
    .registers 7

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2c

    .line 222
    array-length v1, p0

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    move v2, v1

    .line 223
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 224
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_21

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 232
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytesToHexStrings([B)[Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_30

    .line 239
    array-length v0, p0

    if-lez v0, :cond_30

    .line 240
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 242
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 243
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_2a
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2f
    return-object v0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytesToInt([B)I
    .registers 7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_23

    .line 29
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1d

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    :cond_1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 37
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^0-9A-Fa-f]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    .line 39
    :try_start_31
    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_39} :catch_3a

    return p0

    :catch_3a
    return v2
.end method

.method public static bytesToLong([B)J
    .registers 6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_23

    .line 48
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1d

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 55
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bytetoString([B)Ljava/lang/String;
    .registers 3

    .line 343
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->CHAR_ENCODE:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception p0

    .line 345
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    :goto_e
    return-object v0
.end method

.method private converts(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 472
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1b

    add-int/lit8 v2, v1, 0x2

    .line 473
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_6

    :cond_1b
    return-object v0
.end method

.method public static getBytesByFilePath(Ljava/lang/String;)[B
    .registers 5

    .line 359
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 361
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x3e8

    .line 362
    new-array v0, v0, [B

    .line 365
    :goto_18
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_24

    const/4 v3, 0x0

    .line 366
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18

    .line 369
    :cond_24
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 370
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 371
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2e} :catch_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :catch_34
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_38
    const/4 p0, 0x0

    :goto_39
    return-object p0
.end method

.method public static getJsonByte(Ljava/lang/String;)[B
    .registers 2

    .line 352
    sget-object v0, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->CHAR_ENCODE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->StringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMacBytes(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x6

    .line 178
    new-array v0, v0, [B

    .line 179
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 181
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 182
    aget-object v2, p0, v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    .line 183
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    return-object v0
.end method

.method public static getStrBytes([BII)Ljava/lang/String;
    .registers 8

    .line 190
    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_7
    const-string v0, ""

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p2, :cond_34

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_34
    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 480
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    .line 482
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 483
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method public static i2b(I)B
    .registers 2

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static intTo4ByteHexArray(J)[B
    .registers 9

    const/4 v0, 0x4

    .line 402
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_14

    mul-int/lit8 v3, v2, 0x8

    shr-long v3, p0, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 404
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-object v1
.end method

.method public static intToBinaryArray(II)[I
    .registers 7

    .line 461
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_12

    const/4 v3, 0x1

    shl-int v4, v3, v2

    and-int/2addr v4, p0

    if-nez v4, :cond_d

    move v3, v1

    .line 463
    :cond_d
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static intToByteArray(I)[B
    .registers 3

    const/4 v0, 0x4

    .line 426
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 428
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 430
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 434
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static intToByteArray2(I)[B
    .registers 3

    const/4 v0, 0x4

    .line 411
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 413
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 417
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 421
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static invertArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 257
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 259
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 260
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :goto_14
    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_2d

    .line 263
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 264
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 265
    invoke-static {v1, v3, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    return-object v1
.end method

.method public static replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 442
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    .line 445
    const-string v2, ""

    if-eq p1, v1, :cond_18

    const/4 v1, 0x0

    add-int/2addr p1, v0

    .line 446
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v2

    :goto_19
    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    .line 449
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 451
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveByteArrayToFile([BLjava/lang/String;)V
    .registers 4

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 384
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1d
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    .line 385
    :try_start_b
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 386
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_18
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 392
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_27

    goto :goto_2b

    :catchall_15
    move-exception p0

    move-object p1, v1

    goto :goto_2c

    :catch_18
    move-exception p0

    move-object p1, v1

    goto :goto_1e

    :catchall_1b
    move-exception p0

    goto :goto_2c

    :catch_1d
    move-exception p0

    .line 388
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    if-eqz p1, :cond_2b

    .line 392
    :try_start_23
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void

    :goto_2c
    if-eqz p1, :cond_36

    .line 392
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 394
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 397
    :cond_36
    :goto_36
    throw p0
.end method

.method public static toRevInt([BII)I
    .registers 6

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v0, p2, :cond_13

    shl-int/lit8 v1, v1, 0x8

    .line 275
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_13
    return v1
.end method
