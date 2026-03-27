.class Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongOrByte"
.end annotation


# instance fields
.field private final w:B


# direct methods
.method constructor <init>(Ljava/lang/Long;B)V
    .registers 3

    .line 448
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;-><init>(Ljava/lang/Long;)V

    .line 449
    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .line 454
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrByte;->w:B

    return v0
.end method
