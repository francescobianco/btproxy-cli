.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BigIntegerOrPrimitive"
.end annotation


# instance fields
.field protected final n:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 832
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 833
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;->n:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 838
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;->n:Ljava/math/BigInteger;

    return-object v0
.end method
