.class final Lfreemarker/core/AssignmentInstruction;
.super Lfreemarker/core/TemplateElement;
.source "AssignmentInstruction.java"


# instance fields
.field private namespaceExp:Lfreemarker/core/Expression;

.field private scope:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 37
    iput p1, p0, Lfreemarker/core/AssignmentInstruction;->scope:I

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lfreemarker/core/AssignmentInstruction;->setChildBufferCapacity(I)V

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lfreemarker/core/AssignmentInstruction;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method

.method addAssignment(Lfreemarker/core/Assignment;)V
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lfreemarker/core/AssignmentInstruction;->addChild(Lfreemarker/core/TemplateElement;)V

    return-void
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 6

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_c
    iget v1, p0, Lfreemarker/core/AssignmentInstruction;->scope:I

    invoke-static {v1}, Lfreemarker/core/Assignment;->getDirectiveName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3a

    const/16 v1, 0x20

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lfreemarker/core/AssignmentInstruction;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_3f

    if-eqz v2, :cond_2a

    .line 68
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_2a
    invoke-virtual {p0, v2}, Lfreemarker/core/AssignmentInstruction;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Assignment;

    .line 71
    invoke-virtual {v3}, Lfreemarker/core/Assignment;->getCanonicalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 74
    :cond_3a
    const-string v1, "-container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_3f
    iget-object v1, p0, Lfreemarker/core/AssignmentInstruction;->namespaceExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_51

    .line 77
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lfreemarker/core/AssignmentInstruction;->namespaceExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    if-eqz p1, :cond_58

    .line 80
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 109
    iget v0, p0, Lfreemarker/core/AssignmentInstruction;->scope:I

    invoke-static {v0}, Lfreemarker/core/Assignment;->getDirectiveName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_7
    sget-object p1, Lfreemarker/core/ParameterRole;->NAMESPACE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 101
    :cond_a
    sget-object p1, Lfreemarker/core/ParameterRole;->VARIABLE_SCOPE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_7
    iget-object p1, p0, Lfreemarker/core/AssignmentInstruction;->namespaceExp:Lfreemarker/core/Expression;

    return-object p1

    .line 92
    :cond_a
    iget p1, p0, Lfreemarker/core/AssignmentInstruction;->scope:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method setNamespaceExp(Lfreemarker/core/Expression;)V
    .registers 5

    .line 46
    iput-object p1, p0, Lfreemarker/core/AssignmentInstruction;->namespaceExp:Lfreemarker/core/Expression;

    .line 47
    invoke-virtual {p0}, Lfreemarker/core/AssignmentInstruction;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 49
    invoke-virtual {p0, v1}, Lfreemarker/core/AssignmentInstruction;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Assignment;

    invoke-virtual {v2, p1}, Lfreemarker/core/Assignment;->setNamespaceExp(Lfreemarker/core/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
