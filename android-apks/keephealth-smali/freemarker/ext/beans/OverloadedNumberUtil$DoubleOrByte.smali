.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleOrByte"
.end annotation


# instance fields
.field private final w:B


# direct methods
.method constructor <init>(Ljava/lang/Double;B)V
    .registers 3

    .line 595
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;-><init>(Ljava/lang/Double;)V

    .line 596
    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .line 601
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;->w:B

    return v0
.end method

.method public intValue()I
    .registers 2

    .line 611
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;->w:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 616
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;->w:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .line 606
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrByte;->w:B

    int-to-short v0, v0

    return v0
.end method
