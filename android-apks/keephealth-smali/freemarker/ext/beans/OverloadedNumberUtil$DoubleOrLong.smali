.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleOrLong"
.end annotation


# instance fields
.field private final w:J


# direct methods
.method constructor <init>(Ljava/lang/Double;J)V
    .registers 4

    .line 694
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrWholeNumber;-><init>(Ljava/lang/Double;)V

    .line 695
    iput-wide p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;->w:J

    return-void
.end method


# virtual methods
.method public longValue()J
    .registers 3

    .line 700
    iget-wide v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrLong;->w:J

    return-wide v0
.end method
