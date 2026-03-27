.class Lfreemarker/core/ExpressionWithFixedResult;
.super Lfreemarker/core/Expression;
.source "ExpressionWithFixedResult.java"


# instance fields
.field private final fixedResult:Lfreemarker/template/TemplateModel;

.field private final sourceExpression:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 33
    iput-object p1, p0, Lfreemarker/core/ExpressionWithFixedResult;->fixedResult:Lfreemarker/template/TemplateModel;

    .line 34
    iput-object p2, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lfreemarker/core/ExpressionWithFixedResult;->fixedResult:Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 47
    new-instance v0, Lfreemarker/core/ExpressionWithFixedResult;

    iget-object v1, p0, Lfreemarker/core/ExpressionWithFixedResult;->fixedResult:Lfreemarker/template/TemplateModel;

    iget-object v2, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    .line 49
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/ExpressionWithFixedResult;-><init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 61
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getParameterCount()I

    move-result v0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    .line 69
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->getParameterRole(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    .line 65
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->getParameterValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lfreemarker/core/ExpressionWithFixedResult;->sourceExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    return v0
.end method
