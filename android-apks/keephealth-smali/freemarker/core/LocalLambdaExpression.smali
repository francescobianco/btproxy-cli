.class final Lfreemarker/core/LocalLambdaExpression;
.super Lfreemarker/core/Expression;
.source "LocalLambdaExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;
    }
.end annotation


# instance fields
.field private final lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

.field private final rho:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;Lfreemarker/core/Expression;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    .line 42
    iput-object p2, p0, Lfreemarker/core/LocalLambdaExpression;->rho:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 56
    new-instance v0, Lfreemarker/template/TemplateException;

    const-string v1, "Can\'t get lambda expression as a value: Lambdas currently can only be used on a few special places."

    invoke-direct {v0, v1, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 79
    new-instance v0, Lfreemarker/core/LocalLambdaExpression;

    iget-object v1, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    iget-object v2, p0, Lfreemarker/core/LocalLambdaExpression;->rho:Lfreemarker/core/Expression;

    .line 81
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/LocalLambdaExpression;-><init>(Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;Lfreemarker/core/Expression;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    invoke-virtual {v1}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/LocalLambdaExpression;->rho:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLambdaParameterList()Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;
    .registers 2

    .line 105
    iget-object v0, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "->"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 101
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 94
    iget-object p1, p0, Lfreemarker/core/LocalLambdaExpression;->rho:Lfreemarker/core/Expression;

    return-object p1

    .line 95
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 93
    :cond_e
    iget-object p1, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    return-object p1
.end method

.method invokeLambdaDefinedFunction(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lfreemarker/core/LocalLambdaExpression;->rho:Lfreemarker/core/Expression;

    iget-object v1, p0, Lfreemarker/core/LocalLambdaExpression;->lho:Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    invoke-virtual {v1}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getParameters()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Identifier;

    invoke-virtual {v1}, Lfreemarker/core/Identifier;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    sget-object p1, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    :goto_18
    invoke-virtual {p2, v0, v1, p1}, Lfreemarker/core/Environment;->evaluateWithNewLocal(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
