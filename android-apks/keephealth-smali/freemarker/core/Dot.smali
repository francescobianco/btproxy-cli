.class final Lfreemarker/core/Dot;
.super Lfreemarker/core/Expression;
.source "Dot.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final target:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 35
    iput-object p1, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    .line 36
    iput-object p2, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

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

    .line 41
    iget-object v0, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 42
    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lfreemarker/template/TemplateHashModel;

    iget-object p1, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_13
    if-nez v0, :cond_1d

    .line 45
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_1d
    new-instance v1, Lfreemarker/core/NonHashException;

    iget-object v2, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonHashException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 6

    .line 69
    new-instance v0, Lfreemarker/core/Dot;

    iget-object v1, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    .line 70
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    iget-object p2, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/Dot;-><init>(Lfreemarker/core/Expression;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/Dot;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLIdentifierReferenceAfterDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "."

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 86
    invoke-static {p1}, Lfreemarker/core/ParameterRole;->forBinaryOperatorOperand(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 81
    iget-object p1, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

    :goto_7
    return-object p1
.end method

.method getRHO()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lfreemarker/core/Dot;->key:Ljava/lang/String;

    return-object v0
.end method

.method isLiteral()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v0

    return v0
.end method

.method onlyHasIdentifiers()Z
    .registers 3

    .line 94
    iget-object v0, p0, Lfreemarker/core/Dot;->target:Lfreemarker/core/Expression;

    instance-of v1, v0, Lfreemarker/core/Identifier;

    if-nez v1, :cond_15

    instance-of v1, v0, Lfreemarker/core/Dot;

    if-eqz v1, :cond_13

    check-cast v0, Lfreemarker/core/Dot;

    invoke-virtual {v0}, Lfreemarker/core/Dot;->onlyHasIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
