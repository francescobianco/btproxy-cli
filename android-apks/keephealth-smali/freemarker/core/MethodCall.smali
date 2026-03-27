.class final Lfreemarker/core/MethodCall;
.super Lfreemarker/core/Expression;
.source "MethodCall.java"


# instance fields
.field private final arguments:Lfreemarker/core/ListLiteral;

.field private final target:Lfreemarker/core/Expression;


# direct methods
.method private constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/ListLiteral;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 49
    iput-object p1, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    .line 50
    iput-object p2, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Ljava/util/ArrayList;)V
    .registers 4

    .line 45
    new-instance v0, Lfreemarker/core/ListLiteral;

    invoke-direct {v0, p2}, Lfreemarker/core/ListLiteral;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lfreemarker/core/MethodCall;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/ListLiteral;)V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 56
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_2a

    .line 57
    check-cast v3, Lfreemarker/template/TemplateMethodModel;

    .line 58
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    .line 60
    invoke-virtual {v0, p1}, Lfreemarker/core/ListLiteral;->getModelList(Lfreemarker/core/Environment;)Ljava/util/List;

    move-result-object v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    .line 61
    invoke-virtual {v0, p1}, Lfreemarker/core/ListLiteral;->getValueList(Lfreemarker/core/Environment;)Ljava/util/List;

    move-result-object v0

    .line 62
    :goto_1d
    invoke-interface {v3, v0}, Lfreemarker/template/TemplateMethodModel;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object p1

    invoke-interface {p1, v0}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 64
    :cond_2a
    instance-of v0, v3, Lfreemarker/core/Macro;

    if-eqz v0, :cond_39

    .line 65
    check-cast v3, Lfreemarker/core/Macro;

    iget-object v0, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    iget-object v0, v0, Lfreemarker/core/ListLiteral;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p1, v3, v0, p0}, Lfreemarker/core/Environment;->invokeFunction(Lfreemarker/core/Environment;Lfreemarker/core/Macro;Ljava/util/List;Lfreemarker/core/TemplateObject;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 67
    :cond_39
    new-instance v0, Lfreemarker/core/NonMethodException;

    iget-object v2, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/NonMethodException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 7

    .line 99
    new-instance v0, Lfreemarker/core/MethodCall;

    iget-object v1, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    .line 100
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    .line 101
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/ListLiteral;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    check-cast p1, Lfreemarker/core/ListLiteral;

    invoke-direct {v0, v1, p1}, Lfreemarker/core/MethodCall;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/ListLiteral;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget-object v1, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    invoke-virtual {v1}, Lfreemarker/core/ListLiteral;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getConstantValue()Lfreemarker/template/TemplateModel;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "...(...)"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 106
    iget-object v0, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    iget-object v0, v0, Lfreemarker/core/ListLiteral;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-nez p1, :cond_5

    .line 123
    sget-object p1, Lfreemarker/core/ParameterRole;->CALLEE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 124
    :cond_5
    invoke-virtual {p0}, Lfreemarker/core/MethodCall;->getParameterCount()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 125
    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_VALUE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 127
    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_5

    .line 112
    iget-object p1, p0, Lfreemarker/core/MethodCall;->target:Lfreemarker/core/Expression;

    return-object p1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lfreemarker/core/MethodCall;->getParameterCount()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 114
    iget-object v0, p0, Lfreemarker/core/MethodCall;->arguments:Lfreemarker/core/ListLiteral;

    iget-object v0, v0, Lfreemarker/core/ListLiteral;->items:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :cond_16
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isLiteral()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
