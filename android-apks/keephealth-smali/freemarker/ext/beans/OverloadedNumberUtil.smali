.class Lfreemarker/ext/beans/OverloadedNumberUtil;
.super Ljava/lang/Object;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigDecimalSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$FloatSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$LongSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$ShortSource;,
        Lfreemarker/ext/beans/OverloadedNumberUtil$ByteSource;
    }
.end annotation


# static fields
.field static final BIG_MANTISSA_LOSS_PRICE:I = 0x9c40

.field private static final HIGHEST_BELOW_ONE:D = 0.999999

.field private static final LOWEST_ABOVE_ZERO:D = 1.0E-6

.field private static final MAX_DOUBLE_OR_LONG:J = 0x20000000000000L

.field private static final MAX_DOUBLE_OR_LONG_LOG_2:I = 0x35

.field private static final MAX_FLOAT_OR_INT:I = 0x1000000

.field private static final MAX_FLOAT_OR_INT_LOG_2:I = 0x18

.field private static final MIN_DOUBLE_OR_LONG:J = -0x20000000000000L

.field private static final MIN_FLOAT_OR_INT:I = -0x1000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFallbackType(Ljava/lang/Number;I)Ljava/lang/Number;
    .registers 27

    move/from16 v0, p1

    .line 96
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_23

    .line 101
    move-object/from16 v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    and-int/lit16 v2, v0, 0x13c

    if-eqz v2, :cond_22

    and-int/lit16 v0, v0, 0x2c0

    if-eqz v0, :cond_22

    .line 104
    invoke-static {v1}, Lfreemarker/template/utility/NumberUtil;->isIntegerBigDecimal(Ljava/math/BigDecimal;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 105
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    :cond_22
    return-object v1

    .line 111
    :cond_23
    const-class v2, Ljava/lang/Integer;

    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    const/16 v5, -0x80

    const/16 v6, 0x7f

    if-ne v1, v2, :cond_5a

    .line 112
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_46

    if-gt v1, v6, :cond_46

    if-lt v1, v5, :cond_46

    .line 120
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Integer;

    int-to-byte v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;-><init>(Ljava/lang/Integer;B)V

    return-object v0

    :cond_46
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_59

    if-gt v1, v4, :cond_59

    if-lt v1, v3, :cond_59

    .line 122
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Integer;

    int-to-short v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;-><init>(Ljava/lang/Integer;S)V

    return-object v0

    :cond_59
    return-object p0

    .line 126
    :cond_5a
    const-class v2, Ljava/lang/Long;

    const-wide/16 v7, -0x8000

    const-wide/16 v9, -0x80

    const-wide/16 v11, 0x7fff

    const-wide/16 v13, 0x7f

    const-wide/32 v15, -0x80000000

    const-wide/32 v17, 0x7fffffff

    if-ne v1, v2, :cond_b8

    .line 127
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_88

    cmp-long v3, v1, v13

    if-gtz v3, :cond_88

    cmp-long v3, v1, v9

    if-ltz v3, :cond_88

    .line 129
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;-><init>(Ljava/lang/Long;B)V

    return-object v0

    :cond_88
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_a0

    cmp-long v3, v1, v11

    if-gtz v3, :cond_a0

    cmp-long v3, v1, v7

    if-ltz v3, :cond_a0

    .line 131
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;-><init>(Ljava/lang/Long;S)V

    return-object v0

    :cond_a0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b7

    cmp-long v0, v1, v17

    if-gtz v0, :cond_b7

    cmp-long v0, v1, v15

    if-ltz v0, :cond_b7

    .line 133
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Long;

    long-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;-><init>(Ljava/lang/Long;I)V

    return-object v0

    :cond_b7
    return-object p0

    .line 137
    :cond_b8
    const-class v2, Ljava/lang/Double;

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-ne v1, v2, :cond_1b8

    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    and-int/lit16 v3, v0, 0x13c

    if-nez v3, :cond_cc

    goto/16 :goto_197

    :cond_cc
    const-wide/high16 v3, 0x4340000000000000L    # 9.007199254740992E15

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_197

    const-wide/high16 v3, -0x3cc0000000000000L    # -9.007199254740992E15

    cmpg-double v3, v1, v3

    if-gez v3, :cond_da

    goto/16 :goto_197

    .line 147
    :cond_da
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-double v5, v3

    sub-double v5, v1, v5

    cmpl-double v19, v5, v19

    if-nez v19, :cond_e6

    goto :goto_118

    :cond_e6
    const-wide/16 v20, 0x1

    if-lez v19, :cond_100

    const-wide v23, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v19, v5, v23

    if-gez v19, :cond_f4

    goto :goto_109

    :cond_f4
    const-wide v23, 0x3feffffde7210be9L    # 0.999999

    cmpl-double v5, v5, v23

    if-lez v5, :cond_197

    add-long v3, v3, v20

    goto :goto_109

    :cond_100
    const-wide v23, -0x414f39085f4a1273L    # -1.0E-6

    cmpl-double v19, v5, v23

    if-lez v19, :cond_10c

    :goto_109
    move/from16 v21, v22

    goto :goto_118

    :cond_10c
    const-wide v23, -0x4010000218def417L    # -0.999999

    cmpg-double v5, v5, v23

    if-gez v5, :cond_197

    sub-long v3, v3, v20

    goto :goto_109

    :goto_118
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_130

    cmp-long v5, v3, v13

    if-gtz v5, :cond_130

    cmp-long v5, v3, v9

    if-ltz v5, :cond_130

    .line 176
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    long-to-int v2, v3

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;-><init>(Ljava/lang/Double;B)V

    return-object v0

    :cond_130
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_148

    cmp-long v5, v3, v11

    if-gtz v5, :cond_148

    cmp-long v5, v3, v7

    if-ltz v5, :cond_148

    .line 179
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    long-to-int v2, v3

    int-to-short v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;-><init>(Ljava/lang/Double;S)V

    return-object v0

    :cond_148
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_175

    cmp-long v5, v3, v17

    if-gtz v5, :cond_175

    cmp-long v5, v3, v15

    if-ltz v5, :cond_175

    long-to-int v1, v3

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_16b

    const/high16 v0, -0x1000000

    if-lt v1, v0, :cond_16b

    const/high16 v0, 0x1000000

    if-gt v1, v0, :cond_16b

    .line 183
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;-><init>(Ljava/lang/Double;I)V

    goto :goto_174

    :cond_16b
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;-><init>(Ljava/lang/Double;I)V

    :goto_174
    return-object v0

    :cond_175
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_197

    if-eqz v21, :cond_185

    .line 188
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v3, v4}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;-><init>(Ljava/lang/Double;J)V

    return-object v0

    :cond_185
    cmp-long v5, v3, v15

    if-ltz v5, :cond_197

    cmp-long v5, v3, v17

    if-gtz v5, :cond_197

    .line 193
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v3, v4}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;-><init>(Ljava/lang/Double;J)V

    return-object v0

    :cond_197
    :goto_197
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1b7

    const-wide v3, -0x3810000020000000L    # -3.4028234663852886E38

    cmpl-double v0, v1, v3

    if-ltz v0, :cond_1b7

    const-wide v3, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_1b7

    .line 205
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_1b7
    return-object p0

    .line 210
    :cond_1b8
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_264

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    and-int/lit16 v2, v0, 0x13c

    if-nez v2, :cond_1c6

    goto/16 :goto_263

    :cond_1c6
    const/high16 v2, 0x4b800000    # 1.6777216E7f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_263

    const/high16 v2, -0x34800000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1d4

    goto/16 :goto_263

    .line 220
    :cond_1d4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v7, v2

    sub-float/2addr v1, v7

    float-to-double v7, v1

    cmpl-double v1, v7, v19

    if-nez v1, :cond_1e0

    goto :goto_214

    :cond_1e0
    if-lt v2, v5, :cond_263

    if-gt v2, v6, :cond_263

    if-lez v1, :cond_1fc

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v7, v9

    if-gez v1, :cond_1f0

    goto :goto_205

    :cond_1f0
    const-wide v9, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v1, v7, v9

    if-lez v1, :cond_263

    add-int/lit8 v2, v2, 0x1

    goto :goto_205

    :cond_1fc
    const-wide v9, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v1, v7, v9

    if-lez v1, :cond_208

    :goto_205
    move/from16 v21, v22

    goto :goto_214

    :cond_208
    const-wide v9, -0x40100014f8b588e3L    # -0.99999

    cmpg-double v1, v7, v9

    if-gez v1, :cond_263

    add-int/lit8 v2, v2, -0x1

    goto :goto_205

    :goto_214
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_227

    if-gt v2, v6, :cond_227

    if-lt v2, v5, :cond_227

    .line 253
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;-><init>(Ljava/lang/Float;B)V

    return-object v0

    :cond_227
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_23a

    if-gt v2, v4, :cond_23a

    if-lt v2, v3, :cond_23a

    .line 255
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-short v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;-><init>(Ljava/lang/Float;S)V

    return-object v0

    :cond_23a
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_248

    .line 257
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;-><init>(Ljava/lang/Float;I)V

    return-object v0

    :cond_248
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_263

    if-eqz v21, :cond_258

    .line 260
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;-><init>(Ljava/lang/Float;I)V

    goto :goto_262

    :cond_258
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Float;

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;-><init>(Ljava/lang/Float;B)V

    :goto_262
    return-object v0

    :cond_263
    :goto_263
    return-object p0

    .line 269
    :cond_264
    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_269

    return-object p0

    .line 271
    :cond_269
    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_285

    .line 272
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_284

    if-gt v1, v6, :cond_284

    if-lt v1, v5, :cond_284

    .line 274
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Short;

    int-to-byte v1, v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;-><init>(Ljava/lang/Short;B)V

    return-object v0

    :cond_284
    return-object p0

    .line 278
    :cond_285
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_2fc

    and-int/lit16 v1, v0, 0xfc

    if-eqz v1, :cond_2fc

    .line 282
    move-object/from16 v1, p0

    check-cast v1, Ljava/math/BigInteger;

    .line 283
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2a2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_2a2

    .line 285
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2a2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2b0

    const/16 v3, 0xf

    if-gt v2, v3, :cond_2b0

    .line 287
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2b0
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_2be

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2be

    .line 289
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2be
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2cc

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_2cc

    .line 291
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2cc
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_2e4

    const/16 v3, 0x18

    if-le v2, v3, :cond_2de

    const/16 v4, 0x19

    if-ne v2, v4, :cond_2e4

    .line 295
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    if-lt v4, v3, :cond_2e4

    .line 296
    :cond_2de
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2e4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2fc

    const/16 v0, 0x35

    if-le v2, v0, :cond_2f6

    const/16 v3, 0x36

    if-ne v2, v3, :cond_2fc

    .line 300
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-lt v2, v0, :cond_2fc

    .line 301
    :cond_2f6
    new-instance v0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2fc
    return-object p0
.end method

.method static compareNumberTypeSpecificity(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 16

    .line 1200
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 1201
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_c

    return v0

    .line 1205
    :cond_c
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x2

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne p0, v1, :cond_3b

    .line 1206
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_1c

    return v8

    .line 1207
    :cond_1c
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_21

    return v3

    .line 1208
    :cond_21
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_26

    return v4

    .line 1209
    :cond_26
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_2b

    return v5

    .line 1210
    :cond_2b
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_30

    return v7

    .line 1211
    :cond_30
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_35

    return v2

    .line 1212
    :cond_35
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_3a

    return v6

    :cond_3a
    return v0

    .line 1215
    :cond_3b
    const-class v1, Ljava/lang/Long;

    const/4 v9, -0x3

    if-ne p0, v1, :cond_64

    .line 1216
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_45

    return v7

    .line 1217
    :cond_45
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_4a

    return v4

    .line 1218
    :cond_4a
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_4f

    return v6

    .line 1219
    :cond_4f
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_54

    return v9

    .line 1220
    :cond_54
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_59

    return v5

    .line 1221
    :cond_59
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_5e

    return v3

    .line 1222
    :cond_5e
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_63

    return v8

    :cond_63
    return v0

    .line 1225
    :cond_64
    const-class v1, Ljava/lang/Double;

    const/4 v10, -0x6

    const/4 v11, -0x5

    const/4 v12, -0x4

    if-ne p0, v1, :cond_8f

    .line 1226
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_70

    return v12

    .line 1227
    :cond_70
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_75

    return v9

    .line 1228
    :cond_75
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_7a

    return v7

    .line 1229
    :cond_7a
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_7f

    return v10

    .line 1230
    :cond_7f
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_84

    return v11

    .line 1231
    :cond_84
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_89

    return v8

    .line 1232
    :cond_89
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_8e

    return v5

    :cond_8e
    return v0

    .line 1235
    :cond_8f
    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_b7

    .line 1236
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_98

    return v9

    .line 1237
    :cond_98
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_9d

    return v5

    .line 1238
    :cond_9d
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_a2

    return v8

    .line 1239
    :cond_a2
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_a7

    return v11

    .line 1240
    :cond_a7
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_ac

    return v12

    .line 1241
    :cond_ac
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_b1

    return v6

    .line 1242
    :cond_b1
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_b6

    return v7

    :cond_b6
    return v0

    .line 1245
    :cond_b7
    const-class v1, Ljava/lang/Byte;

    const/4 v13, 0x6

    if-ne p0, v1, :cond_e1

    .line 1246
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_c1

    return v6

    .line 1247
    :cond_c1
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_c6

    return v4

    .line 1248
    :cond_c6
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_cb

    return v13

    .line 1249
    :cond_cb
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_d0

    return v2

    .line 1250
    :cond_d0
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_d5

    return v8

    .line 1251
    :cond_d5
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_db

    const/4 p0, 0x7

    return p0

    .line 1252
    :cond_db
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_e0

    return v3

    :cond_e0
    return v0

    .line 1255
    :cond_e1
    const-class v1, Ljava/lang/Short;

    if-ne p0, v1, :cond_109

    .line 1256
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_ea

    return v8

    .line 1257
    :cond_ea
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_ef

    return v6

    .line 1258
    :cond_ef
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_f4

    return v2

    .line 1259
    :cond_f4
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_f9

    return v3

    .line 1260
    :cond_f9
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_fe

    return v7

    .line 1261
    :cond_fe
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_103

    return v13

    .line 1262
    :cond_103
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_108

    return v4

    :cond_108
    return v0

    .line 1265
    :cond_109
    const-class v1, Ljava/math/BigDecimal;

    if-ne p0, v1, :cond_132

    .line 1266
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_112

    return v11

    .line 1267
    :cond_112
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_117

    return v12

    .line 1268
    :cond_117
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_11c

    return v7

    .line 1269
    :cond_11c
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_121

    return v5

    .line 1270
    :cond_121
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_127

    const/4 p0, -0x7

    return p0

    .line 1271
    :cond_127
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_12c

    return v10

    .line 1272
    :cond_12c
    const-class p0, Ljava/math/BigInteger;

    if-ne p1, p0, :cond_131

    return v9

    :cond_131
    return v0

    .line 1275
    :cond_132
    const-class v1, Ljava/math/BigInteger;

    if-ne p0, v1, :cond_159

    .line 1276
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_13b

    return v5

    .line 1277
    :cond_13b
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_140

    return v7

    .line 1278
    :cond_140
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_145

    return v6

    .line 1279
    :cond_145
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_14a

    return v8

    .line 1280
    :cond_14a
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_14f

    return v12

    .line 1281
    :cond_14f
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_154

    return v9

    .line 1282
    :cond_154
    const-class p0, Ljava/math/BigDecimal;

    if-ne p1, p0, :cond_159

    return v4

    :cond_159
    return v0
.end method

.method static getArgumentConversionPrice(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    return v0

    .line 943
    :cond_4
    const-class v1, Ljava/lang/Integer;

    const v2, 0x7fffffff

    if-ne p1, v1, :cond_aa

    .line 944
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_12

    const/16 p0, 0x791b

    return p0

    .line 945
    :cond_12
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_1a

    const p0, 0xa02b

    return p0

    .line 946
    :cond_1a
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_1f

    return v2

    .line 947
    :cond_1f
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_24

    return v2

    .line 948
    :cond_24
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_29

    return v2

    .line 949
    :cond_29
    const-class p1, Ljava/lang/Byte;

    const/16 v1, 0x2713

    if-ne p0, p1, :cond_30

    return v1

    .line 950
    :cond_30
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_35

    return v2

    .line 951
    :cond_35
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    const/16 v3, 0x520b

    if-ne p0, p1, :cond_3c

    return v3

    .line 952
    :cond_3c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_41

    return v2

    .line 953
    :cond_41
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    const/16 v4, 0x55f3

    if-ne p0, p1, :cond_48

    return v4

    .line 954
    :cond_48
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_4d

    return v4

    .line 955
    :cond_4d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_52

    return v2

    .line 956
    :cond_52
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_57

    return v0

    .line 957
    :cond_57
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_5c

    return v4

    .line 958
    :cond_5c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_61

    return v3

    .line 959
    :cond_61
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_66

    return v1

    .line 960
    :cond_66
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_6b

    return v3

    .line 961
    :cond_6b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_70

    return v1

    .line 962
    :cond_70
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_75

    return v3

    .line 963
    :cond_75
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_7a

    return v3

    .line 964
    :cond_7a
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_7f

    return v3

    .line 965
    :cond_7f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    const/16 v1, 0x3e83

    if-ne p0, p1, :cond_86

    return v1

    .line 966
    :cond_86
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_8b

    return v2

    .line 967
    :cond_8b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_90

    return v2

    .line 968
    :cond_90
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_95

    return v2

    .line 969
    :cond_95
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_9a

    return v1

    .line 970
    :cond_9a
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_9f

    return v0

    .line 971
    :cond_9f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_a4

    return v4

    .line 972
    :cond_a4
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_a9

    return v1

    :cond_a9
    return v2

    .line 974
    :cond_aa
    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_14b

    .line 975
    const-class p1, Ljava/lang/Integer;

    const/16 v1, 0x2714

    if-ne p0, p1, :cond_b5

    return v1

    .line 976
    :cond_b5
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_bc

    const/16 p0, 0x791c

    return p0

    .line 977
    :cond_bc
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_c4

    const p0, 0xa02c

    return p0

    .line 978
    :cond_c4
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_c9

    return v2

    .line 979
    :cond_c9
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_ce

    return v2

    .line 980
    :cond_ce
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_d3

    return v1

    .line 981
    :cond_d3
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_d8

    return v2

    .line 982
    :cond_d8
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_dd

    return v0

    .line 983
    :cond_dd
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_e2

    return v2

    .line 984
    :cond_e2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    const/16 v3, 0x520c

    if-ne p0, p1, :cond_e9

    return v3

    .line 985
    :cond_e9
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_ee

    return v3

    .line 986
    :cond_ee
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_f3

    return v3

    .line 987
    :cond_f3
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_f8

    return v1

    .line 988
    :cond_f8
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_fd

    return v3

    .line 989
    :cond_fd
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_102

    return v0

    .line 990
    :cond_102
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_107

    return v1

    .line 991
    :cond_107
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_10c

    return v0

    .line 992
    :cond_10c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_111

    return v1

    .line 993
    :cond_111
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_116

    return v3

    .line 994
    :cond_116
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_11b

    return v3

    .line 995
    :cond_11b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_120

    return v3

    .line 996
    :cond_120
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    const/16 v0, 0x3a9c

    if-ne p0, p1, :cond_127

    return v0

    .line 997
    :cond_127
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_12c

    return v0

    .line 998
    :cond_12c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_131

    return v2

    .line 999
    :cond_131
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_136

    return v2

    .line 1000
    :cond_136
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_13b

    return v0

    .line 1001
    :cond_13b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_140

    return v1

    .line 1002
    :cond_140
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_145

    return v3

    .line 1003
    :cond_145
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_14a

    return v0

    :cond_14a
    return v2

    .line 1005
    :cond_14b
    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_1ef

    .line 1006
    const-class p1, Ljava/lang/Integer;

    const/16 v1, 0x4e27

    if-ne p0, p1, :cond_156

    return v1

    .line 1007
    :cond_156
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_15d

    const/16 p0, 0x7d07

    return p0

    .line 1008
    :cond_15d
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_164

    const/16 p0, 0x7d07

    return p0

    .line 1009
    :cond_164
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_16b

    const/16 p0, 0x7537

    return p0

    .line 1010
    :cond_16b
    const-class p1, Ljava/lang/Float;

    const/16 v3, 0x2717

    if-ne p0, p1, :cond_172

    return v3

    .line 1011
    :cond_172
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_177

    return v1

    .line 1012
    :cond_177
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_17c

    return v2

    .line 1013
    :cond_17c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    const/16 v4, 0x520f

    if-ne p0, p1, :cond_183

    return v4

    .line 1014
    :cond_183
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_188

    return v0

    .line 1015
    :cond_188
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    if-ne p0, p1, :cond_18d

    return v0

    .line 1016
    :cond_18d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_192

    return v0

    .line 1017
    :cond_192
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_197

    return v0

    .line 1018
    :cond_197
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_19c

    return v1

    .line 1019
    :cond_19c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_1a1

    return v0

    .line 1020
    :cond_1a1
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_1a6

    return v4

    .line 1021
    :cond_1a6
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_1ab

    return v1

    .line 1022
    :cond_1ab
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_1b0

    return v4

    .line 1023
    :cond_1b0
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_1b5

    return v1

    .line 1024
    :cond_1b5
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_1ba

    return v3

    .line 1025
    :cond_1ba
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_1bf

    return v3

    .line 1026
    :cond_1bf
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_1c4

    return v3

    .line 1027
    :cond_1c4
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_1c9

    return v1

    .line 1028
    :cond_1c9
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_1d0

    const/16 p0, 0x7537

    return p0

    .line 1029
    :cond_1d0
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_1d5

    return v1

    .line 1030
    :cond_1d5
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_1da

    return v1

    .line 1031
    :cond_1da
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_1df

    return v1

    .line 1032
    :cond_1df
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_1e4

    return v1

    .line 1033
    :cond_1e4
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_1e9

    return v0

    .line 1034
    :cond_1e9
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_1ee

    return v1

    :cond_1ee
    return v2

    .line 1036
    :cond_1ef
    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_296

    .line 1037
    const-class p1, Ljava/lang/Integer;

    const/16 v1, 0x7536

    if-ne p0, p1, :cond_1fa

    return v1

    .line 1038
    :cond_1fa
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_202

    const p0, 0x80ee

    return p0

    .line 1039
    :cond_202
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_20a

    const p0, 0x80ee

    return p0

    .line 1040
    :cond_20a
    const-class p1, Ljava/lang/Long;

    const v3, 0x9c46

    if-ne p0, p1, :cond_212

    return v3

    .line 1041
    :cond_212
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_217

    return v2

    .line 1042
    :cond_217
    const-class p1, Ljava/lang/Byte;

    const/16 v4, 0x4e26

    if-ne p0, p1, :cond_21e

    return v4

    .line 1043
    :cond_21e
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_223

    return v2

    .line 1044
    :cond_223
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_228

    return v1

    .line 1045
    :cond_228
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_22d

    return v1

    .line 1046
    :cond_22d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    const/16 v5, 0x59de

    if-ne p0, p1, :cond_234

    return v5

    .line 1047
    :cond_234
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_239

    return v1

    .line 1048
    :cond_239
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_23e

    return v3

    .line 1049
    :cond_23e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    const/16 v6, 0x5dc6

    if-ne p0, p1, :cond_245

    return v6

    .line 1050
    :cond_245
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_24a

    return v5

    .line 1051
    :cond_24a
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_24f

    return v6

    .line 1052
    :cond_24f
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_254

    return v4

    .line 1053
    :cond_254
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_259

    return v6

    .line 1054
    :cond_259
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_25e

    return v4

    .line 1055
    :cond_25e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_263

    return v0

    .line 1056
    :cond_263
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_268

    return v0

    .line 1057
    :cond_268
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_26d

    return v0

    .line 1058
    :cond_26d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_272

    return v1

    .line 1059
    :cond_272
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_277

    return v3

    .line 1060
    :cond_277
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_27c

    return v3

    .line 1061
    :cond_27c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_281

    return v6

    .line 1062
    :cond_281
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_286

    return v6

    .line 1063
    :cond_286
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_28b

    return v6

    .line 1064
    :cond_28b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_290

    return v5

    .line 1065
    :cond_290
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_295

    return v6

    :cond_295
    return v2

    .line 1067
    :cond_296
    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_33b

    .line 1068
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_29f

    return v2

    .line 1069
    :cond_29f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_2a7

    const p0, 0x88b9

    return p0

    .line 1070
    :cond_2a7
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_2af

    const p0, 0xafc9

    return p0

    .line 1071
    :cond_2af
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_2b4

    return v2

    .line 1072
    :cond_2b4
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_2b9

    return v2

    .line 1073
    :cond_2b9
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_2be

    return v2

    .line 1074
    :cond_2be
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_2c3

    return v2

    .line 1075
    :cond_2c3
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_2c8

    return v2

    .line 1076
    :cond_2c8
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_2cd

    return v2

    .line 1077
    :cond_2cd
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    if-ne p0, p1, :cond_2d2

    return v2

    .line 1078
    :cond_2d2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_2d7

    return v2

    .line 1079
    :cond_2d7
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_2dc

    return v2

    .line 1080
    :cond_2dc
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_2e3

    const/16 p0, 0x55f1

    return p0

    .line 1081
    :cond_2e3
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_2ea

    const/16 p0, 0x61a9

    return p0

    .line 1082
    :cond_2ea
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_2f1

    const/16 p0, 0x59d9

    return p0

    .line 1083
    :cond_2f1
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_2f6

    return v2

    .line 1084
    :cond_2f6
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_2fb

    return v2

    .line 1085
    :cond_2fb
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_302

    const/16 p0, 0x5209

    return p0

    .line 1086
    :cond_302
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_307

    return v2

    .line 1087
    :cond_307
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_30e

    const/16 p0, 0x59d9

    return p0

    .line 1088
    :cond_30e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_313

    return v2

    .line 1089
    :cond_313
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_318

    return v2

    .line 1090
    :cond_318
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_31d

    return v2

    .line 1091
    :cond_31d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_322

    return v2

    .line 1092
    :cond_322
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_327

    return v2

    .line 1093
    :cond_327
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_32e

    const/16 p0, 0x4651

    return p0

    .line 1094
    :cond_32e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_333

    return v2

    .line 1095
    :cond_333
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_338

    return v2

    .line 1096
    :cond_338
    const-class p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    return v2

    .line 1098
    :cond_33b
    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_3e7

    .line 1099
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_344

    return v2

    .line 1100
    :cond_344
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_34c

    const p0, 0x84d2

    return p0

    .line 1101
    :cond_34c
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_354

    const p0, 0xabe2

    return p0

    .line 1102
    :cond_354
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_359

    return v2

    .line 1103
    :cond_359
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_35e

    return v2

    .line 1104
    :cond_35e
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_363

    return v2

    .line 1105
    :cond_363
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_36a

    const/16 p0, 0x2712

    return p0

    .line 1106
    :cond_36a
    const-class p1, Ljava/math/BigInteger;

    if-ne p0, p1, :cond_36f

    return v2

    .line 1107
    :cond_36f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_374

    return v2

    .line 1108
    :cond_374
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_379

    return v2

    .line 1109
    :cond_379
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    if-ne p0, p1, :cond_37e

    return v2

    .line 1110
    :cond_37e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_383

    return v2

    .line 1111
    :cond_383
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_388

    return v2

    .line 1112
    :cond_388
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_38f

    const/16 p0, 0x520a

    return p0

    .line 1113
    :cond_38f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_396

    const/16 p0, 0x5dc2

    return p0

    .line 1114
    :cond_396
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    const/16 v1, 0x55f2

    if-ne p0, p1, :cond_39d

    return v1

    .line 1115
    :cond_39d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_3a2

    return v1

    .line 1116
    :cond_3a2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_3a7

    return v0

    .line 1117
    :cond_3a7
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_3ac

    return v2

    .line 1118
    :cond_3ac
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_3b1

    return v1

    .line 1119
    :cond_3b1
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_3b6

    return v1

    .line 1120
    :cond_3b6
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_3bb

    return v2

    .line 1121
    :cond_3bb
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_3c0

    return v2

    .line 1122
    :cond_3c0
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_3c5

    return v2

    .line 1123
    :cond_3c5
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_3ca

    return v2

    .line 1124
    :cond_3ca
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_3d1

    const/16 p0, 0x426a

    return p0

    .line 1125
    :cond_3d1
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_3d8

    const/16 p0, 0x520a

    return p0

    .line 1126
    :cond_3d8
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_3df

    const/16 p0, 0x5dc2

    return p0

    .line 1127
    :cond_3df
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_3e6

    const/16 p0, 0x426a

    return p0

    :cond_3e6
    return v2

    .line 1129
    :cond_3e7
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_481

    .line 1130
    const-class p1, Ljava/lang/Integer;

    const/16 v1, 0x4e28

    if-ne p0, p1, :cond_3f2

    return v1

    .line 1131
    :cond_3f2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_3f7

    return v0

    .line 1132
    :cond_3f7
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_3fc

    return v1

    .line 1133
    :cond_3fc
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_401

    return v1

    .line 1134
    :cond_401
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_406

    return v1

    .line 1135
    :cond_406
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_40b

    return v1

    .line 1136
    :cond_40b
    const-class p1, Ljava/math/BigInteger;

    const/16 v0, 0x2718

    if-ne p0, p1, :cond_412

    return v0

    .line 1137
    :cond_412
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_417

    return v1

    .line 1138
    :cond_417
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_41c

    return v1

    .line 1139
    :cond_41c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    if-ne p0, p1, :cond_421

    return v1

    .line 1140
    :cond_421
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_426

    return v1

    .line 1141
    :cond_426
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_42b

    return v1

    .line 1142
    :cond_42b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_430

    return v1

    .line 1143
    :cond_430
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_435

    return v1

    .line 1144
    :cond_435
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_43a

    return v1

    .line 1145
    :cond_43a
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_43f

    return v1

    .line 1146
    :cond_43f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_444

    return v1

    .line 1147
    :cond_444
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_449

    return v1

    .line 1148
    :cond_449
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_44e

    return v1

    .line 1149
    :cond_44e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_453

    return v1

    .line 1150
    :cond_453
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_458

    return v1

    .line 1151
    :cond_458
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_45d

    return v0

    .line 1152
    :cond_45d
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_462

    return v0

    .line 1153
    :cond_462
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_467

    return v0

    .line 1154
    :cond_467
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_46c

    return v0

    .line 1155
    :cond_46c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_471

    return v0

    .line 1156
    :cond_471
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_476

    return v1

    .line 1157
    :cond_476
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_47b

    return v1

    .line 1158
    :cond_47b
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_480

    return v0

    :cond_480
    return v2

    .line 1160
    :cond_481
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_523

    .line 1161
    const-class p1, Ljava/lang/Integer;

    const/16 v1, 0x2715

    if-ne p0, p1, :cond_48c

    return v1

    .line 1162
    :cond_48c
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-ne p0, p1, :cond_491

    return v1

    .line 1163
    :cond_491
    const-class p1, Ljava/math/BigDecimal;

    if-ne p0, p1, :cond_499

    const p0, 0x9c45

    return p0

    .line 1164
    :cond_499
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_49e

    return v1

    .line 1165
    :cond_49e
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_4a3

    return v2

    .line 1166
    :cond_4a3
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_4a8

    return v2

    .line 1167
    :cond_4a8
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_4ad

    return v1

    .line 1168
    :cond_4ad
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;

    if-ne p0, p1, :cond_4b2

    return v1

    .line 1169
    :cond_4b2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;

    if-ne p0, p1, :cond_4b7

    return v2

    .line 1170
    :cond_4b7
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;

    const/16 v3, 0x520d

    if-ne p0, p1, :cond_4be

    return v3

    .line 1171
    :cond_4be
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrInteger;

    if-ne p0, p1, :cond_4c3

    return v3

    .line 1172
    :cond_4c3
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;

    if-ne p0, p1, :cond_4c8

    return v3

    .line 1173
    :cond_4c8
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrByte;

    if-ne p0, p1, :cond_4cd

    return v1

    .line 1174
    :cond_4cd
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;

    if-ne p0, p1, :cond_4d2

    return v3

    .line 1175
    :cond_4d2
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;

    if-ne p0, p1, :cond_4d7

    return v1

    .line 1176
    :cond_4d7
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_4dc

    return v1

    .line 1177
    :cond_4dc
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;

    if-ne p0, p1, :cond_4e1

    return v1

    .line 1178
    :cond_4e1
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;

    if-ne p0, p1, :cond_4e6

    return v1

    .line 1179
    :cond_4e6
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;

    if-ne p0, p1, :cond_4ed

    const/16 p0, 0x61ad

    return p0

    .line 1180
    :cond_4ed
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;

    if-ne p0, p1, :cond_4f4

    const/16 p0, 0x61ad

    return p0

    .line 1181
    :cond_4f4
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;

    if-ne p0, p1, :cond_4fb

    const/16 p0, 0x61ad

    return p0

    .line 1182
    :cond_4fb
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrInteger;

    if-ne p0, p1, :cond_500

    return v0

    .line 1183
    :cond_500
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrLong;

    if-ne p0, p1, :cond_505

    return v0

    .line 1184
    :cond_505
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrDouble;

    if-ne p0, p1, :cond_50a

    return v0

    .line 1185
    :cond_50a
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFloat;

    if-ne p0, p1, :cond_50f

    return v0

    .line 1186
    :cond_50f
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;

    if-ne p0, p1, :cond_514

    return v0

    .line 1187
    :cond_514
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;

    if-ne p0, p1, :cond_519

    return v1

    .line 1188
    :cond_519
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;

    if-ne p0, p1, :cond_51e

    return v3

    .line 1189
    :cond_51e
    const-class p1, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrShort;

    if-ne p0, p1, :cond_523

    return v0

    :cond_523
    return v2
.end method
