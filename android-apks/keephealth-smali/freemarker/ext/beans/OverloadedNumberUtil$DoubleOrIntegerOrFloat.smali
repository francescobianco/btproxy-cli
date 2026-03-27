.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleOrIntegerOrFloat"
.end annotation


# instance fields
.field private final w:I


# direct methods
.method constructor <init>(Ljava/lang/Double;I)V
    .registers 3

    .line 652
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;-><init>(Ljava/lang/Double;)V

    .line 653
    iput p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;->w:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .registers 2

    .line 658
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;->w:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 663
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrIntegerOrFloat;->w:I

    int-to-long v0, v0

    return-wide v0
.end method
