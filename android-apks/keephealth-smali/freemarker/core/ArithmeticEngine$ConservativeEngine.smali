.class public Lfreemarker/core/ArithmeticEngine$ConservativeEngine;
.super Lfreemarker/core/ArithmeticEngine;
.source "ArithmeticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ArithmeticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConservativeEngine"
.end annotation


# static fields
.field private static final BIGDECIMAL:I = 0x5

.field private static final BIGINTEGER:I = 0x4

.field private static final DOUBLE:I = 0x3

.field private static final FLOAT:I = 0x2

.field private static final INTEGER:I = 0x0

.field private static final LONG:I = 0x1

.field private static final classCodes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 287
    invoke-static {}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->createClassCodesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->classCodes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Lfreemarker/core/ArithmeticEngine;-><init>()V

    return-void
.end method

.method private static createClassCodesMap()Ljava/util/Map;
    .registers 3

    .line 546
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 548
    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-class v1, Ljava/math/BigInteger;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-class v1, Ljava/math/BigDecimal;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getClassCode(Ljava/lang/Number;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 561
    :try_start_0
    sget-object v0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->classCodes:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    if-nez p0, :cond_1b

    .line 564
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "The Number object was null."

    invoke-direct {p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 566
    :cond_1b
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown number type "

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v0
.end method

.method private static getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 572
    invoke-static {p0}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getClassCode(Ljava/lang/Number;)I

    move-result p0

    .line 573
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getClassCode(Ljava/lang/Number;)I

    move-result p1

    if-le p0, p1, :cond_c

    move v0, p0

    goto :goto_d

    :cond_c
    move v0, p1

    :goto_d
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    goto :goto_27

    :cond_15
    if-ge p0, p1, :cond_18

    goto :goto_19

    :cond_18
    move p0, p1

    :goto_19
    if-eq p0, v1, :cond_1d

    if-ne p0, v2, :cond_27

    :cond_1d
    const/4 p0, 0x5

    return p0

    :cond_1f
    if-ge p0, p1, :cond_22

    goto :goto_23

    :cond_22
    move p0, p1

    :goto_23
    const/4 p1, 0x1

    if-ne p0, p1, :cond_27

    return v1

    :cond_27
    :goto_27
    return v0
.end method

.method private static toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;
    .registers 2

    .line 598
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_11

    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_11
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 330
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    .line 361
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 362
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 363
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 368
    :cond_22
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 356
    :cond_28
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 357
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 358
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 353
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 350
    :cond_43
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 341
    :cond_51
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 342
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_75

    xor-long v0, v4, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_75

    .line 346
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_79

    .line 347
    :cond_75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_79
    return-object p1

    .line 332
    :cond_7a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 333
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int v0, p1, p2

    xor-int v1, v0, p1

    if-gez v1, :cond_98

    xor-int v1, v0, p2

    if-gez v1, :cond_98

    int-to-long v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_a1

    .line 338
    :cond_98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    .line 336
    :goto_a1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 291
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_74

    if-eq v0, v3, :cond_61

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_24

    .line 318
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 319
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 320
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    .line 325
    :cond_24
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 313
    :cond_2a
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 314
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 315
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1

    .line 308
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 309
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    cmpg-double v0, v4, p1

    if-gez v0, :cond_45

    move v1, v2

    goto :goto_4b

    :cond_45
    cmpl-double p1, v4, p1

    if-nez p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    return v1

    .line 303
    :cond_4c
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 304
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_5a

    move v1, v2

    goto :goto_60

    :cond_5a
    cmpl-float p1, p1, p2

    if-nez p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v3

    :goto_60
    return v1

    .line 298
    :cond_61
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 299
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-gez p1, :cond_6f

    move v1, v2

    goto :goto_73

    :cond_6f
    if-nez p1, :cond_72

    goto :goto_73

    :cond_72
    move v1, v3

    :goto_73
    return v1

    .line 293
    :cond_74
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_80

    move v1, v2

    goto :goto_84

    :cond_80
    if-ne p1, p2, :cond_83

    goto :goto_84

    :cond_83
    move v1, v3

    :goto_84
    return v1
.end method

.method public divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 460
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_85

    const/4 v2, 0x2

    if-eq v0, v2, :cond_77

    const/4 v2, 0x3

    if-eq v0, v2, :cond_69

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_36

    .line 496
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 497
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 498
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 499
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 500
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 501
    iget v1, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->minScale:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 502
    iget v1, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->roundingPolicy:I

    invoke-virtual {p1, p2, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 507
    :cond_36
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 484
    :cond_3c
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 485
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 486
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 487
    aget-object v1, v0, v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 p1, 0x0

    .line 488
    aget-object p1, v0, p1

    return-object p1

    .line 490
    :cond_56
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 491
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 492
    iget p2, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->minScale:I

    iget v1, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->roundingPolicy:I

    invoke-virtual {v0, p1, p2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 481
    :cond_69
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 478
    :cond_77
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 470
    :cond_85
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 471
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 472
    rem-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9b

    .line 473
    div-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_9b
    long-to-double v0, v0

    long-to-double p1, p1

    div-double/2addr v0, p1

    .line 475
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 462
    :cond_a3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 463
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 464
    rem-int v0, p1, p2

    if-nez v0, :cond_b5

    .line 465
    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b5
    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public modulus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 512
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1b

    .line 536
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    .line 531
    :cond_1b
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string p2, "Can\'t calculate remainder on BigDecimals"

    invoke-direct {p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 526
    :cond_23
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 527
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 528
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 523
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 520
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    rem-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 517
    :cond_4c
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    rem-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 514
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    rem-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 416
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_61

    const/4 v1, 0x2

    if-eq v0, v1, :cond_53

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    const/4 v1, 0x5

    if-ne v0, v1, :cond_32

    .line 447
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 448
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 449
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    iget v0, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->maxScale:I

    if-le p2, v0, :cond_31

    iget p2, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->maxScale:I

    iget v0, p0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->roundingPolicy:I

    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_31
    return-object p1

    .line 455
    :cond_32
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 442
    :cond_38
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 443
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 444
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 439
    :cond_45
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 436
    :cond_53
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 427
    :cond_61
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 428
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_85

    .line 430
    div-long v0, v4, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_78

    goto :goto_85

    .line 433
    :cond_78
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_89

    .line 432
    :cond_85
    :goto_85
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_89
    return-object p1

    .line 418
    :cond_8a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 419
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    mul-int v0, p1, p2

    if-eqz p1, :cond_a3

    .line 421
    div-int v1, v0, p1

    if-ne v1, p2, :cond_9b

    goto :goto_a3

    :cond_9b
    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    .line 424
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_a7

    .line 423
    :cond_a3
    :goto_a3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_a7
    return-object p1
.end method

.method public subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 373
    invoke-static {p1, p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->getCommonClassCode(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    .line 404
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 405
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine;->access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 406
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 411
    :cond_22
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 399
    :cond_28
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    .line 400
    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    .line 401
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 396
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 393
    :cond_43
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 384
    :cond_51
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 385
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_75

    not-long v0, v2

    xor-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-gez v0, :cond_75

    .line 389
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->toBigInteger(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_79

    .line 390
    :cond_75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_79
    return-object p1

    .line 375
    :cond_7a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 376
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int v0, p1, p2

    xor-int v1, v0, p1

    if-gez v1, :cond_94

    not-int v1, p2

    xor-int/2addr v1, v0

    if-gez v1, :cond_94

    int-to-long v0, p1

    int-to-long p1, p2

    sub-long/2addr v0, p1

    .line 380
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_98

    .line 381
    :cond_94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_98
    return-object p1
.end method

.method public toNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    .line 541
    # invokes: Lfreemarker/core/ArithmeticEngine;->toBigDecimalOrDouble(Ljava/lang/String;)Ljava/lang/Number;
    invoke-static {p1}, Lfreemarker/core/ArithmeticEngine;->access$100(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    .line 542
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_c

    invoke-static {p1}, Lfreemarker/template/utility/OptimizerUtil;->optimizeNumberRepresentation(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    :cond_c
    return-object p1
.end method
