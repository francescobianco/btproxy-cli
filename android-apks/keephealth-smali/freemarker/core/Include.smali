.class final Lfreemarker/core/Include;
.super Lfreemarker/core/TemplateElement;
.source "Include.java"


# instance fields
.field private final encoding:Ljava/lang/String;

.field private final encodingExp:Lfreemarker/core/Expression;

.field private final ignoreMissingExp:Lfreemarker/core/Expression;

.field private final ignoreMissingExpPrecalcedValue:Ljava/lang/Boolean;

.field private final includedTemplateNameExp:Lfreemarker/core/Expression;

.field private final parse:Ljava/lang/Boolean;

.field private final parseExp:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/template/Template;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 52
    iput-object p2, p0, Lfreemarker/core/Include;->includedTemplateNameExp:Lfreemarker/core/Expression;

    .line 54
    iput-object p3, p0, Lfreemarker/core/Include;->encodingExp:Lfreemarker/core/Expression;

    const/4 p2, 0x0

    if-nez p3, :cond_d

    .line 56
    iput-object p2, p0, Lfreemarker/core/Include;->encoding:Ljava/lang/String;

    goto :goto_35

    .line 58
    :cond_d
    invoke-virtual {p3}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 60
    :try_start_13
    invoke-virtual {p3, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_24

    .line 65
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/Include;->encoding:Ljava/lang/String;

    goto :goto_35

    .line 62
    :cond_24
    new-instance p1, Lfreemarker/core/ParseException;

    const-string p2, "Expected a string as the value of the \"encoding\" argument"

    invoke-direct {p1, p2, p3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw p1
    :try_end_2c
    .catch Lfreemarker/template/TemplateException; {:try_start_13 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p1

    .line 68
    new-instance p2, Lfreemarker/core/BugException;

    invoke-direct {p2, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 71
    :cond_33
    iput-object p2, p0, Lfreemarker/core/Include;->encoding:Ljava/lang/String;

    .line 75
    :goto_35
    iput-object p4, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    if-nez p4, :cond_3e

    .line 77
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p3, p0, Lfreemarker/core/Include;->parse:Ljava/lang/Boolean;

    goto :goto_78

    .line 79
    :cond_3e
    invoke-virtual {p4}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result p3

    if-eqz p3, :cond_76

    .line 81
    :try_start_44
    instance-of p3, p4, Lfreemarker/core/StringLiteral;

    if-eqz p3, :cond_57

    .line 83
    invoke-virtual {p4, p2}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/Include;->parse:Ljava/lang/Boolean;
    :try_end_56
    .catch Lfreemarker/template/TemplateException; {:try_start_44 .. :try_end_56} :catch_6f

    goto :goto_78

    .line 86
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p3

    invoke-virtual {p4, p3}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/template/Configuration;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/Include;->parse:Ljava/lang/Boolean;
    :try_end_65
    .catch Lfreemarker/core/NonBooleanException; {:try_start_57 .. :try_end_65} :catch_66
    .catch Lfreemarker/template/TemplateException; {:try_start_57 .. :try_end_65} :catch_6f

    goto :goto_78

    :catch_66
    move-exception p1

    .line 88
    :try_start_67
    new-instance p2, Lfreemarker/core/ParseException;

    const-string p3, "Expected a boolean or string as the value of the parse attribute"

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6f
    .catch Lfreemarker/template/TemplateException; {:try_start_67 .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception p1

    .line 94
    new-instance p2, Lfreemarker/core/BugException;

    invoke-direct {p2, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 97
    :cond_76
    iput-object p2, p0, Lfreemarker/core/Include;->parse:Ljava/lang/Boolean;

    .line 101
    :goto_78
    iput-object p5, p0, Lfreemarker/core/Include;->ignoreMissingExp:Lfreemarker/core/Expression;

    if-eqz p5, :cond_a2

    .line 102
    invoke-virtual {p5}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result p3

    if-eqz p3, :cond_a2

    .line 106
    :try_start_82
    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p5, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/template/Configuration;)Z

    move-result p1

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Include;->ignoreMissingExpPrecalcedValue:Ljava/lang/Boolean;
    :try_end_90
    .catch Lfreemarker/core/NonBooleanException; {:try_start_82 .. :try_end_90} :catch_93
    .catch Lfreemarker/template/TemplateException; {:try_start_82 .. :try_end_90} :catch_91

    goto :goto_a4

    :catch_91
    move-exception p1

    goto :goto_9c

    :catch_93
    move-exception p1

    .line 108
    :try_start_94
    new-instance p2, Lfreemarker/core/ParseException;

    const-string p3, "Expected a boolean as the value of the \"ignore_missing\" attribute"

    invoke-direct {p2, p3, p5, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw p2
    :try_end_9c
    .catch Lfreemarker/template/TemplateException; {:try_start_94 .. :try_end_9c} :catch_91

    .line 113
    :goto_9c
    new-instance p2, Lfreemarker/core/BugException;

    invoke-direct {p2, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 116
    :cond_a2
    iput-object p2, p0, Lfreemarker/core/Include;->ignoreMissingExpPrecalcedValue:Ljava/lang/Boolean;

    :goto_a4
    return-void
.end method

.method private getYesNo(Lfreemarker/core/Expression;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 235
    :try_start_0
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 237
    :catch_5
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v1, p2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p2, "."

    const-string v2, "Value must be boolean (or one of these strings: \"n\", \"no\", \"f\", \"false\", \"y\", \"yes\", \"t\", \"true\"), but it was "

    filled-new-array {v2, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lfreemarker/core/Include;->includedTemplateNameExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :try_start_6
    invoke-virtual {p0}, Lfreemarker/core/Include;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->toFullTemplateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Lfreemarker/template/MalformedTemplateNameException; {:try_start_6 .. :try_end_12} :catch_7e

    .line 132
    iget-object v2, p0, Lfreemarker/core/Include;->encoding:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    goto :goto_22

    :cond_18
    iget-object v2, p0, Lfreemarker/core/Include;->encodingExp:Lfreemarker/core/Expression;

    if-eqz v2, :cond_21

    .line 135
    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_21
    move-object v2, v3

    .line 139
    :goto_22
    iget-object v4, p0, Lfreemarker/core/Include;->parse:Ljava/lang/Boolean;

    if-eqz v4, :cond_2b

    .line 140
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_48

    .line 142
    :cond_2b
    iget-object v4, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    invoke-virtual {v4, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 143
    instance-of v5, v4, Lfreemarker/template/TemplateScalarModel;

    if-eqz v5, :cond_42

    .line 145
    iget-object v5, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    check-cast v4, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v4, v5, p1}, Lfreemarker/core/EvalUtil;->modelToString(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lfreemarker/core/Include;->getYesNo(Lfreemarker/core/Expression;Ljava/lang/String;)Z

    move-result v4

    goto :goto_48

    .line 147
    :cond_42
    iget-object v5, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    invoke-virtual {v5, v4, p1}, Lfreemarker/core/Expression;->modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result v4

    .line 152
    :goto_48
    iget-object v5, p0, Lfreemarker/core/Include;->ignoreMissingExpPrecalcedValue:Ljava/lang/Boolean;

    if-eqz v5, :cond_51

    .line 153
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_5b

    .line 154
    :cond_51
    iget-object v5, p0, Lfreemarker/core/Include;->ignoreMissingExp:Lfreemarker/core/Expression;

    if-eqz v5, :cond_5a

    .line 155
    invoke-virtual {v5, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;)Z

    move-result v5

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x0

    .line 162
    :goto_5b
    :try_start_5b
    invoke-virtual {p1, v1, v2, v4, v5}, Lfreemarker/core/Environment;->getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_65

    if-eqz v0, :cond_64

    .line 171
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    :cond_64
    return-object v3

    :catch_65
    move-exception v1

    .line 164
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    new-instance v3, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v3, v0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lfreemarker/core/_DelayedGetMessage;

    invoke-direct {v0, v1}, Lfreemarker/core/_DelayedGetMessage;-><init>(Ljava/lang/Throwable;)V

    const-string v4, "Template inclusion failed (for parameter value "

    const-string v5, "):\n"

    filled-new-array {v4, v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v2

    :catch_7e
    move-exception v0

    .line 127
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    .line 128
    invoke-virtual {v0}, Lfreemarker/template/MalformedTemplateNameException;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v3, ":\n"

    .line 129
    invoke-virtual {v0}, Lfreemarker/template/MalformedTemplateNameException;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Malformed template name "

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/Include;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lfreemarker/core/Include;->includedTemplateNameExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lfreemarker/core/Include;->encodingExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_34

    .line 184
    const-string v1, " encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Include;->encodingExp:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_34
    iget-object v1, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_47

    .line 187
    const-string v1, " parse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_47
    iget-object v1, p0, Lfreemarker/core/Include;->ignoreMissingExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_5a

    .line 190
    const-string v1, " ignore_missing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Include;->ignoreMissingExp:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    if-eqz p1, :cond_61

    .line 192
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 198
    const-string v0, "#include"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 223
    sget-object p1, Lfreemarker/core/ParameterRole;->IGNORE_MISSING_PARAMETER:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 224
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 222
    :cond_14
    sget-object p1, Lfreemarker/core/ParameterRole;->ENCODING_PARAMETER:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 221
    :cond_17
    sget-object p1, Lfreemarker/core/ParameterRole;->PARSE_PARAMETER:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 220
    :cond_1a
    sget-object p1, Lfreemarker/core/ParameterRole;->TEMPLATE_NAME:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 212
    iget-object p1, p0, Lfreemarker/core/Include;->ignoreMissingExp:Lfreemarker/core/Expression;

    return-object p1

    .line 213
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 211
    :cond_14
    iget-object p1, p0, Lfreemarker/core/Include;->encodingExp:Lfreemarker/core/Expression;

    return-object p1

    .line 210
    :cond_17
    iget-object p1, p0, Lfreemarker/core/Include;->parseExp:Lfreemarker/core/Expression;

    return-object p1

    .line 209
    :cond_1a
    iget-object p1, p0, Lfreemarker/core/Include;->includedTemplateNameExp:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
