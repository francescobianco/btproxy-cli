.class Lfreemarker/core/BuiltInsForNodes$previousSiblingBI;
.super Lfreemarker/core/BuiltInForNodeEx;
.source "BuiltInsForNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "previousSiblingBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNodeEx;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Lfreemarker/template/TemplateNodeModelEx;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModelEx;->getPreviousSibling()Lfreemarker/template/TemplateNodeModelEx;

    move-result-object p1

    return-object p1
.end method
