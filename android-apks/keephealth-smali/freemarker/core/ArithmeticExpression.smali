.class final Lfreemarker/core/ArithmeticExpression;
.super Lfreemarker/core/Expression;
.source "ArithmeticExpression.java"


# static fields
.field private static final OPERATOR_IMAGES:[C

.field static final TYPE_DIVISION:I = 0x2

.field static final TYPE_MODULO:I = 0x3

.field static final TYPE_MULTIPLICATION:I = 0x1

.field static final TYPE_SUBSTRACTION:I


# instance fields
.field private final lho:Lfreemarker/core/Expression;

.field private final operator:I

.field private final rho:Lfreemarker/core/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/ArithmeticExpression;->OPERATOR_IMAGES:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x2ds
        0x2as
        0x2fs
        0x25s
    .end array-data
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V
    .registers 4

    .line 43
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 44
    iput-object p1, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    .line 45
    iput-object p2, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

    .line 46
    iput p3, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    return-void
.end method

.method static _eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/_MiscTemplateException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lfreemarker/core/EvalUtil;->getArithmeticEngine(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;)Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_51

    if-eq p3, v2, :cond_47

    if-eq p3, v1, :cond_3d

    const/4 v3, 0x3

    if-eq p3, v3, :cond_33

    .line 68
    :try_start_f
    instance-of p2, p1, Lfreemarker/core/Expression;
    :try_end_11
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_11} :catch_5b

    const-string p4, "Unknown operation: "

    if-eqz p2, :cond_25

    .line 69
    :try_start_15
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    check-cast p1, Lfreemarker/core/Expression;

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p2

    .line 72
    :cond_25
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 66
    :cond_33
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/ArithmeticEngine;->modulus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 64
    :cond_3d
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/ArithmeticEngine;->divide(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 62
    :cond_47
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/ArithmeticEngine;->multiply(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 60
    :cond_51
    new-instance p1, Lfreemarker/template/SimpleNumber;

    invoke-virtual {v0, p2, p4}, Lfreemarker/core/ArithmeticEngine;->subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V
    :try_end_5a
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_5a} :catch_5b

    return-object p1

    :catch_5b
    move-exception p1

    .line 76
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    .line 78
    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_72

    new-array p3, v1, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v0, ": "

    aput-object v0, p3, p4

    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    goto :goto_74

    :cond_72
    const-string p3, " (see cause exception)"

    :goto_74
    const-string p4, "Arithmetic operation failed"

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2
.end method

.method static getOperatorSymbol(I)C
    .registers 2

    .line 93
    sget-object v0, Lfreemarker/core/ArithmeticExpression;->OPERATOR_IMAGES:[C

    aget-char p0, v0, p0

    return p0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    iget-object v2, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {p1, p0, v0, v1, v2}, Lfreemarker/core/ArithmeticExpression;->_eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 104
    new-instance v0, Lfreemarker/core/ArithmeticExpression;

    iget-object v1, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    .line 105
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

    .line 106
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    iget p2, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/ArithmeticExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    invoke-static {v2}, Lfreemarker/core/ArithmeticExpression;->getOperatorSymbol(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

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

    .line 89
    iget v0, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    invoke-static {v0}, Lfreemarker/core/ArithmeticExpression;->getOperatorSymbol(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 130
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 131
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 129
    :cond_11
    sget-object p1, Lfreemarker/core/ParameterRole;->RIGHT_HAND_OPERAND:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 128
    :cond_14
    sget-object p1, Lfreemarker/core/ParameterRole;->LEFT_HAND_OPERAND:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 120
    iget p1, p0, Lfreemarker/core/ArithmeticExpression;->operator:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 121
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 119
    :cond_15
    iget-object p1, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

    return-object p1

    .line 118
    :cond_18
    iget-object p1, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isLiteral()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lfreemarker/core/ArithmeticExpression;->constantValue:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_17

    iget-object v0, p0, Lfreemarker/core/ArithmeticExpression;->lho:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lfreemarker/core/ArithmeticExpression;->rho:Lfreemarker/core/Expression;

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
