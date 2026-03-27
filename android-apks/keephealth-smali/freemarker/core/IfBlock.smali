.class final Lfreemarker/core/IfBlock;
.super Lfreemarker/core/TemplateElement;
.source "IfBlock.java"


# direct methods
.method constructor <init>(Lfreemarker/core/ConditionalBlock;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lfreemarker/core/IfBlock;->setChildBufferCapacity(I)V

    .line 35
    invoke-virtual {p0, p1}, Lfreemarker/core/IfBlock;->addBlock(Lfreemarker/core/ConditionalBlock;)V

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

    .line 44
    invoke-virtual {p0}, Lfreemarker/core/IfBlock;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_23

    .line 46
    invoke-virtual {p0, v1}, Lfreemarker/core/IfBlock;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v2

    check-cast v2, Lfreemarker/core/ConditionalBlock;

    .line 47
    iget-object v3, v2, Lfreemarker/core/ConditionalBlock;->condition:Lfreemarker/core/Expression;

    .line 48
    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->replaceElementStackTop(Lfreemarker/core/TemplateElement;)V

    if-eqz v3, :cond_1e

    .line 49
    invoke-virtual {v3, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50
    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Lfreemarker/core/ConditionalBlock;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method addBlock(Lfreemarker/core/ConditionalBlock;)V
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lfreemarker/core/IfBlock;->addChild(Lfreemarker/core/TemplateElement;)V

    return-void
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p0}, Lfreemarker/core/IfBlock;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    .line 74
    invoke-virtual {p0, v2}, Lfreemarker/core/IfBlock;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v3

    check-cast v3, Lfreemarker/core/ConditionalBlock;

    .line 75
    invoke-virtual {v3, p1}, Lfreemarker/core/ConditionalBlock;->dump(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 77
    :cond_1e
    const-string p1, "</#if>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_28
    invoke-virtual {p0}, Lfreemarker/core/IfBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "#if-#elseif-#else-container"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 101
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 96
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method postParseCleanup(Z)Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lfreemarker/core/IfBlock;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lfreemarker/core/IfBlock;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v0

    check-cast v0, Lfreemarker/core/ConditionalBlock;

    .line 61
    invoke-virtual {p0}, Lfreemarker/core/IfBlock;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {v0, v1, v0, p0}, Lfreemarker/core/ConditionalBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    .line 62
    invoke-virtual {v0, p1}, Lfreemarker/core/ConditionalBlock;->postParseCleanup(Z)Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1a
    invoke-super {p0, p1}, Lfreemarker/core/TemplateElement;->postParseCleanup(Z)Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method
