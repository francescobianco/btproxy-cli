.class final Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatOrShort"
.end annotation


# instance fields
.field private final w:S


# direct methods
.method constructor <init>(Ljava/lang/Float;S)V
    .registers 3

    .line 786
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;-><init>(Ljava/lang/Float;)V

    .line 787
    iput-short p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;->w:S

    return-void
.end method


# virtual methods
.method public intValue()I
    .registers 2

    .line 797
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;->w:S

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 802
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;->w:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .line 792
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrShort;->w:S

    return v0
.end method
