.class Lfreemarker/core/BuiltInsForNodes$ancestorsBI;
.super Lfreemarker/core/BuiltInForNode;
.source "BuiltInsForNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ancestorsBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNode;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Lfreemarker/template/TemplateNodeModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 42
    new-instance v0, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;

    invoke-direct {v0, p2}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;-><init>(Lfreemarker/core/Environment;)V

    .line 43
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getParentNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_13

    .line 45
    invoke-virtual {v0, p1}, Lfreemarker/core/BuiltInsForNodes$AncestorSequence;->add(Ljava/lang/Object;)V

    .line 46
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getParentNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    goto :goto_9

    :cond_13
    return-object v0
.end method
