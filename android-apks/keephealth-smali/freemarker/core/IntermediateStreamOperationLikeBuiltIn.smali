.class abstract Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.super Lfreemarker/core/BuiltInWithParseTimeParameters;
.source "IntermediateStreamOperationLikeBuiltIn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$MethodElementTransformer;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;
    }
.end annotation


# instance fields
.field private elementTransformerExp:Lfreemarker/core/Expression;

.field private lazilyGeneratedResultEnabled:Z

.field private precreatedElementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithParseTimeParameters;-><init>()V

    return-void
.end method

.method private evalElementTransformerExp(Lfreemarker/core/Environment;)Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->precreatedElementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    if-eqz v0, :cond_5

    return-object v0

    .line 140
    :cond_5
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 141
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_17

    .line 142
    new-instance p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$MethodElementTransformer;

    check-cast v3, Lfreemarker/template/TemplateMethodModel;

    invoke-direct {p1, v3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$MethodElementTransformer;-><init>(Lfreemarker/template/TemplateMethodModel;)V

    return-object p1

    .line 143
    :cond_17
    instance-of v0, v3, Lfreemarker/core/Macro;

    if-eqz v0, :cond_25

    .line 144
    new-instance p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;

    check-cast v3, Lfreemarker/core/Macro;

    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    invoke-direct {p1, v3, v0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$FunctionElementTransformer;-><init>(Lfreemarker/core/Macro;Lfreemarker/core/Expression;)V

    return-object p1

    .line 146
    :cond_25
    new-instance v0, Lfreemarker/core/NonMethodException;

    iget-object v2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/NonMethodException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 114
    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_2f

    .line 115
    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->isLazilyGeneratedResultEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lfreemarker/core/LazyCollectionTemplateModelIterator;

    move-object v1, v3

    check-cast v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v0, v1}, Lfreemarker/core/LazyCollectionTemplateModelIterator;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    goto :goto_20

    :cond_19
    move-object v0, v3

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 117
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 118
    :goto_20
    instance-of v1, v3, Lfreemarker/core/LazilyGeneratedCollectionModel;

    if-eqz v1, :cond_2c

    move-object v1, v3

    check-cast v1, Lfreemarker/core/LazilyGeneratedCollectionModel;

    .line 119
    invoke-virtual {v1}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result v1

    goto :goto_3c

    :cond_2c
    instance-of v1, v3, Lfreemarker/template/TemplateSequenceModel;

    goto :goto_3c

    .line 121
    :cond_2f
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_49

    .line 122
    new-instance v0, Lfreemarker/core/LazySequenceIterator;

    move-object v1, v3

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v0, v1}, Lfreemarker/core/LazySequenceIterator;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    const/4 v1, 0x1

    :goto_3c
    move-object v2, v0

    move v4, v1

    .line 131
    invoke-direct {p0, p1}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->evalElementTransformerExp(Lfreemarker/core/Environment;)Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    .line 129
    invoke-virtual/range {v1 .. v6}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->calculateResult(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 125
    :cond_49
    new-instance v0, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->target:Lfreemarker/core/Expression;

    invoke-direct {v0, v1, v3, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method bindToParameters(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .registers 6
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

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 p2, 0x0

    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Expression;

    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    .line 52
    instance-of p2, p1, Lfreemarker/core/LocalLambdaExpression;

    if-eqz p2, :cond_20

    .line 53
    check-cast p1, Lfreemarker/core/LocalLambdaExpression;

    .line 54
    invoke-virtual {p0, p1, v1}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->checkLocalLambdaParamCount(Lfreemarker/core/LocalLambdaExpression;I)V

    .line 57
    new-instance p2, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;

    invoke-direct {p2, p1}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$LocalLambdaElementTransformer;-><init>(Lfreemarker/core/LocalLambdaExpression;)V

    iput-object p2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->precreatedElementTransformer:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    :cond_20
    return-void

    .line 49
    :cond_21
    const-string p1, "requires exactly 1"

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->newArgumentCountException(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
.end method

.method protected abstract calculateResult(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method protected cloneArguments(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)V
    .registers 6

    .line 103
    check-cast p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;

    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    .line 104
    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p2

    iput-object p2, p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    return-void
.end method

.method final enableLazilyGeneratedResult()V
    .registers 2

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->lazilyGeneratedResultEnabled:Z

    return-void
.end method

.method protected getArgumentParameterValue(I)Lfreemarker/core/Expression;
    .registers 2

    if-nez p1, :cond_5

    .line 94
    iget-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    return-object p1

    .line 92
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected getArgumentsAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getArgumentsCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getElementTransformerExp()Lfreemarker/core/Expression;
    .registers 2

    .line 98
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->elementTransformerExp:Lfreemarker/core/Expression;

    return-object v0
.end method

.method protected final isLazilyGeneratedResultEnabled()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->lazilyGeneratedResultEnabled:Z

    return v0
.end method

.method protected final isLocalLambdaParameterSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected setTarget(Lfreemarker/core/Expression;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lfreemarker/core/BuiltInWithParseTimeParameters;->setTarget(Lfreemarker/core/Expression;)V

    .line 79
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
