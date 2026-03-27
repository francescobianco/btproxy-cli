.class Lfreemarker/core/ListElseContainer;
.super Lfreemarker/core/TemplateElement;
.source "ListElseContainer.java"


# instance fields
.field private final elsePart:Lfreemarker/core/ElseOfList;

.field private final listPart:Lfreemarker/core/IteratorBlock;


# direct methods
.method public constructor <init>(Lfreemarker/core/IteratorBlock;Lfreemarker/core/ElseOfList;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, v0}, Lfreemarker/core/ListElseContainer;->setChildBufferCapacity(I)V

    .line 32
    invoke-virtual {p0, p1}, Lfreemarker/core/ListElseContainer;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 33
    invoke-virtual {p0, p2}, Lfreemarker/core/ListElseContainer;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 34
    iput-object p1, p0, Lfreemarker/core/ListElseContainer;->listPart:Lfreemarker/core/IteratorBlock;

    .line 35
    iput-object p2, p0, Lfreemarker/core/ListElseContainer;->elsePart:Lfreemarker/core/ElseOfList;

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

    .line 40
    iget-object v0, p0, Lfreemarker/core/ListElseContainer;->listPart:Lfreemarker/core/IteratorBlock;

    invoke-virtual {v0, p1}, Lfreemarker/core/IteratorBlock;->acceptWithResult(Lfreemarker/core/Environment;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 41
    iget-object v0, p0, Lfreemarker/core/ListElseContainer;->elsePart:Lfreemarker/core/ElseOfList;

    invoke-virtual {v0, p1}, Lfreemarker/core/ElseOfList;->accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_26

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lfreemarker/core/ListElseContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    .line 57
    invoke-virtual {p0, v2}, Lfreemarker/core/ListElseContainer;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v3

    .line 58
    invoke-virtual {v3, p1}, Lfreemarker/core/TemplateElement;->dump(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 60
    :cond_1c
    const-string p1, "</#list>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_26
    invoke-virtual {p0}, Lfreemarker/core/ListElseContainer;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, "#list-#else-container"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 84
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 79
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
