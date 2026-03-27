.class public abstract Lfreemarker/core/ArithmeticEngine;
.super Ljava/lang/Object;
.source "ArithmeticEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/ArithmeticEngine$ConservativeEngine;,
        Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;
    }
.end annotation


# static fields
.field public static final BIGDECIMAL_ENGINE:Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

.field public static final CONSERVATIVE_ENGINE:Lfreemarker/core/ArithmeticEngine$ConservativeEngine;


# instance fields
.field protected maxScale:I

.field protected minScale:I

.field protected roundingPolicy:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

    invoke-direct {v0}, Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;-><init>()V

    sput-object v0, Lfreemarker/core/ArithmeticEngine;->BIGDECIMAL_ENGINE:Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

    .line 50
    new-instance v0, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;

    invoke-direct {v0}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;-><init>()V

    sput-object v0, Lfreemarker/core/ArithmeticEngine;->CONSERVATIVE_ENGINE:Lfreemarker/core/ArithmeticEngine$ConservativeEngine;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 68
    iput v0, p0, Lfreemarker/core/ArithmeticEngine;->minScale:I

    .line 69
    iput v0, p0, Lfreemarker/core/ArithmeticEngine;->maxScale:I

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lfreemarker/core/ArithmeticEngine;->roundingPolicy:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .registers 1

    .line 37
    invoke-static {p0}, Lfreemarker/core/ArithmeticEngine;->toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Number;
    .registers 1

    .line 37
    invoke-static {p0}, Lfreemarker/core/ArithmeticEngine;->toBigDecimalOrDouble(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private static toBigDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .registers 4

    .line 609
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 610
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 612
    :cond_7
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7a

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7a

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7a

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_18

    goto :goto_7a

    .line 615
    :cond_18
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_24

    .line 616
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 623
    :cond_24
    :try_start_24
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object v0

    .line 625
    :catch_2e
    invoke-static {p0}, Lfreemarker/template/utility/NumberUtil;->isInfinite(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 626
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s impossible to convert an infinte value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") to BigDecimal."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_61
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse this as BigDecimal number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private static toBigDecimalOrDouble(Ljava/lang/String;)Ljava/lang/Number;
    .registers 4

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5c

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_27

    .line 637
    const-string v2, "INF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_20
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 638
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_27
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_3a

    .line 639
    const-string v2, "NaN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 640
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3a
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_5c

    const/4 v0, 0x1

    .line 641
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_5c

    const-string v0, "-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "-Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_55
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 642
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 645
    :cond_5c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract modulus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public setMaxScale(I)V
    .registers 3

    .line 88
    iget v0, p0, Lfreemarker/core/ArithmeticEngine;->minScale:I

    if-lt p1, v0, :cond_7

    .line 91
    iput p1, p0, Lfreemarker/core/ArithmeticEngine;->maxScale:I

    return-void

    .line 89
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxScale < minScale"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinScale(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 80
    iput p1, p0, Lfreemarker/core/ArithmeticEngine;->minScale:I

    return-void

    .line 78
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minScale < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRoundingPolicy(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-eq p1, v0, :cond_20

    const/4 v0, 0x6

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x7

    if-eq p1, v0, :cond_20

    if-nez p1, :cond_18

    goto :goto_20

    .line 103
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid rounding policy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_20
    :goto_20
    iput p1, p0, Lfreemarker/core/ArithmeticEngine;->roundingPolicy:I

    return-void
.end method

.method public abstract subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract toNumber(Ljava/lang/String;)Ljava/lang/Number;
.end method
