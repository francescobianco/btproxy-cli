.class public Lcom/keephealth/android/util/BaseCmdUtil;
.super Ljava/lang/Object;
.source "BaseCmdUtil.java"


# static fields
.field public static final BYTE_LEN_TOTAL:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy([B[B)V
    .registers 5

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 15
    array-length v0, p0

    .line 16
    array-length v1, p1

    if-ge v0, v1, :cond_9

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_14

    .line 20
    aget-byte v2, p0, v1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    return-void
.end method

.method public static copyByte([B)[B
    .registers 5

    if-eqz p0, :cond_10

    .line 26
    array-length v0, p0

    .line 27
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_f

    .line 29
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    return-object v1

    :cond_10
    const/16 p0, 0x14

    .line 33
    new-array p0, p0, [B

    return-object p0
.end method

.method public static createCmd(BBB)[B
    .registers 5

    .line 56
    invoke-static {}, Lcom/keephealth/android/util/BaseCmdUtil;->createNullCmd()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    aput-byte p0, v0, v1

    const/4 p0, 0x1

    .line 58
    aput-byte p1, v0, p0

    const/4 p0, 0x2

    .line 59
    aput-byte p2, v0, p0

    return-object v0
.end method

.method public static createCmd(BB[B)[B
    .registers 7

    .line 37
    invoke-static {}, Lcom/keephealth/android/util/BaseCmdUtil;->createNullCmd()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    aput-byte p0, v0, v1

    const/4 p0, 0x1

    .line 39
    aput-byte p1, v0, p0

    .line 42
    array-length p0, p2

    const/4 p1, 0x2

    :goto_c
    if-ge v1, p0, :cond_1d

    .line 45
    aget-byte v2, p2, v1

    add-int/lit8 v3, p1, 0x1

    .line 46
    aput-byte v2, v0, p1

    const/16 p1, 0x14

    if-lt v3, p1, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_c

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method private static createNullCmd()[B
    .registers 4

    const/16 v0, 0x14

    .line 64
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 67
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-object v1
.end method

.method public static getCmdId([B)B
    .registers 2

    const/4 v0, 0x0

    .line 74
    aget-byte p0, p0, v0

    return p0
.end method

.method public static getCmdKey([B)B
    .registers 3

    if-eqz p0, :cond_b

    .line 79
    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    .line 80
    aget-byte p0, p0, v0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public static isHealthCmd([B)Z
    .registers 2

    .line 10
    invoke-static {p0}, Lcom/keephealth/android/util/BaseCmdUtil;->getCmdId([B)B

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
