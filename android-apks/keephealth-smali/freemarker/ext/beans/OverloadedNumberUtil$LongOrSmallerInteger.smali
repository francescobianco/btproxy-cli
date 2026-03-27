.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LongOrSmallerInteger"
.end annotation


# instance fields
.field private final n:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/lang/Long;)V
    .registers 2

    .line 427
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 428
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;->n:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 433
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;->n:Ljava/lang/Long;

    return-object v0
.end method

.method public longValue()J
    .registers 3

    .line 438
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$LongOrSmallerInteger;->n:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
