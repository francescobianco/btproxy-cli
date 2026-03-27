.class final Lfreemarker/core/ListableRightUnboundedRangeModel;
.super Lfreemarker/core/RightUnboundedRangeModel;
.source "ListableRightUnboundedRangeModel.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lfreemarker/core/RightUnboundedRangeModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 46
    new-instance v0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;

    invoke-direct {v0, p0}, Lfreemarker/core/ListableRightUnboundedRangeModel$1;-><init>(Lfreemarker/core/ListableRightUnboundedRangeModel;)V

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const v0, 0x7fffffff

    return v0
.end method
