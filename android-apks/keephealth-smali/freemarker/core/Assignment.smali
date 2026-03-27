.class final Lfreemarker/core/Assignment;
.super Lfreemarker/core/TemplateElement;
.source "Assignment.java"


# static fields
.field static final GLOBAL:I = 0x3

.field static final LOCAL:I = 0x2

.field static final NAMESPACE:I = 0x1

.field private static final ONE:Ljava/lang/Number;

.field private static final OPERATOR_TYPE_EQUALS:I = 0x10000

.field private static final OPERATOR_TYPE_MINUS_MINUS:I = 0x10003

.field private static final OPERATOR_TYPE_PLUS_EQUALS:I = 0x10001

.field private static final OPERATOR_TYPE_PLUS_PLUS:I = 0x10002


# instance fields
.field private namespaceExp:Lfreemarker/core/Expression;

.field private final operatorType:I

.field private final scope:I

.field private final valueExp:Lfreemarker/core/Expression;

.field private final variableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Assignment;->ONE:Ljava/lang/Number;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILfreemarker/core/Expression;I)V
    .registers 5

    .line 60
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 61
    iput p4, p0, Lfreemarker/core/Assignment;->scope:I

    .line 63
    iput-object p1, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    const/16 p1, 0x69

    if-ne p2, p1, :cond_10

    const/high16 p1, 0x10000

    .line 66
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :cond_10
    packed-switch p2, :pswitch_data_3e

    .line 91
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    :pswitch_19
    const p1, 0x10003

    .line 73
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_1f
    const p1, 0x10002

    .line 70
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_25
    const/4 p1, 0x3

    .line 88
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_29
    const/4 p1, 0x2

    .line 85
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_2d
    const/4 p1, 0x1

    .line 82
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_31
    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    goto :goto_3a

    :pswitch_35
    const p1, 0x10001

    .line 76
    iput p1, p0, Lfreemarker/core/Assignment;->operatorType:I

    .line 95
    :goto_3a
    iput-object p3, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x6c
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_1f
        :pswitch_19
    .end packed-switch
.end method

.method static getDirectiveName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 237
    const-string p0, "#local"

    return-object p0

    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 239
    const-string p0, "#global"

    return-object p0

    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    .line 241
    const-string p0, "#assign"

    return-object p0

    .line 243
    :cond_12
    const-string p0, "#{unknown_assignment_type}"

    return-object p0
.end method

.method private getOperatorTypeAsString()Ljava/lang/String;
    .registers 4

    .line 282
    iget v0, p0, Lfreemarker/core/Assignment;->operatorType:I

    const/high16 v1, 0x10000

    const-string v2, "="

    if-ne v0, v1, :cond_9

    return-object v2

    :cond_9
    const v1, 0x10001

    if-ne v0, v1, :cond_11

    .line 285
    const-string v0, "+="

    return-object v0

    :cond_11
    const v1, 0x10002

    if-ne v0, v1, :cond_19

    .line 287
    const-string v0, "++"

    return-object v0

    :cond_19
    const v1, 0x10003

    if-ne v0, v1, :cond_21

    .line 289
    const-string v0, "--"

    return-object v0

    .line 291
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfreemarker/core/Assignment;->operatorType:I

    invoke-static {v1}, Lfreemarker/core/ArithmeticExpression;->getOperatorSymbol(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static scopeAsString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 299
    const-string p0, "global scope"

    return-object p0

    .line 300
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scope: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 298
    :cond_21
    const-string p0, "local scope"

    return-object p0

    .line 297
    :cond_24
    const-string p0, "template namespace"

    return-object p0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 107
    iget v0, p0, Lfreemarker/core/Assignment;->scope:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    .line 112
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getGlobalNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    goto :goto_3b

    .line 118
    :cond_15
    new-instance p1, Lfreemarker/core/BugException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected scope type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lfreemarker/core/Assignment;->scope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    move-object v0, v1

    goto :goto_3b

    .line 115
    :cond_2e
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    goto :goto_3b

    .line 121
    :cond_33
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 123
    :try_start_37
    check-cast v0, Lfreemarker/core/Environment$Namespace;
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_37 .. :try_end_39} :catch_112

    if-eqz v0, :cond_10b

    .line 133
    :goto_3b
    iget v2, p0, Lfreemarker/core/Assignment;->operatorType:I

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5a

    .line 134
    iget-object v2, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_e6

    .line 136
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 137
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto/16 :goto_e6

    .line 139
    :cond_53
    iget-object v0, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    :cond_5a
    if-nez v0, :cond_63

    .line 145
    iget-object v2, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_69

    .line 147
    :cond_63
    iget-object v2, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 150
    :goto_69
    iget v3, p0, Lfreemarker/core/Assignment;->operatorType:I

    const v4, 0x10001

    if-ne v3, v4, :cond_ad

    if-nez v2, :cond_88

    .line 152
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 153
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_88

    .line 155
    :cond_7b
    iget v0, p0, Lfreemarker/core/Assignment;->scope:I

    iget-object v1, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lfreemarker/core/Assignment;->getOperatorTypeAsString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(ILjava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    :cond_88
    :goto_88
    move-object v5, v2

    .line 160
    iget-object v2, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_a1

    .line 162
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 163
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_a1

    .line 165
    :cond_9a
    iget-object v0, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    :cond_a1
    :goto_a1
    move-object v7, v2

    .line 168
    iget-object v3, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    const/4 v4, 0x0

    iget-object v6, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lfreemarker/core/AddConcatExpression;->_eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_e6

    .line 171
    :cond_ad
    instance-of v3, v2, Lfreemarker/template/TemplateNumberModel;

    if-eqz v3, :cond_f4

    .line 172
    check-cast v2, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v2, v1}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object v2

    .line 179
    iget v3, p0, Lfreemarker/core/Assignment;->operatorType:I

    const v4, 0x10002

    if-ne v3, v4, :cond_c9

    .line 180
    invoke-virtual {p0}, Lfreemarker/core/Assignment;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object v3

    sget-object v4, Lfreemarker/core/Assignment;->ONE:Ljava/lang/Number;

    invoke-static {p1, v3, v2, v4}, Lfreemarker/core/AddConcatExpression;->_evalOnNumbers(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;Ljava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_e6

    :cond_c9
    const v4, 0x10003

    if-ne v3, v4, :cond_da

    .line 183
    invoke-virtual {p0}, Lfreemarker/core/Assignment;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lfreemarker/core/Assignment;->ONE:Ljava/lang/Number;

    .line 182
    invoke-static {p1, v3, v2, v4, v5}, Lfreemarker/core/ArithmeticExpression;->_eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_e6

    .line 185
    :cond_da
    iget-object v3, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-virtual {v3, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v3

    .line 186
    iget v4, p0, Lfreemarker/core/Assignment;->operatorType:I

    invoke-static {p1, p0, v2, v4, v3}, Lfreemarker/core/ArithmeticExpression;->_eval(Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/lang/Number;ILjava/lang/Number;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    :cond_e6
    :goto_e6
    if-nez v0, :cond_ee

    .line 192
    iget-object v0, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/Environment;->setLocalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_f3

    .line 194
    :cond_ee
    iget-object p1, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_f3
    return-object v1

    :cond_f4
    if-nez v2, :cond_103

    .line 174
    iget v0, p0, Lfreemarker/core/Assignment;->scope:I

    iget-object v1, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/core/Assignment;->getOperatorTypeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(ILjava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    .line 176
    :cond_103
    new-instance v0, Lfreemarker/core/NonNumericalException;

    iget-object v3, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1, p1}, Lfreemarker/core/NonNumericalException;-><init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0

    .line 128
    :cond_10b
    iget-object v0, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    .line 125
    :catch_112
    new-instance v1, Lfreemarker/core/NonNamespaceException;

    iget-object v2, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonNamespaceException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 6

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {p0}, Lfreemarker/core/Assignment;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object v1

    instance-of v1, v1, Lfreemarker/core/AssignmentInstruction;

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lfreemarker/core/Assignment;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    :goto_13
    const/16 v2, 0x20

    if-eqz v1, :cond_24

    if-eqz p1, :cond_1e

    .line 204
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_24
    iget-object v3, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    invoke-static {v3}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelTragetIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v3, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    if-eqz v3, :cond_34

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_34
    invoke-direct {p0}, Lfreemarker/core/Assignment;->getOperatorTypeAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v3, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    if-eqz v3, :cond_4b

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    if-eqz v1, :cond_66

    .line 220
    iget-object v1, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_5f

    .line 221
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    if-eqz p1, :cond_66

    .line 224
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 232
    iget v0, p0, Lfreemarker/core/Assignment;->scope:I

    invoke-static {v0}, Lfreemarker/core/Assignment;->getDirectiveName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 271
    sget-object p1, Lfreemarker/core/ParameterRole;->NAMESPACE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 272
    :cond_11
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 270
    :cond_17
    sget-object p1, Lfreemarker/core/ParameterRole;->VARIABLE_SCOPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 269
    :cond_1a
    sget-object p1, Lfreemarker/core/ParameterRole;->ASSIGNMENT_SOURCE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 268
    :cond_1d
    sget-object p1, Lfreemarker/core/ParameterRole;->ASSIGNMENT_OPERATOR:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 267
    :cond_20
    sget-object p1, Lfreemarker/core/ParameterRole;->ASSIGNMENT_TARGET:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 259
    iget-object p1, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    return-object p1

    .line 260
    :cond_11
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 258
    :cond_17
    iget p1, p0, Lfreemarker/core/Assignment;->scope:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 257
    :cond_1e
    iget-object p1, p0, Lfreemarker/core/Assignment;->valueExp:Lfreemarker/core/Expression;

    return-object p1

    .line 256
    :cond_21
    invoke-direct {p0}, Lfreemarker/core/Assignment;->getOperatorTypeAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 255
    :cond_26
    iget-object p1, p0, Lfreemarker/core/Assignment;->variableName:Ljava/lang/String;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method setNamespaceExp(Lfreemarker/core/Expression;)V
    .registers 4

    .line 99
    iget v0, p0, Lfreemarker/core/Assignment;->scope:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    if-nez p1, :cond_8

    goto :goto_e

    :cond_8
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    .line 100
    :cond_e
    :goto_e
    iput-object p1, p0, Lfreemarker/core/Assignment;->namespaceExp:Lfreemarker/core/Expression;

    return-void
.end method
