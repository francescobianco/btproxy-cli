.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$MeanAccumulator;
    }
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    const/16 v0, 0xb

    .line 313
    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorial(I)D
    .registers 6

    .line 295
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/16 v0, 0xaa

    if-le p0, v0, :cond_c

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_c
    and-int/lit8 v0, p0, -0x10

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_12
    if-gt v0, p0, :cond_19

    int-to-double v3, v0

    mul-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 305
    :cond_19
    sget-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 p0, p0, 0x4

    aget-wide v3, v0, p0

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public static fuzzyCompare(DDD)I
    .registers 6

    .line 375
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    cmpg-double p4, p0, p2

    if-gez p4, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    cmpl-double p4, p0, p2

    if-lez p4, :cond_14

    const/4 p0, 0x1

    return p0

    .line 382
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public static fuzzyEquals(DDD)Z
    .registers 10

    .line 352
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 353
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v0

    cmpg-double p4, v0, p4

    if-lez p4, :cond_24

    cmpl-double p4, p0, p2

    if-eqz p4, :cond_24

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p0, 0x1

    :goto_25
    return p0
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4

    .line 280
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result p0

    if-gt v0, p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static isPowerOfTwo(D)Z
    .registers 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_18

    .line 198
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static log2(D)D
    .registers 4

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 8

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_10

    .line 234
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const-string v3, "x must be positive and finite"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    .line 236
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v3

    if-nez v3, :cond_2a

    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr p0, v0

    .line 237
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result p0

    add-int/lit8 p0, p0, -0x34

    return p0

    .line 242
    :cond_2a
    sget-object v3, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v3, p2

    packed-switch p2, :pswitch_data_6e

    .line 267
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 261
    :pswitch_3b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide p0

    mul-double/2addr p0, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpl-double p0, p0, v3

    if-lez p0, :cond_68

    move v1, v2

    goto :goto_68

    :pswitch_48
    if-ltz v0, :cond_4b

    move v1, v2

    .line 256
    :cond_4b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    goto :goto_57

    :pswitch_50
    if-gez v0, :cond_53

    move v1, v2

    .line 253
    :cond_53
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    :goto_57
    xor-int/2addr p0, v2

    and-int/2addr v1, p0

    goto :goto_68

    .line 250
    :pswitch_5a
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    goto :goto_68

    .line 244
    :pswitch_61
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_68
    :goto_68
    :pswitch_68
    if-eqz v1, :cond_6c

    add-int/lit8 v0, v0, 0x1

    :cond_6c
    return v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_68
        :pswitch_5a
        :pswitch_50
        :pswitch_48
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 452
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 453
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_a

    .line 456
    :cond_1e
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 467
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 468
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    goto :goto_6

    .line 470
    :cond_1a
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([D)D
    .registers 6

    .line 411
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 412
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-wide v3, p0, v2

    .line 413
    invoke-virtual {v0, v3, v4}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 415
    :cond_12
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([I)D
    .registers 6

    .line 424
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 425
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_13

    aget v3, p0, v2

    int-to-double v3, v3

    .line 426
    invoke-virtual {v0, v3, v4}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 428
    :cond_13
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs mean([J)D
    .registers 6

    .line 438
    new-instance v0, Lcom/google/common/math/DoubleMath$MeanAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>(Lcom/google/common/math/DoubleMath$1;)V

    .line 439
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    long-to-double v3, v3

    .line 440
    invoke-virtual {v0, v3, v4}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->add(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 442
    :cond_13
    invoke-virtual {v0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean()D

    move-result-wide v0

    return-wide v0
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 9

    .line 58
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 61
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    packed-switch p2, :pswitch_data_7e

    .line 112
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 103
    :pswitch_1d
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p2, v2, v4

    if-nez p2, :cond_2c

    return-wide p0

    :cond_2c
    return-wide v0

    .line 94
    :pswitch_2d
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p2, v2, v4

    if-nez p2, :cond_41

    .line 96
    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    return-wide p0

    :cond_41
    return-wide v0

    .line 91
    :pswitch_42
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    return-wide p0

    .line 84
    :pswitch_47
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_4e

    return-wide p0

    .line 87
    :cond_4e
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/DoubleUtils;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    :pswitch_53
    return-wide p0

    :pswitch_54
    cmpg-double p2, p0, v0

    if-lez p2, :cond_60

    .line 74
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_5f

    goto :goto_60

    :cond_5f
    add-double/2addr p0, v2

    :cond_60
    :goto_60
    return-wide p0

    :pswitch_61
    cmpl-double p2, p0, v0

    if-gez p2, :cond_6d

    .line 67
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_6c

    goto :goto_6d

    :cond_6c
    sub-double/2addr p0, v2

    :cond_6d
    :goto_6d
    return-wide p0

    .line 63
    :pswitch_6e
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide p0

    .line 59
    :cond_76
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "input is infinite or NaN"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_61
        :pswitch_54
        :pswitch_53
        :pswitch_47
        :pswitch_42
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 7

    .line 182
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_11

    move p2, v0

    goto :goto_12

    :cond_11
    move p2, v1

    :goto_12
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v2, p0, v2

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    and-int/2addr p2, v0

    if-eqz p2, :cond_23

    double-to-long p0, p0

    .line 184
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 186
    :cond_23
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result p2

    .line 187
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    .line 188
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 p2, p2, -0x34

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_3f

    .line 189
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    :cond_3f
    return-object p2
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 7

    .line 132
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    const-wide v0, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double p2, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_11

    move p2, v0

    goto :goto_12

    :cond_11
    move p2, v1

    :goto_12
    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v2, p0, v2

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    and-int/2addr p2, v0

    .line 133
    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-int p0, p0

    return p0
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 7

    .line 156
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_11

    move p2, v0

    goto :goto_12

    :cond_11
    move p2, v1

    :goto_12
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v2, p0, v2

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    and-int/2addr p2, v0

    .line 157
    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-long p0, p0

    return-wide p0
.end method
