.class public Lcom/keephealth/android/util/telinkota/OtaSignParser;
.super Ljava/lang/Object;
.source "OtaSignParser.java"


# static fields
.field private static final OP_SIGN_END:I = 0xff17

.field private static final OP_SIGN_START:I = 0xff10


# instance fields
.field private data:[B

.field private index:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 36
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->total:I

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->data:[B

    return-void
.end method

.method public crc16([B)I
    .registers 11

    .line 125
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 126
    new-array v1, v1, [S

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    const v3, 0xffff

    move v4, v2

    move v5, v3

    :goto_e
    if-ge v4, v0, :cond_28

    .line 132
    aget-byte v6, p1, v4

    move v7, v2

    :goto_13
    const/16 v8, 0x8

    if-ge v7, v8, :cond_25

    shr-int/lit8 v8, v5, 0x1

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    .line 135
    aget-short v5, v1, v5

    and-int/2addr v5, v3

    xor-int/2addr v5, v8

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_28
    return v5

    nop

    :array_2a
    .array-data 2
        0x0s
        -0x5fffs
    .end array-data
.end method

.method public fillCrc([BI)V
    .registers 6

    .line 118
    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 119
    aput-byte v2, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 120
    aput-byte p2, p1, v0

    return-void
.end method

.method public fillIndex([BI)V
    .registers 5

    const v0, 0xff10

    add-int/2addr p2, v0

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 113
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 114
    aput-byte p2, p1, v0

    return-void
.end method

.method public getIndex()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    return v0
.end method

.method public getNextPacket()[B
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->getNextPacketIndex()I

    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->getPacket(I)[B

    move-result-object v1

    .line 65
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    return-object v1
.end method

.method public getNextPacketIndex()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPacket(I)[B
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_12

    add-int/lit8 v2, p1, 0x1

    .line 77
    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->total:I

    if-ne v2, v3, :cond_11

    mul-int/lit8 v2, p1, 0x10

    sub-int/2addr v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    if-ne v0, v1, :cond_17

    const/16 v1, 0x14

    goto :goto_36

    .line 91
    :cond_17
    rem-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_1d

    move v2, v0

    goto :goto_22

    :cond_1d
    div-int/lit8 v2, v0, 0x10

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v1

    :goto_22
    add-int/lit8 v1, v2, 0x4

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 97
    :goto_36
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v1, :cond_41

    const/4 v4, -0x1

    .line 99
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 101
    :cond_41
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->data:[B

    mul-int/lit8 v3, p1, 0x10

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-virtual {p0, v2, p1}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->fillIndex([BI)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->crc16([B)I

    move-result v0

    .line 105
    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->fillCrc([BI)V

    .line 106
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "sign packet ---> index : %d  total : %d crc : %04X content : %s"

    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    return-object v2
.end method

.method public hasNextPacket()Z
    .registers 4

    .line 51
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->total:I

    if-lez v0, :cond_b

    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2
.end method

.method public isLast()Z
    .registers 4

    .line 55
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->total:I

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public set([B[B)V
    .registers 5

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaSignParser;->clear()V

    .line 42
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaSignParser;->data:[B

    return-void
.end method
