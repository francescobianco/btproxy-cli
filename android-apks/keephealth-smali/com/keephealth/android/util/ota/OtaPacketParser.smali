.class public Lcom/keephealth/android/util/ota/OtaPacketParser;
.super Ljava/lang/Object;
.source "OtaPacketParser.java"


# instance fields
.field private data:[B

.field private index:I

.field private pduLength:I

.field private progress2:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    const/16 v0, 0x10

    .line 12
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->pduLength:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->progress2:I

    .line 29
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->data:[B

    return-void
.end method

.method public crc16([B)I
    .registers 11

    .line 111
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 112
    new-array v1, v1, [S

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    const v3, 0xffff

    move v4, v2

    move v5, v3

    :goto_e
    if-ge v4, v0, :cond_28

    .line 118
    aget-byte v6, p1, v4

    move v7, v2

    :goto_13
    const/16 v8, 0x8

    if-ge v7, v8, :cond_25

    shr-int/lit8 v8, v5, 0x1

    xor-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    .line 121
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

    .line 104
    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 105
    aput-byte v2, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 106
    aput-byte p2, p1, v0

    return-void
.end method

.method public fillIndex([BI)V
    .registers 5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 99
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 100
    aput-byte p2, p1, v0

    return-void
.end method

.method public getCheckPacket()[B
    .registers 5

    const/16 v0, 0x10

    .line 85
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_d

    const/4 v3, -0x1

    .line 87
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 90
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->fillIndex([BI)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->crc16([B)I

    move-result v0

    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->fillCrc([BI)V

    return-object v1
.end method

.method public getIndex()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    return v0
.end method

.method public getNextPacket()[B
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getPacket(I)[B

    move-result-object v1

    .line 50
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    return-object v1
.end method

.method public getNextPacketIndex()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPacket(I)[B
    .registers 7

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_12

    add-int/lit8 v2, p1, 0x1

    .line 62
    iget v3, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    if-ne v2, v3, :cond_11

    mul-int/lit8 v1, p1, 0x10

    sub-int/2addr v0, v1

    goto :goto_12

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    const/16 v1, 0x14

    .line 72
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_1f

    const/4 v4, -0x1

    .line 74
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 76
    :cond_1f
    iget-object v1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->data:[B

    mul-int/lit8 v3, p1, 0x10

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-virtual {p0, v2, p1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->fillIndex([BI)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/ota/OtaPacketParser;->crc16([B)I

    move-result p1

    .line 80
    invoke-virtual {p0, v2, p1}, Lcom/keephealth/android/util/ota/OtaPacketParser;->fillCrc([BI)V

    return-object v2
.end method

.method public getProgress()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->progress2:I

    return v0
.end method

.method public hasNextPacket()Z
    .registers 4

    .line 35
    iget v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    if-lez v0, :cond_b

    iget v1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

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
    .registers 4

    .line 131
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    int-to-float v0, v0

    .line 132
    iget v1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   progress2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->progress2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtrtu5"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->progress2:I

    const/4 v0, 0x1

    return v0
.end method

.method public isLast()Z
    .registers 4

    .line 39
    iget v0, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public set([B)V
    .registers 4

    .line 14
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/OtaPacketParser;->clear()V

    .line 16
    iput-object p1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->data:[B

    .line 17
    array-length p1, p1

    .line 20
    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_f

    .line 21
    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    goto :goto_1b

    .line 23
    :cond_f
    div-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/keephealth/android/util/ota/OtaPacketParser;->total:I

    :goto_1b
    return-void
.end method
