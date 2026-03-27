.class final Lfreemarker/core/Case;
.super Lfreemarker/core/TemplateElement;
.source "Case.java"


# static fields
.field static final TYPE_CASE:I = 0x0

.field static final TYPE_DEFAULT:I = 0x1


# instance fields
.field condition:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 33
    iput-object p1, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    .line 34
    invoke-virtual {p0, p2}, Lfreemarker/core/Case;->setChildren(Lfreemarker/core/TemplateElements;)V

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lfreemarker/core/Case;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/Case;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    if-eqz v1, :cond_25

    const/16 v1, 0x20

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    if-eqz p1, :cond_33

    const/16 p1, 0x3e

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lfreemarker/core/Case;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    if-eqz v0, :cond_7

    const-string v0, "#case"

    goto :goto_9

    :cond_7
    const-string v0, "#default"

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

    .line 81
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 82
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 80
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->CONDITION:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 72
    iget-object p1, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 71
    :cond_15
    iget-object p1, p0, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
