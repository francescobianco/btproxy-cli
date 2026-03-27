.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "OverloadedNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FloatOrWholeNumber"
.end annotation


# instance fields
.field private final n:Ljava/lang/Float;


# direct methods
.method constructor <init>(Ljava/lang/Float;)V
    .registers 2

    .line 734
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    .line 735
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public floatValue()F
    .registers 2

    .line 745
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method protected getSourceNumber()Ljava/lang/Number;
    .registers 2

    .line 740
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    return-object v0
.end method
