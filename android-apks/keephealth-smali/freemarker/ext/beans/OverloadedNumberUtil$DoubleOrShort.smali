.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleOrShort"
.end annotation


# instance fields
.field private final w:S


# direct methods
.method constructor <init>(Ljava/lang/Double;S)V
    .registers 3

    .line 626
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;-><init>(Ljava/lang/Double;)V

    .line 627
    iput-short p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;->w:S

    return-void
.end method


# virtual methods
.method public intValue()I
    .registers 2

    .line 637
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;->w:S

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 642
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;->w:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .line 632
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrShort;->w:S

    return v0
.end method
