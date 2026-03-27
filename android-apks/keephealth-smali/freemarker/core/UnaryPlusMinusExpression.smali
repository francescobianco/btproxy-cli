.class final Lfreemarker/core/UnaryPlusMinusExpression;
.super Lfreemarker/core/Expression;
.source "UnaryPlusMinusExpression.java"


# static fields
.field private static final MINUS_ONE:Ljava/lang/Integer;

.field private static final TYPE_MINUS:I = 0x0

.field private static final TYPE_PLUS:I = 0x1


# instance fields
.field private final isMinus:Z

.field private final target:Lfreemarker/core/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfreemarker/core/UnaryPlusMinusExpression;->MINUS_ONE:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Z)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 37
    iput-object p1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    .line 38
    iput-boolean p2, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 46
    :try_start_6
    check-cast v0, Lfreemarker/template/TemplateNumberModel;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_24

    .line 50
    iget-boolean v1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    if-nez v1, :cond_d

    return-object v0

    .line 53
    :cond_d
    iget-object v1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 54
    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    .line 55
    sget-object v0, Lfreemarker/core/ArithmeticEngine;->CONSERVATIVE_ENGINE:Lfreemarker/core/ArithmeticEngine$ConservativeEngine;

    sget-object v1, Lfreemarker/core/UnaryPlusMinusExpression;->MINUS_ONE:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lfreemarker/core/ArithmeticEngine$ConservativeEngine;->multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    .line 56
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 48
    :catch_24
    new-instance v1, Lfreemarker/core/NonNumericalException;

    iget-object v2, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonNumericalException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 6

    .line 78
    new-instance v0, Lfreemarker/core/UnaryPlusMinusExpression;

    iget-object v1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    .line 79
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    iget-boolean p2, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    invoke-direct {v0, p1, p2}, Lfreemarker/core/UnaryPlusMinusExpression;-><init>(Lfreemarker/core/Expression;Z)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 61
    iget-boolean v0, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    if-eqz v0, :cond_7

    const-string v0, "-"

    goto :goto_9

    :cond_7
    const-string v0, "+"

    .line 62
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

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

    .line 67
    iget-boolean v0, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    if-eqz v0, :cond_7

    const-string v0, "-..."

    goto :goto_9

    :cond_7
    const-string v0, "+..."

    :goto_9
    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 101
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 102
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 100
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->RIGHT_HAND_OPERAND:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 92
    iget-boolean p1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->isMinus:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 91
    :cond_13
    iget-object p1, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lfreemarker/core/UnaryPlusMinusExpression;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    return v0
.end method
