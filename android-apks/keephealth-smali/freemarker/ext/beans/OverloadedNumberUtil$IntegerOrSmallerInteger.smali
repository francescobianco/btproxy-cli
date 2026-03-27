.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntegerOrSmallerInteger"
.end annotation


# instance fields
.field private final n:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;)V
    .registers 2

    .line 495
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 496
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 501
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public intValue()I
    .registers 2

    .line 506
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
