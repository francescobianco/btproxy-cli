.class final Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatOrByte"
.end annotation


# instance fields
.field private final w:B


# direct methods
.method constructor <init>(Ljava/lang/Float;B)V
    .registers 3

    .line 755
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;-><init>(Ljava/lang/Float;)V

    .line 756
    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .line 761
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;->w:B

    return v0
.end method

.method public intValue()I
    .registers 2

    .line 771
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;->w:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 776
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;->w:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .line 766
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrByte;->w:B

    int-to-short v0, v0

    return v0
.end method
