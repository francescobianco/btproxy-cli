.class Lfreemarker/core/BuiltInsForNumbers$absBI;
.super Lfreemarker/core/BuiltInForNumber;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "absBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNumber;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 87
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 88
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_12

    .line 90
    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-int p1, p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    :cond_12
    return-object p2

    .line 94
    :cond_13
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_29

    .line 95
    check-cast p1, Ljava/math/BigDecimal;

    .line 96
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_28

    .line 97
    new-instance p2, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    :cond_28
    return-object p2

    .line 101
    :cond_29
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_41

    .line 102
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_40

    .line 104
    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-double v0, v0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(D)V

    return-object p1

    :cond_40
    return-object p2

    .line 108
    :cond_41
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_57

    .line 109
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_56

    .line 111
    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-float p1, p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(F)V

    :cond_56
    return-object p2

    .line 115
    :cond_57
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6f

    .line 116
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_6e

    .line 118
    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    return-object p1

    :cond_6e
    return-object p2

    .line 122
    :cond_6f
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_82

    .line 123
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    if-gez p1, :cond_81

    .line 125
    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-int p1, p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    :cond_81
    return-object p2

    .line 129
    :cond_82
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_95

    .line 130
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-gez p1, :cond_94

    .line 132
    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-int p1, p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    :cond_94
    return-object p2

    .line 136
    :cond_95
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_ab

    .line 137
    check-cast p1, Ljava/math/BigInteger;

    .line 138
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_aa

    .line 139
    new-instance p2, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    :cond_aa
    return-object p2

    .line 144
    :cond_ab
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    const-string v0, "Unsupported number class: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p2
.end method
