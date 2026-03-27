.class final Lfreemarker/core/MixedContent;
.super Lfreemarker/core/TemplateElement;
.source "MixedContent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

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

    .line 63
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method

.method addElement(ILfreemarker/core/TemplateElement;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/MixedContent;->addChild(ILfreemarker/core/TemplateElement;)V

    return-void
.end method

.method addElement(Lfreemarker/core/TemplateElement;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lfreemarker/core/MixedContent;->addChild(Lfreemarker/core/TemplateElement;)V

    return-void
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 69
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_7
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    if-nez p1, :cond_10

    .line 72
    const-string p1, "root"

    return-object p1

    .line 74
    :cond_10
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "#mixed_content"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 106
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 101
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isIgnorable(Z)Z
    .registers 2

    .line 111
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getChildCount()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isOutputCacheable()Z
    .registers 5

    .line 80
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 82
    invoke-virtual {p0, v2}, Lfreemarker/core/MixedContent;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/core/TemplateElement;->isOutputCacheable()Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method postParseCleanup(Z)Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lfreemarker/core/TemplateElement;->postParseCleanup(Z)Lfreemarker/core/TemplateElement;

    .line 53
    invoke-virtual {p0}, Lfreemarker/core/MixedContent;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfreemarker/core/MixedContent;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object p1

    goto :goto_11

    :cond_10
    move-object p1, p0

    :goto_11
    return-object p1
.end method
