.class Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortOrByte"
.end annotation


# instance fields
.field private final n:Ljava/lang/Short;

.field private final w:B


# direct methods
.method protected constructor <init>(Ljava/lang/Short;B)V
    .registers 3

    .line 548
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 549
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    .line 550
    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .line 565
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->w:B

    return v0
.end method

.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 555
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    return-object v0
.end method

.method public shortValue()S
    .registers 2

    .line 560
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method
