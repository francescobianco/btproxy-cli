.class final Lfreemarker/core/StringLiteral;
.super Lfreemarker/core/Expression;
.source "StringLiteral.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# instance fields
.field private dynamicValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    return-void
.end method

.method private checkIndex(I)V
    .registers 3

    .line 198
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    return-void

    .line 199
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-nez v0, :cond_c

    .line 90
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object v0, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 100
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 101
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_22

    goto :goto_28

    :cond_22
    check-cast v4, Lfreemarker/core/Interpolation;

    .line 103
    invoke-virtual {v4, p1}, Lfreemarker/core/Interpolation;->calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object v4

    :goto_28
    if-eqz v2, :cond_40

    .line 105
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_39

    .line 106
    invoke-interface {v2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v4

    goto :goto_3b

    :cond_39
    check-cast v4, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 108
    :goto_3b
    invoke-static {p0, v2, v4}, Lfreemarker/core/EvalUtil;->concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v2

    goto :goto_13

    .line 110
    :cond_40
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_52

    .line 111
    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_4e

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_13

    .line 115
    :cond_4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 118
    :cond_52
    move-object v2, v4

    check-cast v2, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v3, :cond_13

    .line 120
    invoke-interface {v2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v4

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v3

    .line 122
    invoke-static {p0, v3, v2}, Lfreemarker/core/EvalUtil;->concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v2

    move-object v3, v1

    goto :goto_13

    :cond_69
    if-eqz v2, :cond_6c

    goto :goto_7a

    :cond_6c
    if-eqz v3, :cond_78

    .line 130
    new-instance v2, Lfreemarker/template/SimpleScalar;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_78
    sget-object v2, Lfreemarker/template/SimpleScalar;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_7a
    return-object v2
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 4

    .line 180
    new-instance p1, Lfreemarker/core/StringLiteral;

    iget-object p2, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    invoke-direct {p1, p2}, Lfreemarker/core/StringLiteral;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    iput-object p2, p1, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 6

    .line 150
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-nez v0, :cond_b

    .line 151
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->ftlQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x22

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 156
    instance-of v4, v2, Lfreemarker/core/Interpolation;

    if-eqz v4, :cond_32

    .line 157
    check-cast v2, Lfreemarker/core/Interpolation;

    invoke-virtual {v2}, Lfreemarker/core/Interpolation;->getCanonicalFormInStringLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 159
    :cond_32
    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralEnc(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 162
    :cond_3c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lfreemarker/core/StringLiteral;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "dynamic \"...\""

    :goto_b
    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 188
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 205
    invoke-direct {p0, p1}, Lfreemarker/core/StringLiteral;->checkIndex(I)V

    .line 206
    sget-object p1, Lfreemarker/core/ParameterRole;->VALUE_PART:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    .line 193
    invoke-direct {p0, p1}, Lfreemarker/core/StringLiteral;->checkIndex(I)V

    .line 194
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isSingleInterpolationLiteral()Z
    .registers 4

    .line 144
    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfreemarker/core/Interpolation;

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method parseValue(Lfreemarker/core/FMParser;Lfreemarker/core/OutputFormat;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lfreemarker/core/StringLiteral;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v2

    .line 54
    iget-object v3, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_8a

    const/16 v3, 0x14

    const/4 v4, -0x1

    if-eq v2, v3, :cond_1e

    const/16 v5, 0x15

    if-ne v2, v5, :cond_34

    :cond_1e
    iget-object v5, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    const-string v6, "${"

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_42

    if-ne v2, v3, :cond_34

    iget-object v3, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    const-string v5, "#{"

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_42

    :cond_34
    const/16 v3, 0x16

    if-ne v2, v3, :cond_8a

    iget-object v2, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    const-string v3, "[="

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_8a

    .line 61
    :cond_42
    :try_start_42
    new-instance v2, Lfreemarker/core/SimpleCharStream;

    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lfreemarker/core/StringLiteral;->beginLine:I

    iget v5, p0, Lfreemarker/core/StringLiteral;->beginColumn:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lfreemarker/core/StringLiteral;->value:Ljava/lang/String;

    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 65
    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lfreemarker/core/SimpleCharStream;->setTabSize(I)V

    .line 67
    new-instance v3, Lfreemarker/core/FMParserTokenManager;

    invoke-direct {v3, v2}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    .line 70
    new-instance v2, Lfreemarker/core/FMParser;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, v1}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;ZLfreemarker/core/FMParserTokenManager;Lfreemarker/core/ParserConfiguration;)V

    .line 72
    invoke-virtual {v2, p1, p2}, Lfreemarker/core/FMParser;->setupStringLiteralMode(Lfreemarker/core/FMParser;Lfreemarker/core/OutputFormat;)V
    :try_end_6f
    .catch Lfreemarker/core/ParseException; {:try_start_42 .. :try_end_6f} :catch_81

    .line 74
    :try_start_6f
    invoke-virtual {v2}, Lfreemarker/core/FMParser;->StaticTextAndInterpolations()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/StringLiteral;->dynamicValue:Ljava/util/List;
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_7c

    .line 77
    :try_start_75
    invoke-virtual {v2, p1}, Lfreemarker/core/FMParser;->tearDownStringLiteralMode(Lfreemarker/core/FMParser;)V
    :try_end_78
    .catch Lfreemarker/core/ParseException; {:try_start_75 .. :try_end_78} :catch_81

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lfreemarker/core/StringLiteral;->constantValue:Lfreemarker/template/TemplateModel;

    goto :goto_8a

    :catchall_7c
    move-exception p2

    .line 77
    :try_start_7d
    invoke-virtual {v2, p1}, Lfreemarker/core/FMParser;->tearDownStringLiteralMode(Lfreemarker/core/FMParser;)V

    .line 78
    throw p2
    :try_end_81
    .catch Lfreemarker/core/ParseException; {:try_start_7d .. :try_end_81} :catch_81

    :catch_81
    move-exception p1

    .line 80
    invoke-virtual {v0}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/core/ParseException;->setTemplateName(Ljava/lang/String;)V

    .line 81
    throw p1

    :cond_8a
    :goto_8a
    return-void
.end method
