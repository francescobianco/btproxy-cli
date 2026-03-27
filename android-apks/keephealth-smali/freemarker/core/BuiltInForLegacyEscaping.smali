.class abstract Lfreemarker/core/BuiltInForLegacyEscaping;
.super Lfreemarker/core/BuiltInBannedWhenAutoEscaping;
.source "BuiltInForLegacyEscaping.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lfreemarker/core/BuiltInBannedWhenAutoEscaping;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lfreemarker/core/BuiltInForLegacyEscaping;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lfreemarker/core/BuiltInForLegacyEscaping;->target:Lfreemarker/core/Expression;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 36
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lfreemarker/core/BuiltInForLegacyEscaping;->calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 38
    :cond_18
    check-cast v1, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 39
    invoke-interface {v1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/BuiltInForLegacyEscaping;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfreemarker/core/MarkupOutputFormat;->isLegacyBuiltInBypassed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    .line 42
    :cond_27
    new-instance v1, Lfreemarker/core/NonStringException;

    iget-object v2, p0, Lfreemarker/core/BuiltInForLegacyEscaping;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonStringException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method abstract calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
