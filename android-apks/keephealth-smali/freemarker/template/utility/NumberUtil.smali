.class public Lfreemarker/template/utility/NumberUtil;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# static fields
.field private static final BIG_DECIMAL_INT_MAX:Ljava/math/BigDecimal;

.field private static final BIG_DECIMAL_INT_MIN:Ljava/math/BigDecimal;

.field private static final BIG_INTEGER_INT_MAX:Ljava/math/BigInteger;

.field private static final BIG_INTEGER_INT_MIN:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/32 v0, -0x80000000

    .line 32
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/NumberUtil;->BIG_DECIMAL_INT_MIN:Ljava/math/BigDecimal;

    const-wide/32 v1, 0x7fffffff

    .line 33
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sput-object v1, Lfreemarker/template/utility/NumberUtil;->BIG_DECIMAL_INT_MAX:Ljava/math/BigDecimal;

    .line 34
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/NumberUtil;->BIG_INTEGER_INT_MIN:Ljava/math/BigInteger;

    .line 35
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/NumberUtil;->BIG_INTEGER_INT_MAX:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignum(Ljava/lang/Number;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 68
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    .line 69
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_11

    move v1, v3

    goto :goto_15

    :cond_11
    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1

    .line 71
    :cond_16
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_21

    .line 72
    check-cast p0, Ljava/math/BigDecimal;

    .line 73
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    return p0

    .line 74
    :cond_21
    instance-of v0, p0, Ljava/lang/Double;

    const-string v4, " is not defined."

    const-string v5, "The signum of "

    if-eqz v0, :cond_55

    .line 75
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double p0, v6, v8

    if-lez p0, :cond_36

    return v3

    :cond_36
    if-nez p0, :cond_39

    return v1

    :cond_39
    cmpg-double p0, v6, v8

    if-gez p0, :cond_3e

    return v2

    .line 79
    :cond_3e
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_55
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_84

    .line 81
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v6, p0, v0

    if-lez v6, :cond_65

    return v3

    :cond_65
    if-nez v6, :cond_68

    return v1

    :cond_68
    cmpg-float v0, p0, v0

    if-gez v0, :cond_6d

    return v2

    .line 85
    :cond_6d
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_84
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_9b

    .line 87
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_96

    move v1, v3

    goto :goto_9a

    :cond_96
    if-nez p0, :cond_99

    goto :goto_9a

    :cond_99
    move v1, v2

    :goto_9a
    return v1

    .line 89
    :cond_9b
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_ae

    .line 90
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    if-lez p0, :cond_a9

    move v1, v3

    goto :goto_ad

    :cond_a9
    if-nez p0, :cond_ac

    goto :goto_ad

    :cond_ac
    move v1, v2

    :goto_ad
    return v1

    .line 92
    :cond_ae
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_c1

    .line 93
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_bc

    move v1, v3

    goto :goto_c0

    :cond_bc
    if-nez p0, :cond_bf

    goto :goto_c0

    :cond_bf
    move v1, v2

    :goto_c0
    return v1

    .line 95
    :cond_c1
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_cc

    .line 96
    check-cast p0, Ljava/math/BigInteger;

    .line 97
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    return p0

    .line 99
    :cond_cc
    new-instance v0, Lfreemarker/template/utility/UnsupportedNumberClassException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UnsupportedNumberClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public static hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z
    .registers 2

    .line 125
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1b

    instance-of p0, p0, Ljava/math/BigInteger;

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isInfinite(Ljava/lang/Number;)Z
    .registers 2

    .line 40
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    .line 41
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result p0

    return p0

    .line 42
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 43
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isInfinite()Z

    move-result p0

    return p0

    .line 44
    :cond_16
    invoke-static {p0}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_1e
    new-instance v0, Lfreemarker/template/utility/UnsupportedNumberClassException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UnsupportedNumberClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public static isIntegerBigDecimal(Ljava/math/BigDecimal;)Z
    .registers 4

    .line 111
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_14

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v0

    :cond_14
    :goto_14
    return v1
.end method

.method public static isNaN(Ljava/lang/Number;)Z
    .registers 2

    .line 52
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_b

    .line 53
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    return p0

    .line 54
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 55
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result p0

    return p0

    .line 56
    :cond_16
    invoke-static {p0}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 59
    :cond_1e
    new-instance v0, Lfreemarker/template/utility/UnsupportedNumberClassException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UnsupportedNumberClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method private static newLossyConverionException(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/ArithmeticException;
    .registers 5

    .line 173
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 174
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " without loss."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toIntExact(Ljava/lang/Number;)I
    .registers 7

    .line 138
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_a9

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_a9

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_e

    goto/16 :goto_a9

    .line 140
    :cond_e
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_24

    .line 141
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_1d

    return v2

    .line 144
    :cond_1d
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lfreemarker/template/utility/NumberUtil;->newLossyConverionException(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/ArithmeticException;

    move-result-object p0

    throw p0

    .line 147
    :cond_24
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_83

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2d

    goto :goto_83

    .line 153
    :cond_2d
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_56

    .line 155
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    .line 156
    invoke-static {v0}, Lfreemarker/template/utility/NumberUtil;->isIntegerBigDecimal(Ljava/math/BigDecimal;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Lfreemarker/template/utility/NumberUtil;->BIG_DECIMAL_INT_MAX:Ljava/math/BigDecimal;

    .line 157
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_4f

    sget-object v1, Lfreemarker/template/utility/NumberUtil;->BIG_DECIMAL_INT_MIN:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_4f

    .line 160
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    .line 158
    :cond_4f
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lfreemarker/template/utility/NumberUtil;->newLossyConverionException(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/ArithmeticException;

    move-result-object p0

    throw p0

    .line 161
    :cond_56
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_79

    .line 162
    move-object v0, p0

    check-cast v0, Ljava/math/BigInteger;

    .line 163
    sget-object v1, Lfreemarker/template/utility/NumberUtil;->BIG_INTEGER_INT_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_72

    sget-object v1, Lfreemarker/template/utility/NumberUtil;->BIG_INTEGER_INT_MIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_72

    .line 166
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 164
    :cond_72
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lfreemarker/template/utility/NumberUtil;->newLossyConverionException(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/ArithmeticException;

    move-result-object p0

    throw p0

    .line 168
    :cond_79
    new-instance v0, Lfreemarker/template/utility/UnsupportedNumberClassException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UnsupportedNumberClassException;-><init>(Ljava/lang/Class;)V

    throw v0

    .line 148
    :cond_83
    :goto_83
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    rem-double v2, v0, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_a2

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_a2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_a2

    double-to-int p0, v0

    return p0

    .line 150
    :cond_a2
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lfreemarker/template/utility/NumberUtil;->newLossyConverionException(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/ArithmeticException;

    move-result-object p0

    throw p0

    .line 139
    :cond_a9
    :goto_a9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
