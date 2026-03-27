.class Lfreemarker/core/Interpret;
.super Lfreemarker/core/OutputFormatBoundBuiltIn;
.source "Interpret.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Interpret$TemplateProcessorModel;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lfreemarker/core/OutputFormatBoundBuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 69
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v4, "anonymous_interpreted"

    if-eqz v0, :cond_4b

    .line 70
    new-instance v0, Lfreemarker/core/DynamicKeyName;

    iget-object v5, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    new-instance v6, Lfreemarker/core/NumberLiteral;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v1}, Lfreemarker/core/NumberLiteral;-><init>(Ljava/lang/Number;)V

    invoke-direct {v0, v5, v6}, Lfreemarker/core/DynamicKeyName;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    iget-object v1, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, v1}, Lfreemarker/core/DynamicKeyName;->copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Expression;

    .line 71
    check-cast v3, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    if-le v1, v2, :cond_51

    .line 72
    new-instance v1, Lfreemarker/core/DynamicKeyName;

    iget-object v3, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    new-instance v4, Lfreemarker/core/NumberLiteral;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v2}, Lfreemarker/core/NumberLiteral;-><init>(Ljava/lang/Number;)V

    invoke-direct {v1, v3, v4}, Lfreemarker/core/DynamicKeyName;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    iget-object v2, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v2}, Lfreemarker/core/DynamicKeyName;->copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Expression;

    invoke-virtual {v1, p1}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    .line 74
    :cond_4b
    instance-of v0, v3, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_e8

    .line 75
    iget-object v0, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    .line 82
    :cond_51
    :goto_51
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    sget v2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_26:I

    if-lt v1, v2, :cond_6a

    .line 84
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentTemplate()Lfreemarker/template/Template;

    move-result-object v1

    goto :goto_6e

    :cond_6a
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    .line 88
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v3

    iget-object v5, p0, Lfreemarker/core/Interpret;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eq v3, v5, :cond_89

    .line 91
    new-instance v3, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;

    iget-object v5, p0, Lfreemarker/core/Interpret;->outputFormat:Lfreemarker/core/OutputFormat;

    iget v6, p0, Lfreemarker/core/Interpret;->autoEscapingPolicy:I

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v2, v5, v6}, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;-><init>(Lfreemarker/core/ParserConfiguration;Lfreemarker/core/OutputFormat;Ljava/lang/Integer;)V

    move-object v6, v3

    goto :goto_8a

    :cond_89
    move-object v6, v2

    .line 94
    :goto_8a
    new-instance v8, Lfreemarker/template/Template;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9c

    invoke-virtual {v1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_9e

    :cond_9c
    const-string v3, "nameless_template"

    :goto_9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_bf} :catch_cc

    .line 109
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v8, p1}, Lfreemarker/template/Template;->setLocale(Ljava/util/Locale;)V

    .line 110
    new-instance p1, Lfreemarker/core/Interpret$TemplateProcessorModel;

    invoke-direct {p1, p0, v8}, Lfreemarker/core/Interpret$TemplateProcessorModel;-><init>(Lfreemarker/core/Interpret;Lfreemarker/template/Template;)V

    return-object p1

    :catch_cc
    move-exception v0

    .line 101
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    iget-object v3, p0, Lfreemarker/core/Interpret;->key:Ljava/lang/String;

    new-instance v6, Lfreemarker/core/_DelayedGetMessage;

    invoke-direct {v6, v0}, Lfreemarker/core/_DelayedGetMessage;-><init>(Ljava/lang/Throwable;)V

    const-string v7, "\n---end-message---"

    const-string v8, "\n\nThe failed expression:"

    const-string v2, "Template parsing with \"?"

    const-string v4, "\" has failed with this error:\n\n"

    const-string v5, "---begin-message---\n"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1

    .line 77
    :cond_e8
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v4, p0, Lfreemarker/core/Interpret;->target:Lfreemarker/core/Expression;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lfreemarker/template/TemplateSequenceModel;

    aput-object v6, v5, v1

    const-class v1, Lfreemarker/template/TemplateScalarModel;

    aput-object v1, v5, v2

    const-string v6, "sequence or string"

    move-object v1, v0

    move-object v2, v4

    move-object v4, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method
