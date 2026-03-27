.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 55
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 61
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 65
    :cond_25
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-lt v2, v0, :cond_2d

    return v2

    .line 72
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_44

    .line 82
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_41

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_41

    const v3, 0xdfff

    if-gt v2, v3, :cond_41

    .line 90
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 92
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unpaired surrogate at index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    :goto_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_44
    return v1
.end method

.method public static isWellFormed([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 112
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result p0

    return p0
.end method

.method public static isWellFormed([BII)Z
    .registers 4

    add-int/2addr p2, p1

    .line 126
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    :goto_5
    if-ge p1, p2, :cond_13

    .line 129
    aget-byte v0, p0, p1

    if-gez v0, :cond_10

    .line 130
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private static isWellFormedSlowPath([BII)Z
    .registers 10

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 146
    aget-byte v1, p0, p1

    if-gez v1, :cond_60

    const/16 v2, -0x20

    const/16 v3, -0x41

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1f

    if-ne v0, p2, :cond_14

    return v4

    :cond_14
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_1e

    add-int/lit8 p1, p1, 0x2

    .line 155
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_1e
    return v4

    :cond_1f
    const/16 v5, -0x10

    if-ge v1, v5, :cond_3f

    add-int/lit8 v5, p1, 0x2

    if-lt v5, p2, :cond_28

    return v4

    .line 163
    :cond_28
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_3e

    const/16 v6, -0x60

    if-ne v1, v2, :cond_32

    if-lt v0, v6, :cond_3e

    :cond_32
    const/16 v2, -0x13

    if-ne v1, v2, :cond_38

    if-le v6, v0, :cond_3e

    :cond_38
    add-int/lit8 p1, p1, 0x3

    .line 164
    aget-byte v0, p0, v5

    if-le v0, v3, :cond_0

    :cond_3e
    return v4

    :cond_3f
    add-int/lit8 v2, p1, 0x3

    if-lt v2, p2, :cond_44

    return v4

    :cond_44
    add-int/lit8 v2, p1, 0x2

    .line 178
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_5f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_5f

    add-int/lit8 v0, p1, 0x3

    .line 179
    aget-byte v1, p0, v2

    if-gt v1, v3, :cond_5f

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_5f
    return v4

    :cond_60
    move p1, v0

    goto :goto_0
.end method
