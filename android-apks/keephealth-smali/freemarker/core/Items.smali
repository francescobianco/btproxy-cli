.class Lfreemarker/core/Items;
.super Lfreemarker/core/TemplateElement;
.source "Items.java"


# instance fields
.field private final loopVar2Name:Ljava/lang/String;

.field private final loopVarName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/TemplateElements;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 40
    iput-object p1, p0, Lfreemarker/core/Items;->loopVarName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p3}, Lfreemarker/core/Items;->setChildren(Lfreemarker/core/TemplateElements;)V

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lfreemarker/core/Environment;->findClosestEnclosingIterationContext()Lfreemarker/core/IteratorBlock$IterationContext;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 54
    invoke-virtual {p0}, Lfreemarker/core/Items;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Items;->loopVarName:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lfreemarker/core/IteratorBlock$IterationContext;->loopForItemsElement(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_13
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    .line 51
    invoke-virtual {p0}, Lfreemarker/core/Items;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    const-string v2, " without iteration in context"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/Items;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lfreemarker/core/Items;->loopVarName:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 71
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    if-eqz p1, :cond_50

    const/16 p1, 0x3e

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lfreemarker/core/Items;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lfreemarker/core/Items;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "#items"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 91
    iget-object v0, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 114
    iget-object p1, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 115
    sget-object p1, Lfreemarker/core/ParameterRole;->TARGET_LOOP_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 114
    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 116
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 111
    :cond_18
    iget-object p1, p0, Lfreemarker/core/Items;->loopVarName:Ljava/lang/String;

    if-eqz p1, :cond_1f

    .line 112
    sget-object p1, Lfreemarker/core/ParameterRole;->TARGET_LOOP_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 111
    :cond_1f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 101
    iget-object p1, p0, Lfreemarker/core/Items;->loopVar2Name:Ljava/lang/String;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 103
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 98
    :cond_16
    iget-object p1, p0, Lfreemarker/core/Items;->loopVarName:Ljava/lang/String;

    if-eqz p1, :cond_1b

    return-object p1

    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
