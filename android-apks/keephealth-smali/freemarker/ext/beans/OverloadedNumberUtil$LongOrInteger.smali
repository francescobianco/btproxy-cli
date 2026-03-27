.class Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongOrInteger"
.end annotation


# instance fields
.field private final w:I


# direct methods
.method constructor <init>(Ljava/lang/Long;I)V
    .registers 3

    .line 480
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;-><init>(Ljava/lang/Long;)V

    .line 481
    iput p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;->w:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .registers 2

    .line 486
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrInteger;->w:I

    return v0
.end method
