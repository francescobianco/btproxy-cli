.class public final Lfreemarker/core/TemplateFormatUtil;
.super Ljava/lang/Object;
.source "TemplateFormatUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHasNoParameters(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 42
    :cond_7
    new-instance p0, Lfreemarker/core/InvalidFormatParametersException;

    const-string v0, "This number format doesn\'t support any parameters."

    invoke-direct {p0, v0}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNonNullDate(Lfreemarker/template/TemplateDateModel;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 71
    :cond_7
    const-class v0, Ljava/util/Date;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lfreemarker/core/EvalUtil;->newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public static getNonNullNumber(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/core/UnformattableValueException;
        }
    .end annotation

    .line 55
    invoke-interface {p0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 57
    :cond_7
    const-class v0, Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lfreemarker/core/EvalUtil;->newModelHasStoredNullException(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method
