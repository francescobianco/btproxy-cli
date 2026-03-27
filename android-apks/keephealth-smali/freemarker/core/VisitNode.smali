.class final Lfreemarker/core/VisitNode;
.super Lfreemarker/core/TemplateElement;
.source "VisitNode.java"


# instance fields
.field namespaces:Lfreemarker/core/Expression;

.field targetNode:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 40
    iput-object p1, p0, Lfreemarker/core/VisitNode;->targetNode:Lfreemarker/core/Expression;

    .line 41
    iput-object p2, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lfreemarker/core/VisitNode;->targetNode:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lfreemarker/template/TemplateNodeModel;

    if-eqz v1, :cond_61

    .line 51
    iget-object v1, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    move-object v1, v2

    goto :goto_15

    :cond_11
    invoke-virtual {v1, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 52
    :goto_15
    iget-object v3, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    instance-of v4, v3, Lfreemarker/core/StringLiteral;

    if-eqz v4, :cond_26

    .line 53
    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object v1

    goto :goto_30

    .line 54
    :cond_26
    instance-of v4, v3, Lfreemarker/core/ListLiteral;

    if-eqz v4, :cond_30

    .line 55
    check-cast v3, Lfreemarker/core/ListLiteral;

    invoke-virtual {v3, p1}, Lfreemarker/core/ListLiteral;->evaluateStringsToNamespaces(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object v1

    :cond_30
    :goto_30
    if-eqz v1, :cond_59

    .line 58
    instance-of v3, v1, Lfreemarker/core/Environment$Namespace;

    if-eqz v3, :cond_41

    .line 59
    new-instance v3, Lfreemarker/template/SimpleSequence;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 60
    invoke-virtual {v3, v1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_59

    .line 62
    :cond_41
    instance-of v3, v1, Lfreemarker/template/TemplateSequenceModel;

    if-nez v3, :cond_59

    .line 63
    iget-object v0, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    if-eqz v0, :cond_51

    .line 64
    new-instance v0, Lfreemarker/core/NonSequenceException;

    iget-object v2, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    invoke-direct {v0, v2, v1, p1}, Lfreemarker/core/NonSequenceException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v0

    .line 67
    :cond_51
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "Expecting a sequence of namespaces after \"using\""

    invoke-direct {v0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_59
    :goto_59
    check-cast v0, Lfreemarker/template/TemplateNodeModel;

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p1, v0, v1}, Lfreemarker/core/Environment;->invokeNodeHandlerFor(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    return-object v2

    .line 48
    :cond_61
    new-instance v1, Lfreemarker/core/NonNodeException;

    iget-object v2, p0, Lfreemarker/core/VisitNode;->targetNode:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonNodeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/VisitNode;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lfreemarker/core/VisitNode;->targetNode:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    if-eqz v1, :cond_33

    .line 83
    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    if-eqz p1, :cond_3a

    .line 86
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 92
    const-string v0, "#visit"

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

    .line 113
    sget-object p1, Lfreemarker/core/ParameterRole;->NAMESPACE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 114
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 112
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->NODE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 104
    iget-object p1, p0, Lfreemarker/core/VisitNode;->namespaces:Lfreemarker/core/Expression;

    return-object p1

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 103
    :cond_e
    iget-object p1, p0, Lfreemarker/core/VisitNode;->targetNode:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
