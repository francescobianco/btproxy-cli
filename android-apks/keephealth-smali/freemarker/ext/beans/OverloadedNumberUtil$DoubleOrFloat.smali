.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleOrFloat"
.end annotation


# instance fields
.field private final n:Ljava/lang/Double;


# direct methods
.method constructor <init>(Ljava/lang/Double;)V
    .registers 2

    .line 709
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 710
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 720
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .line 715
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 725
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    return-object v0
.end method
