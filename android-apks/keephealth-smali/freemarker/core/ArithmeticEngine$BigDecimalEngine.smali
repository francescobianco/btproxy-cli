.class public Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;
.super Lfreemarker/core/ArithmeticEngine;
.source "ArithmeticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ArithmeticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigDecimalEngine"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Lfreemarker/core/ArithmeticEngine;-><init>()V

    return-void
.end method

.method private divide(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 5

    .line 253
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 254
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 256
    iget v1, p0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->minScale:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 257
    iget v1, p0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->roundingPolicy:I

    invoke-virtual {p1, p2, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    .line 210
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 211
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I
    .registers 13

    .line 121
    invoke-static {p1}, Lfreemarker/template/utility/NumberUtil;->getSignum(Ljava/lang/Number;)I

    move-result v0

    .line 122
    invoke-static {p2}, Lfreemarker/template/utility/NumberUtil;->getSignum(Ljava/lang/Number;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v1, :cond_15

    if-ge v0, v1, :cond_11

    move v2, v4

    goto :goto_14

    :cond_11
    if-le v0, v1, :cond_14

    move v2, v3

    :cond_14
    :goto_14
    return v2

    :cond_15
    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    return v2

    .line 131
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_7f

    .line 133
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_31

    .line 134
    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    .line 137
    :cond_31
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3e

    .line 138
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 140
    :cond_3e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4b

    .line 141
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 143
    :cond_4b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_58

    .line 144
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    .line 146
    :cond_58
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_65

    .line 147
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1

    .line 149
    :cond_65
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_72

    .line 150
    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p1, p2}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result p1

    return p1

    .line 152
    :cond_72
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7f

    .line 153
    check-cast p1, Ljava/lang/Short;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p1, p2}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p1

    return p1

    .line 159
    :cond_7f
    instance-of v0, p1, Ljava/lang/Double;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz v0, :cond_a8

    .line 160
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 161
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 162
    invoke-static {p2}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v7

    if-eqz v7, :cond_9b

    cmpl-double p1, v5, v1

    if-nez p1, :cond_9a

    move v3, v4

    :cond_9a
    return v3

    .line 165
    :cond_9b
    instance-of v7, p2, Ljava/lang/Float;

    if-eqz v7, :cond_a8

    .line 166
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 170
    :cond_a8
    instance-of v5, p1, Ljava/lang/Float;

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    if-eqz v5, :cond_d2

    .line 171
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 172
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 173
    invoke-static {p2}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_c4

    cmpl-float p1, v7, v6

    if-nez p1, :cond_c3

    move v3, v4

    :cond_c3
    return v3

    .line 176
    :cond_c4
    instance-of v8, p2, Ljava/lang/Double;

    if-eqz v8, :cond_d2

    float-to-double v0, v7

    .line 177
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 181
    :cond_d2
    instance-of v7, p2, Ljava/lang/Double;

    if-eqz v7, :cond_f8

    .line 182
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 183
    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 184
    invoke-static {p1}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v9

    if-eqz v9, :cond_ed

    cmpl-double p1, v7, v1

    if-nez p1, :cond_eb

    goto :goto_ec

    :cond_eb
    move v3, v4

    :goto_ec
    return v3

    :cond_ed
    if-eqz v5, :cond_f8

    .line 188
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 192
    :cond_f8
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_11f

    .line 193
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 194
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 195
    invoke-static {p1}, Lfreemarker/template/utility/NumberUtil;->hasTypeThatIsKnownToNotSupportInfiniteAndNaN(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_113

    cmpl-float p1, v1, v6

    if-nez p1, :cond_111

    goto :goto_112

    :cond_111
    move v3, v4

    :goto_112
    return v3

    :cond_113
    if-eqz v0, :cond_11f

    .line 199
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 204
    :cond_11f
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    .line 235
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 236
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 237
    invoke-direct {p0, p1, p2}, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->divide(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public modulus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5

    .line 242
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 243
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 244
    rem-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 4

    .line 224
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 225
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 226
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    iget v0, p0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->maxScale:I

    if-le p2, v0, :cond_1c

    .line 228
    iget p2, p0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->maxScale:I

    iget v0, p0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;->roundingPolicy:I

    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_1c
    return-object p1
.end method

.method public subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    .line 217
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 218
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 219
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public toNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    .line 249
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimalOrDouble(Ljava/lang/String;)Ljava/lang/Number;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$100(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
