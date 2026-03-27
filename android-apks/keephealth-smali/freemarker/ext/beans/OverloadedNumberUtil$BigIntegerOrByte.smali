.class final Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BigIntegerOrByte"
.end annotation


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 846
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method
