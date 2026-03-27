.class Lfreemarker/core/BuiltInsForStringsMisc$evalBI;
.super Lfreemarker/core/OutputFormatBoundBuiltIn;
.source "BuiltInsForStringsMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "evalBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lfreemarker/core/OutputFormatBoundBuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->target:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/BuiltInForString;->getTargetString(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const-string v0, "("

    .line 65
    invoke-virtual {p0}, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    .line 70
    :try_start_6
    invoke-virtual {v1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    .line 72
    new-instance v3, Lfreemarker/core/SimpleCharStream;

    new-instance v4, Ljava/io/StringReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    add-int/2addr p1, v0

    const v5, -0x3b9aca00

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, p1}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 76
    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result p1

    invoke-virtual {v3, p1}, Lfreemarker/core/SimpleCharStream;->setTabSize(I)V

    .line 77
    new-instance p1, Lfreemarker/core/FMParserTokenManager;

    invoke-direct {p1, v3}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    .line 79
    invoke-virtual {p1, v0}, Lfreemarker/core/FMParserTokenManager;->SwitchTo(I)V

    .line 82
    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    iget-object v3, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eq v0, v3, :cond_56

    .line 83
    new-instance v0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;

    iget-object v3, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->outputFormat:Lfreemarker/core/OutputFormat;

    iget v4, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->autoEscapingPolicy:I

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;-><init>(Lfreemarker/core/ParserConfiguration;Lfreemarker/core/OutputFormat;Ljava/lang/Integer;)V

    move-object v2, v0

    .line 87
    :cond_56
    new-instance v0, Lfreemarker/core/FMParser;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;ZLfreemarker/core/FMParserTokenManager;Lfreemarker/core/ParserConfiguration;)V

    .line 90
    invoke-virtual {v0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object p1
    :try_end_60
    .catch Lfreemarker/core/TokenMgrError; {:try_start_6 .. :try_end_60} :catch_85
    .catch Lfreemarker/core/ParseException; {:try_start_6 .. :try_end_60} :catch_83

    .line 103
    :try_start_60
    invoke-virtual {p1, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_64
    .catch Lfreemarker/template/TemplateException; {:try_start_60 .. :try_end_64} :catch_65

    return-object p1

    :catch_65
    move-exception p1

    .line 105
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    iget-object v4, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->key:Ljava/lang/String;

    new-instance v7, Lfreemarker/core/_DelayedGetMessageWithoutStackTop;

    invoke-direct {v7, p1}, Lfreemarker/core/_DelayedGetMessageWithoutStackTop;-><init>(Lfreemarker/template/TemplateException;)V

    const-string v8, "\n---end-message---"

    const-string v9, "\n\nThe failing expression:"

    const-string v3, "Failed to \"?"

    const-string v5, "\" string with this error:\n\n"

    const-string v6, "---begin-message---\n"

    move-object v1, p0

    move-object v2, p2

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :catch_83
    move-exception p1

    goto :goto_8b

    :catch_85
    move-exception p1

    .line 92
    :try_start_86
    invoke-virtual {p1, v1}, Lfreemarker/core/TokenMgrError;->toParseException(Lfreemarker/template/Template;)Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
    :try_end_8b
    .catch Lfreemarker/core/ParseException; {:try_start_86 .. :try_end_8b} :catch_83

    .line 95
    :goto_8b
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsMisc$evalBI;->key:Ljava/lang/String;

    new-instance v5, Lfreemarker/core/_DelayedGetMessage;

    invoke-direct {v5, p1}, Lfreemarker/core/_DelayedGetMessage;-><init>(Ljava/lang/Throwable;)V

    const-string v6, "\n---end-message---"

    const-string v7, "\n\nThe failing expression:"

    const-string v1, "Failed to \"?"

    const-string v3, "\" string with this error:\n\n"

    const-string v4, "---begin-message---\n"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method
