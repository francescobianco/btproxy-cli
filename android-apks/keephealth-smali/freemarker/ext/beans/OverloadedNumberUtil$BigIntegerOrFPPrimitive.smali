.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BigIntegerOrFPPrimitive"
.end annotation


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 878
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 890
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .line 884
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method
