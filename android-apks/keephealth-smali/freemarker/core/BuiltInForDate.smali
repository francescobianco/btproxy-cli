.class abstract Lfreemarker/core/BuiltInForDate;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInForDate.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method

.method static newNonDateException(Lfreemarker/core/Environment;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 50
    invoke-static {p2, p0}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    goto :goto_f

    .line 52
    :cond_7
    new-instance v0, Lfreemarker/core/NonDateException;

    const-string v1, "date"

    invoke-direct {v0, p2, p1, v1, p0}, Lfreemarker/core/NonDateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V

    move-object p0, v0

    :goto_f
    return-object p0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lfreemarker/core/BuiltInForDate;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_1b

    .line 34
    check-cast v0, Lfreemarker/template/TemplateDateModel;

    .line 35
    iget-object v1, p0, Lfreemarker/core/BuiltInForDate;->target:Lfreemarker/core/Expression;

    invoke-static {v0, v1}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lfreemarker/core/BuiltInForDate;->calculateResult(Ljava/util/Date;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1b
    iget-object v1, p0, Lfreemarker/core/BuiltInForDate;->target:Lfreemarker/core/Expression;

    invoke-static {p1, v0, v1}, Lfreemarker/core/BuiltInForDate;->newNonDateException(Lfreemarker/core/Environment;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method protected abstract calculateResult(Ljava/util/Date;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
