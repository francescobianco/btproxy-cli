.class abstract Lfreemarker/core/BuiltInForMarkupOutput;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInForMarkupOutput.java"


# direct methods
.method constructor <init>()V
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

    .line 31
    iget-object v0, p0, Lfreemarker/core/BuiltInForMarkupOutput;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v1, :cond_11

    .line 35
    check-cast v0, Lfreemarker/core/TemplateMarkupOutputModel;

    invoke-virtual {p0, v0}, Lfreemarker/core/BuiltInForMarkupOutput;->calculateResult(Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 33
    :cond_11
    new-instance v1, Lfreemarker/core/NonMarkupOutputException;

    iget-object v2, p0, Lfreemarker/core/BuiltInForMarkupOutput;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonMarkupOutputException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected abstract calculateResult(Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
