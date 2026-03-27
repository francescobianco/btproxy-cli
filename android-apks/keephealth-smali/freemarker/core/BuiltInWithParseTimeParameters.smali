.class abstract Lfreemarker/core/BuiltInWithParseTimeParameters;
.super Lfreemarker/core/SpecialBuiltIn;
.source "BuiltInWithParseTimeParameters.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lfreemarker/core/SpecialBuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindToParameters(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;",
            "Lfreemarker/core/Token;",
            "Lfreemarker/core/Token;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation
.end method

.method protected final checkLocalLambdaParamCount(Lfreemarker/core/LocalLambdaExpression;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lfreemarker/core/LocalLambdaExpression;->getLambdaParameterList()Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p2, :cond_51

    .line 99
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/core/BuiltInWithParseTimeParameters;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(...) parameter lambda expression must declare exactly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    if-le p2, v3, :cond_33

    const-string p2, "s"

    goto :goto_35

    :cond_33
    const-string p2, ""

    :goto_35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", but it declared "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v1

    :cond_51
    return-void
.end method

.method protected abstract cloneArguments(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)V
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 5

    .line 110
    invoke-super {p0, p1, p2, p3}, Lfreemarker/core/SpecialBuiltIn;->deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0, p1, p2, p3}, Lfreemarker/core/BuiltInWithParseTimeParameters;->cloneArguments(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)V

    return-object v0
.end method

.method protected abstract getArgumentParameterValue(I)Lfreemarker/core/Expression;
.end method

.method protected abstract getArgumentsAsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getArgumentsCount()I
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 6

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-super {p0}, Lfreemarker/core/SpecialBuiltIn;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;->getArgumentsAsList()Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_33

    if-eqz v3, :cond_23

    .line 43
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_23
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Expression;

    .line 46
    invoke-virtual {v4}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 48
    :cond_33
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lfreemarker/core/SpecialBuiltIn;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 3

    .line 60
    invoke-super {p0}, Lfreemarker/core/SpecialBuiltIn;->getParameterCount()I

    move-result v0

    invoke-virtual {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;->getArgumentsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    .line 76
    invoke-super {p0}, Lfreemarker/core/SpecialBuiltIn;->getParameterCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 78
    invoke-super {p0, p1}, Lfreemarker/core/SpecialBuiltIn;->getParameterRole(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1

    :cond_b
    sub-int/2addr p1, v0

    .line 81
    invoke-virtual {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;->getArgumentsCount()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 82
    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_VALUE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 84
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    .line 65
    invoke-super {p0}, Lfreemarker/core/SpecialBuiltIn;->getParameterCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 67
    invoke-super {p0, p1}, Lfreemarker/core/SpecialBuiltIn;->getParameterValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    sub-int/2addr p1, v0

    .line 71
    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInWithParseTimeParameters;->getArgumentParameterValue(I)Lfreemarker/core/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected isLocalLambdaParameterSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final newArgumentCountException(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;
    .registers 12

    .line 89
    new-instance v7, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/BuiltInWithParseTimeParameters;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(...) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " parameters"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    iget v6, p3, Lfreemarker/core/Token;->endColumn:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V

    return-object v7
.end method
