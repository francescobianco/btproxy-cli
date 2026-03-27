.class abstract Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;
.super Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;
.source "BuiltInsForOutputFormatRelated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForOutputFormatRelated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractConverterBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->target:Lfreemarker/core/Expression;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->outputFormat:Lfreemarker/core/MarkupOutputFormat;

    .line 53
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 54
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->calculateResult(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 56
    :cond_1a
    check-cast v0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 57
    invoke-interface {v0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object p1

    if-eq p1, v1, :cond_54

    .line 59
    invoke-virtual {v1}, Lfreemarker/core/MarkupOutputFormat;->isOutputFormatMixingAllowed()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_54

    .line 64
    :cond_29
    invoke-virtual {p1, v0}, Lfreemarker/core/MarkupOutputFormat;->getSourcePlainText(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 73
    invoke-virtual {v1, v0}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 66
    :cond_34
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->target:Lfreemarker/core/Expression;

    iget-object v4, p0, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;->key:Ljava/lang/String;

    new-instance v6, Lfreemarker/core/_DelayedToString;

    invoke-direct {v6, p1}, Lfreemarker/core/_DelayedToString;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lfreemarker/core/_DelayedToString;

    invoke-direct {v8, v1}, Lfreemarker/core/_DelayedToString;-><init>(Ljava/lang/Object;)V

    const-string v9, ". Conversion wasn\'t possible."

    const-string v3, "The left side operand of ?"

    const-string v5, " is in "

    const-string v7, " format, which differs from the current output format, "

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v0

    :cond_54
    :goto_54
    return-object v0
.end method

.method protected abstract calculateResult(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
