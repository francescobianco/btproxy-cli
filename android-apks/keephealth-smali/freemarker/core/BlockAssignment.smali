.class final Lfreemarker/core/BlockAssignment;
.super Lfreemarker/core/TemplateElement;
.source "BlockAssignment.java"


# instance fields
.field private final markupOutputFormat:Lfreemarker/core/MarkupOutputFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfreemarker/core/MarkupOutputFormat<",
            "*>;"
        }
    .end annotation
.end field

.field private final namespaceExp:Lfreemarker/core/Expression;

.field private final scope:I

.field private final varName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfreemarker/core/TemplateElements;Ljava/lang/String;ILfreemarker/core/Expression;Lfreemarker/core/MarkupOutputFormat;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/TemplateElements;",
            "Ljava/lang/String;",
            "I",
            "Lfreemarker/core/Expression;",
            "Lfreemarker/core/MarkupOutputFormat<",
            "*>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lfreemarker/core/BlockAssignment;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 42
    iput-object p2, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lfreemarker/core/BlockAssignment;->namespaceExp:Lfreemarker/core/Expression;

    .line 44
    iput p3, p0, Lfreemarker/core/BlockAssignment;->scope:I

    .line 45
    iput-object p5, p0, Lfreemarker/core/BlockAssignment;->markupOutputFormat:Lfreemarker/core/MarkupOutputFormat;

    return-void
.end method

.method private capturedStringToModel(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lfreemarker/core/BlockAssignment;->markupOutputFormat:Lfreemarker/core/MarkupOutputFormat;

    if-nez v0, :cond_a

    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_a
    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->fromMarkup(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v0

    :goto_e
    return-object v0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lfreemarker/core/BlockAssignment;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 54
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 55
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;Ljava/io/Writer;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/BlockAssignment;->capturedStringToModel(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_1d

    .line 58
    :cond_17
    const-string v0, ""

    invoke-direct {p0, v0}, Lfreemarker/core/BlockAssignment;->capturedStringToModel(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 61
    :goto_1d
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->namespaceExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_2d

    .line 62
    invoke-virtual {v1, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49

    .line 63
    :cond_2d
    iget v1, p0, Lfreemarker/core/BlockAssignment;->scope:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    .line 64
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->setVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_49

    :cond_38
    const/4 v2, 0x3

    if-ne v1, v2, :cond_41

    .line 66
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->setGlobalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_49

    :cond_41
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 68
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->setLocalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    :goto_49
    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_4b
    new-instance p1, Lfreemarker/core/BugException;

    const-string v0, "Unhandled scope"

    invoke-direct {p1, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    .line 83
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/BlockAssignment;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->namespaceExp:Lfreemarker/core/Expression;

    if-eqz v1, :cond_2f

    .line 88
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lfreemarker/core/BlockAssignment;->namespaceExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    if-eqz p1, :cond_4d

    const/16 p1, 0x3e

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lfreemarker/core/BlockAssignment;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lfreemarker/core/BlockAssignment;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 98
    :cond_4d
    const-string p1, " = .nested_output"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 105
    iget v0, p0, Lfreemarker/core/BlockAssignment;->scope:I

    invoke-static {v0}, Lfreemarker/core/Assignment;->getDirectiveName(I)Ljava/lang/String;

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

    .line 128
    sget-object p1, Lfreemarker/core/ParameterRole;->NAMESPACE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 129
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 127
    :cond_11
    sget-object p1, Lfreemarker/core/ParameterRole;->VARIABLE_SCOPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 126
    :cond_14
    sget-object p1, Lfreemarker/core/ParameterRole;->ASSIGNMENT_TARGET:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 118
    iget-object p1, p0, Lfreemarker/core/BlockAssignment;->namespaceExp:Lfreemarker/core/Expression;

    return-object p1

    .line 119
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 117
    :cond_11
    iget p1, p0, Lfreemarker/core/BlockAssignment;->scope:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 116
    :cond_18
    iget-object p1, p0, Lfreemarker/core/BlockAssignment;->varName:Ljava/lang/String;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
