.class final Lfreemarker/core/BoundedRangeModel;
.super Lfreemarker/core/RangeModel;
.source "BoundedRangeModel.java"


# instance fields
.field private final affectedByStringSlicingBug:Z

.field private final rightAdaptive:Z

.field private final size:I

.field private final step:I


# direct methods
.method constructor <init>(IIZZ)V
    .registers 6

    .line 38
    invoke-direct {p0, p1}, Lfreemarker/core/RangeModel;-><init>(I)V

    if-gt p1, p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 39
    :goto_8
    iput v0, p0, Lfreemarker/core/BoundedRangeModel;->step:I

    sub-int/2addr p2, p1

    .line 40
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lfreemarker/core/BoundedRangeModel;->size:I

    .line 41
    iput-boolean p4, p0, Lfreemarker/core/BoundedRangeModel;->rightAdaptive:Z

    .line 42
    iput-boolean p3, p0, Lfreemarker/core/BoundedRangeModel;->affectedByStringSlicingBug:Z

    return-void
.end method


# virtual methods
.method getStep()I
    .registers 2

    .line 51
    iget v0, p0, Lfreemarker/core/BoundedRangeModel;->step:I

    return v0
.end method

.method isAffectedByStringSlicingBug()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lfreemarker/core/BoundedRangeModel;->affectedByStringSlicingBug:Z

    return v0
.end method

.method isRightAdaptive()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lfreemarker/core/BoundedRangeModel;->rightAdaptive:Z

    return v0
.end method

.method isRightUnbounded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 46
    iget v0, p0, Lfreemarker/core/BoundedRangeModel;->size:I

    return v0
.end method
