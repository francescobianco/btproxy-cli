.class final Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatOrInteger"
.end annotation


# instance fields
.field private final w:I


# direct methods
.method constructor <init>(Ljava/lang/Float;I)V
    .registers 3

    .line 812
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;-><init>(Ljava/lang/Float;)V

    .line 813
    iput p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;->w:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .registers 2

    .line 818
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;->w:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 823
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrInteger;->w:I

    int-to-long v0, v0

    return-wide v0
.end method
