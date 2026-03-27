.class Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongOrShort"
.end annotation


# instance fields
.field private final w:S


# direct methods
.method constructor <init>(Ljava/lang/Long;S)V
    .registers 3

    .line 464
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;-><init>(Ljava/lang/Long;)V

    .line 465
    iput-short p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;->w:S

    return-void
.end method


# virtual methods
.method public shortValue()S
    .registers 2

    .line 470
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrShort;->w:S

    return v0
.end method
