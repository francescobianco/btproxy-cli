.class final Lfreemarker/core/RecurseNode;
.super Lfreemarker/core/TemplateElement;
.source "RecurseNode.java"


# instance fields
.field namespaces:Lfreemarker/core/Expression;

.field targetNode:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    .line 42
    iput-object p2, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

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

    .line 47
    iget-object v0, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_1c

    .line 48
    instance-of v2, v0, Lfreemarker/template/TemplateNodeModel;

    if-eqz v2, :cond_12

    goto :goto_1c

    .line 49
    :cond_12
    new-instance v1, Lfreemarker/core/NonNodeException;

    iget-object v2, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    const-string v3, "node"

    invoke-direct {v1, v2, v0, v3, p1}, Lfreemarker/core/NonNodeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v1

    .line 52
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    if-nez v2, :cond_22

    move-object v2, v1

    goto :goto_26

    :cond_22
    invoke-virtual {v2, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 53
    :goto_26
    iget-object v3, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    instance-of v4, v3, Lfreemarker/core/StringLiteral;

    if-eqz v4, :cond_37

    .line 54
    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object v2

    goto :goto_41

    .line 55
    :cond_37
    instance-of v4, v3, Lfreemarker/core/ListLiteral;

    if-eqz v4, :cond_41

    .line 56
    check-cast v3, Lfreemarker/core/ListLiteral;

    invoke-virtual {v3, p1}, Lfreemarker/core/ListLiteral;->evaluateStringsToNamespaces(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object v2

    :cond_41
    :goto_41
    if-eqz v2, :cond_6a

    .line 59
    instance-of v3, v2, Lfreemarker/template/TemplateHashModel;

    if-eqz v3, :cond_52

    .line 60
    new-instance v3, Lfreemarker/template/SimpleSequence;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 61
    invoke-virtual {v3, v2}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_6a

    .line 63
    :cond_52
    instance-of v3, v2, Lfreemarker/template/TemplateSequenceModel;

    if-nez v3, :cond_6a

    .line 64
    iget-object v0, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    if-eqz v0, :cond_62

    .line 65
    new-instance v0, Lfreemarker/core/NonSequenceException;

    iget-object v1, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    invoke-direct {v0, v1, v2, p1}, Lfreemarker/core/NonSequenceException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v0

    .line 68
    :cond_62
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "Expecting a sequence of namespaces after \"using\""

    invoke-direct {v0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_6a
    :goto_6a
    check-cast v0, Lfreemarker/template/TemplateNodeModel;

    check-cast v2, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/Environment;->recurse(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    return-object v1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/RecurseNode;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    if-eqz v1, :cond_25

    const/16 v1, 0x20

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_25
    iget-object v1, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    if-eqz v1, :cond_37

    .line 87
    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    if-eqz p1, :cond_3e

    .line 90
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "#recurse"

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

    .line 117
    sget-object p1, Lfreemarker/core/ParameterRole;->NAMESPACE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 118
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 116
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->NODE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 108
    iget-object p1, p0, Lfreemarker/core/RecurseNode;->namespaces:Lfreemarker/core/Expression;

    return-object p1

    .line 109
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 107
    :cond_e
    iget-object p1, p0, Lfreemarker/core/RecurseNode;->targetNode:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
