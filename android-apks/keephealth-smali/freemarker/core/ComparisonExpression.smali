.class final Lfreemarker/core/ComparisonExpression;
.super Lfreemarker/core/BooleanExpression;
.source "ComparisonExpression.java"


# instance fields
.field private final left:Lfreemarker/core/Expression;

.field private final opString:Ljava/lang/String;

.field private final operation:I

.field private final right:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Lfreemarker/core/BooleanExpression;-><init>()V

    .line 35
    iput-object p1, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    .line 36
    iput-object p2, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 38
    iput-object p3, p0, Lfreemarker/core/ComparisonExpression;->opString:Ljava/lang/String;

    .line 39
    const-string v0, "=="

    if-eq p3, v0, :cond_89

    const-string v0, "="

    if-ne p3, v0, :cond_17

    goto/16 :goto_89

    .line 41
    :cond_17
    const-string v0, "!="

    if-ne p3, v0, :cond_20

    const/4 p3, 0x2

    .line 42
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    goto/16 :goto_8c

    .line 43
    :cond_20
    const-string v0, "gt"

    if-eq p3, v0, :cond_85

    const-string v0, "\\gt"

    if-eq p3, v0, :cond_85

    const-string v0, ">"

    if-eq p3, v0, :cond_85

    const-string v0, "&gt;"

    if-ne p3, v0, :cond_31

    goto :goto_85

    .line 45
    :cond_31
    const-string v0, "gte"

    if-eq p3, v0, :cond_81

    const-string v0, "\\gte"

    if-eq p3, v0, :cond_81

    const-string v0, ">="

    if-eq p3, v0, :cond_81

    const-string v0, "&gt;="

    if-ne p3, v0, :cond_42

    goto :goto_81

    .line 47
    :cond_42
    const-string v0, "lt"

    if-eq p3, v0, :cond_7d

    const-string v0, "\\lt"

    if-eq p3, v0, :cond_7d

    const-string v0, "<"

    if-eq p3, v0, :cond_7d

    const-string v0, "&lt;"

    if-ne p3, v0, :cond_53

    goto :goto_7d

    .line 49
    :cond_53
    const-string v0, "lte"

    if-eq p3, v0, :cond_79

    const-string v0, "\\lte"

    if-eq p3, v0, :cond_79

    const-string v0, "<="

    if-eq p3, v0, :cond_79

    const-string v0, "&lt;="

    if-ne p3, v0, :cond_64

    goto :goto_79

    .line 52
    :cond_64
    new-instance p1, Lfreemarker/core/BugException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown comparison operator "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    :goto_79
    const/4 p3, 0x5

    .line 50
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    goto :goto_8c

    :cond_7d
    :goto_7d
    const/4 p3, 0x3

    .line 48
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    goto :goto_8c

    :cond_81
    :goto_81
    const/4 p3, 0x6

    .line 46
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    goto :goto_8c

    :cond_85
    :goto_85
    const/4 p3, 0x4

    .line 44
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    goto :goto_8c

    :cond_89
    :goto_89
    const/4 p3, 0x1

    .line 40
    iput p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    .line 55
    :goto_8c
    invoke-static {p1}, Lfreemarker/core/MiscUtil;->peelParentheses(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object p1

    .line 56
    invoke-static {p2}, Lfreemarker/core/MiscUtil;->peelParentheses(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object p2

    .line 57
    instance-of p3, p1, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;

    if-eqz p3, :cond_a6

    .line 58
    instance-of p3, p2, Lfreemarker/core/NumberLiteral;

    if-eqz p3, :cond_bb

    .line 59
    check-cast p1, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;

    iget p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    check-cast p2, Lfreemarker/core/NumberLiteral;

    invoke-virtual {p1, p3, p2}, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->setCountingLimit(ILfreemarker/core/NumberLiteral;)V

    goto :goto_bb

    .line 63
    :cond_a6
    instance-of p3, p2, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;

    if-eqz p3, :cond_bb

    .line 64
    instance-of p3, p1, Lfreemarker/core/NumberLiteral;

    if-eqz p3, :cond_bb

    .line 65
    check-cast p2, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;

    iget p3, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    .line 66
    invoke-static {p3}, Lfreemarker/core/EvalUtil;->mirrorCmpOperator(I)I

    move-result p3

    check-cast p1, Lfreemarker/core/NumberLiteral;

    .line 65
    invoke-virtual {p2, p3, p1}, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->setCountingLimit(ILfreemarker/core/NumberLiteral;)V

    :cond_bb
    :goto_bb
    return-void
.end method


# virtual methods
.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 99
    new-instance v0, Lfreemarker/core/ComparisonExpression;

    iget-object v1, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    .line 100
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

    .line 101
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    iget-object p2, p0, Lfreemarker/core/ComparisonExpression;->opString:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/ComparisonExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method evalToBoolean(Lfreemarker/core/Environment;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    iget v1, p0, Lfreemarker/core/ComparisonExpression;->operation:I

    iget-object v2, p0, Lfreemarker/core/ComparisonExpression;->opString:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/ComparisonExpression;->opString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

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

    .line 88
    iget-object v0, p0, Lfreemarker/core/ComparisonExpression;->opString:Ljava/lang/String;

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 117
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 112
    iget-object p1, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

    :goto_7
    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lfreemarker/core/ComparisonExpression;->constantValue:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_17

    iget-object v0, p0, Lfreemarker/core/ComparisonExpression;->left:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lfreemarker/core/ComparisonExpression;->right:Lfreemarker/core/Expression;

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
