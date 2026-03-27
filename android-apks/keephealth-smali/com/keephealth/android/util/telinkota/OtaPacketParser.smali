.class public Lcom/keephealth/android/util/telinkota/OtaPacketParser;
.super Ljava/lang/Object;
.source "OtaPacketParser.java"


# instance fields
.field private data:[B

.field private index:I

.field private pduLength:I

.field private progress:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    const/16 v0, 0x10

    .line 37
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->pduLength:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->progress:I

    .line 53
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->data:[B

    return-void
.end method

.method public crc16([B)I
    .registers 11

    .line 154
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 155
    new-array v1, v1, [S

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    const v3, 0xffff

    move v4, v2

    move v5, v3

    :goto_e
    if-ge v4, v0, :cond_28

    .line 161
    aget-byte v6, p1, v4

    move v7, v2

    :goto_13
    const/16 v8, 0x8

    if-ge v7, v8, :cond_25

    shr-int/lit8 v8, v5, 0x1

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    .line 164
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

    .line 147
    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 148
    aput-byte v2, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 149
    aput-byte p2, p1, v0

    return-void
.end method

.method public fillIndex([BI)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 142
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 143
    aput-byte p2, p1, v0

    return-void
.end method

.method public getCheckPacket()[B
    .registers 6

    const/16 v0, 0x10

    .line 127
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_d

    const/4 v3, -0x1

    .line 129
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 132
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    .line 133
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->fillIndex([BI)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->crc16([B)I

    move-result v2

    .line 135
    invoke-virtual {p0, v1, v2}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->fillCrc([BI)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ota check packet ---> index : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " crc : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " content : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    return-object v1
.end method

.method public getFirmwareVersion()[B
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v1, 0x4

    .line 60
    new-array v2, v1, [B

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 61
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getIndex()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    return v0
.end method

.method public getNextPacket()[B
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getPacket(I)[B

    move-result-object v1

    .line 82
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    return-object v1
.end method

.method public getNextPacketIndex()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPacket(I)[B
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->data:[B

    array-length v0, v0

    .line 92
    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->pduLength:I

    if-le v0, v1, :cond_12

    add-int/lit8 v2, p1, 0x1

    .line 93
    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    if-ne v2, v3, :cond_11

    mul-int v2, p1, v1

    sub-int/2addr v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    if-ne v0, v1, :cond_17

    add-int/lit8 v1, v1, 0x4

    goto :goto_37

    .line 107
    :cond_17
    rem-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_23

    :cond_1d
    div-int/lit8 v1, v0, 0x10

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x10

    :goto_23
    add-int/lit8 v1, v1, 0x4

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 113
    :goto_37
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v1, :cond_42

    const/4 v4, -0x1

    .line 115
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 117
    :cond_42
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->data:[B

    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->pduLength:I

    mul-int/2addr v3, p1

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-virtual {p0, v2, p1}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->fillIndex([BI)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->crc16([B)I

    move-result v0

    .line 121
    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->fillCrc([BI)V

    .line 122
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v3, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ota packet ---> index : %d  total : %d crc : %04X content : %s"

    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    return-object v2
.end method

.method public getProgress()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->progress:I

    return v0
.end method

.method public hasNextPacket()Z
    .registers 4

    .line 67
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    if-lez v0, :cond_b

    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2
.end method

.method public invalidateProgress()Z
    .registers 5

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    int-to-float v0, v0

    .line 175
    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    int-to-float v1, v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalidate progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 179
    iget v1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->progress:I

    if-ne v0, v1, :cond_34

    const/4 v0, 0x0

    return v0

    .line 182
    :cond_34
    iput v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->progress:I

    const/4 v0, 0x1

    return v0
.end method

.method public isLast()Z
    .registers 4

    .line 71
    iget v0, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public set([BI)V
    .registers 4

    .line 40
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->clear()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->data:[B

    .line 42
    iput p2, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->pduLength:I

    .line 43
    array-length p1, p1

    .line 44
    rem-int v0, p1, p2

    if-nez v0, :cond_10

    .line 45
    div-int/2addr p1, p2

    iput p1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    goto :goto_1e

    :cond_10
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/util/telinkota/OtaPacketParser;->total:I

    :goto_1e
    return-void
.end method
