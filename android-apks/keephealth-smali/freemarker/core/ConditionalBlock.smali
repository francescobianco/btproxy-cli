.class final Lfreemarker/core/ConditionalBlock;
.super Lfreemarker/core/TemplateElement;
.source "ConditionalBlock.java"


# static fields
.field static final TYPE_ELSE:I = 0x1

.field static final TYPE_ELSE_IF:I = 0x2

.field static final TYPE_IF:I


# instance fields
.field final condition:Lfreemarker/core/Expression;

.field private final type:I


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    .line 42
    invoke-virtual {p0, p2}, Lfreemarker/core/ConditionalBlock;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 43
    iput p3, p0, Lfreemarker/core/ConditionalBlock;->type:I

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lfreemarker/core/ConditionalBlock;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/ConditionalBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    if-eqz v1, :cond_25

    const/16 v1, 0x20

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    if-eqz p1, :cond_40

    .line 64
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lfreemarker/core/ConditionalBlock;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lfreemarker/core/ConditionalBlock;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/core/IfBlock;

    if-nez p1, :cond_40

    .line 67
    const-string p1, "</#if>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 3

    .line 75
    iget v0, p0, Lfreemarker/core/ConditionalBlock;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 76
    const-string v0, "#else"

    return-object v0

    :cond_8
    if-nez v0, :cond_d

    .line 78
    const-string v0, "#if"

    return-object v0

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 80
    const-string v0, "#elseif"

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Lfreemarker/core/BugException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 104
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 103
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->CONDITION:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 95
    iget p1, p0, Lfreemarker/core/ConditionalBlock;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 96
    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 94
    :cond_12
    iget-object p1, p0, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
