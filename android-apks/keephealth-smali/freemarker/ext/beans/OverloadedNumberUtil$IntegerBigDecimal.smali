.class final Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntegerBigDecimal"
.end annotation


# instance fields
.field private final n:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>(Ljava/math/BigDecimal;)V
    .registers 2

    .line 408
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 409
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    .line 418
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 414
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    return-object v0
.end method
