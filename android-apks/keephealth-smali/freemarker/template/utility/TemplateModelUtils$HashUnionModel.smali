.class Lfreemarker/template/utility/TemplateModelUtils$HashUnionModel;
.super Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel;
.source "TemplateModelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/TemplateModelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashUnionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel<",
        "Lfreemarker/template/TemplateHashModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/template/TemplateHashModel;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel;-><init>(Ljava/util/List;)V

    return-void
.end method
