.class final Lfreemarker/core/NonListableRightUnboundedRangeModel;
.super Lfreemarker/core/RightUnboundedRangeModel;
.source "NonListableRightUnboundedRangeModel.java"


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lfreemarker/core/RightUnboundedRangeModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
