.class abstract Lfreemarker/core/RightUnboundedRangeModel;
.super Lfreemarker/core/RangeModel;
.source "RightUnboundedRangeModel.java"


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lfreemarker/core/RangeModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method final getStep()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final isAffectedByStringSlicingBug()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final isRightAdaptive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final isRightUnbounded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
