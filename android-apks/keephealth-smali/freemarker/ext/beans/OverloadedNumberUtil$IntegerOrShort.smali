.class Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntegerOrShort"
.end annotation


# instance fields
.field private final w:S


# direct methods
.method constructor <init>(Ljava/lang/Integer;S)V
    .registers 3

    .line 532
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;-><init>(Ljava/lang/Integer;)V

    .line 533
    iput-short p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;->w:S

    return-void
.end method


# virtual methods
.method public shortValue()S
    .registers 2

    .line 538
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrShort;->w:S

    return v0
.end method
