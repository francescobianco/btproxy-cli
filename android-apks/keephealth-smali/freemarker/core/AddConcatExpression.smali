.class final Lfreemarker/core/AddConcatExpression;
.super Lfreemarker/core/Expression;
.source "AddConcatExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;,
        Lfreemarker/core/AddConcatExpression$ConcatenatedHash;,
        Lfreemarker/core/AddConcatExpression$ConcatenatedSequence;
    }
.end annotation


# instance fields
.field private final left:Lfreemarker/core/Expression;

.field private final right:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 50
    iput-object p1, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    .line 51
    iput-object p2, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    return-void
.end method

.method static _eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/NonStringException;
        }
    .end annotation

    .line 70
    instance-of v0, p3, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_19

    instance-of v0, p5, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_19

    .line 71
    check-cast p3, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p3, p2}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object p2

    .line 72
    check-cast p5, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p5, p4}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object p3

    .line 73
    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/AddConcatExpression;->_evalOnNumbers(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 74
    :cond_19
    instance-of v0, p3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_2b

    instance-of v0, p5, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_2b

    .line 75
    new-instance p0, Lfreemarker/core/AddConcatExpression$ConcatenatedSequence;

    check-cast p3, Lfreemarker/template/TemplateSequenceModel;

    check-cast p5, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p0, p3, p5}, Lfreemarker/core/AddConcatExpression$ConcatenatedSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/template/TemplateSequenceModel;)V

    return-object p0

    .line 77
    :cond_2b
    instance-of v0, p3, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_35

    instance-of v0, p5, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    const/4 v1, 0x0

    .line 83
    :try_start_37
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p3, p2, v0, v1, p0}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ZLjava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_45

    .line 87
    invoke-static {p3, p5}, Lfreemarker/core/AddConcatExpression;->_eval_concatenateHashes(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 91
    :cond_45
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p5, p4, v0, v1, p0}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ZLjava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_53

    .line 95
    invoke-static {p3, p5}, Lfreemarker/core/AddConcatExpression;->_eval_concatenateHashes(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 98
    :cond_53
    instance-of p4, p2, Ljava/lang/String;

    if-eqz p4, :cond_7a

    .line 99
    instance-of p4, p0, Ljava/lang/String;

    if-eqz p4, :cond_69

    .line 100
    new-instance p1, Lfreemarker/template/SimpleScalar;

    check-cast p2, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 102
    :cond_69
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 104
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object p4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p2

    .line 103
    invoke-static {p1, p2, p0}, Lfreemarker/core/EvalUtil;->concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 108
    :cond_7a
    check-cast p2, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 109
    instance-of p4, p0, Ljava/lang/String;

    if-eqz p4, :cond_8f

    .line 112
    invoke-interface {p2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object p4

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lfreemarker/core/MarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    .line 110
    invoke-static {p1, p2, p0}, Lfreemarker/core/EvalUtil;->concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 114
    :cond_8f
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    invoke-static {p1, p2, p0}, Lfreemarker/core/EvalUtil;->concatMarkupOutputs(Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0
    :try_end_95
    .catch Lfreemarker/core/NonStringOrTemplateOutputException; {:try_start_37 .. :try_end_95} :catch_96

    return-object p0

    :catch_96
    move-exception p0

    if-eqz v0, :cond_9e

    .line 123
    invoke-static {p3, p5}, Lfreemarker/core/AddConcatExpression;->_eval_concatenateHashes(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0

    .line 125
    :cond_9e
    throw p0
.end method

.method static _evalOnNumbers(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lfreemarker/core/EvalUtil;->getArithmeticEngine(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;)Lfreemarker/core/ArithmeticEngine;

    move-result-object p0

    .line 152
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p0, p2, p3}, Lfreemarker/core/ArithmeticEngine;->add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method private static _eval_concatenateHashes(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 133
    instance-of v0, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_20

    instance-of v0, p1, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_20

    .line 134
    check-cast p0, Lfreemarker/template/TemplateHashModelEx;

    .line 135
    check-cast p1, Lfreemarker/template/TemplateHashModelEx;

    .line 136
    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    if-nez v0, :cond_13

    return-object p1

    .line 138
    :cond_13
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    if-nez v0, :cond_1a

    return-object p0

    .line 141
    :cond_1a
    new-instance v0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;-><init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/TemplateHashModelEx;)V

    return-object v0

    .line 144
    :cond_20
    new-instance v0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;

    check-cast p0, Lfreemarker/template/TemplateHashModel;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/template/TemplateHashModel;)V

    return-object v0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 56
    iget-object v2, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    invoke-virtual {v4, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lfreemarker/core/AddConcatExpression;->_eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 163
    new-instance v0, Lfreemarker/core/AddConcatExpression;

    iget-object v1, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    .line 164
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    .line 165
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/AddConcatExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, "+"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 190
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 185
    iget-object p1, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    :goto_7
    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression;->constantValue:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_17

    iget-object v0, p0, Lfreemarker/core/AddConcatExpression;->left:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lfreemarker/core/AddConcatExpression;->right:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method
