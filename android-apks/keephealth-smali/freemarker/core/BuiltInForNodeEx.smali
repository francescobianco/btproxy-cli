.class public abstract Lfreemarker/core/BuiltInForNodeEx;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInForNodeEx.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lfreemarker/core/BuiltInForNodeEx;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lfreemarker/template/TemplateNodeModelEx;

    if-eqz v1, :cond_11

    .line 31
    check-cast v0, Lfreemarker/template/TemplateNodeModelEx;

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/BuiltInForNodeEx;->calculateResult(Lfreemarker/template/TemplateNodeModelEx;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 33
    :cond_11
    new-instance v1, Lfreemarker/core/NonExtendedNodeException;

    iget-object v2, p0, Lfreemarker/core/BuiltInForNodeEx;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonExtendedNodeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method abstract calculateResult(Lfreemarker/template/TemplateNodeModelEx;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public bridge synthetic getCanonicalForm()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Lfreemarker/core/BuiltIn;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
