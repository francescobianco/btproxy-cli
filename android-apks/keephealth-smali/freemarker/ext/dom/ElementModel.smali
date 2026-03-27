.class Lfreemarker/ext/dom/ElementModel;
.super Lfreemarker/ext/dom/NodeModel;
.source "ElementModel.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeModel;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method private getAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 7

    .line 183
    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    .line 184
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    const/16 v2, 0x3a

    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3d

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 192
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/core/Environment;->getDefaultNS()Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 194
    :cond_29
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v4

    invoke-virtual {v4, v3}, Lfreemarker/core/Environment;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_31
    add-int/lit8 v2, v2, 0x1

    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_3d

    .line 198
    invoke-interface {v0, v3, p1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    :cond_3d
    return-object v1
.end method

.method private isBlankXMLText(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    .line 214
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lfreemarker/ext/dom/ElementModel;->isXMLWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method private isSignificantNode(Lorg/w3c/dom/Node;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_21

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    goto :goto_21

    .line 207
    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2c

    goto :goto_2d

    .line 206
    :cond_21
    :goto_21
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/ElementModel;->isBlankXMLText(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    return v2
.end method

.method private isXMLWhiteSpace(C)Z
    .registers 6

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1d

    const/16 v0, 0xa

    const/4 v2, 0x0

    if-ne p1, v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    const/16 v3, 0xd

    if-ne p1, v3, :cond_17

    move p1, v1

    goto :goto_18

    :cond_17
    move p1, v2

    :goto_18
    or-int/2addr p1, v0

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_1d
    return v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 60
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    .line 61
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/NodeModel;)V

    .line 62
    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    :goto_17
    if-ge v2, v1, :cond_2d

    .line 65
    invoke-interface {v0, v2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/NodeModel;

    .line 66
    iget-object v5, v4, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_2a

    .line 67
    invoke-virtual {p1, v4}, Lfreemarker/ext/dom/NodeListModel;->add(Ljava/lang/Object;)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    return-object p1

    .line 71
    :cond_2e
    const-string v1, "**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 72
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/NodeModel;)V

    return-object p1

    .line 73
    :cond_44
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 74
    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 75
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->ATTRIBUTES:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 76
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/NodeModel;)V

    return-object p1

    .line 77
    :cond_6c
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->START_TAG:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 78
    new-instance p1, Lfreemarker/ext/dom/NodeOutputter;

    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lfreemarker/ext/dom/NodeOutputter;-><init>(Lorg/w3c/dom/Node;)V

    .line 79
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v1}, Lfreemarker/ext/dom/NodeOutputter;->getOpeningTag(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_8d
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->END_TAG:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 81
    new-instance p1, Lfreemarker/ext/dom/NodeOutputter;

    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-direct {p1, v0}, Lfreemarker/ext/dom/NodeOutputter;-><init>(Lorg/w3c/dom/Node;)V

    .line 82
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v1}, Lfreemarker/ext/dom/NodeOutputter;->getClosingTag(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 83
    :cond_ae
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->ATTRIBUTES_MARKUP:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    new-instance v0, Lfreemarker/ext/dom/NodeOutputter;

    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/NodeOutputter;-><init>(Lorg/w3c/dom/Node;)V

    .line 86
    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/NodeOutputter;->outputContent(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/StringBuilder;)V

    .line 87
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 88
    :cond_dd
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->PREVIOUS_SIBLING_ELEMENT:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_114

    .line 89
    iget-object p1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_f0
    if-eqz p1, :cond_fd

    .line 90
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/ElementModel;->isSignificantNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_f0

    :cond_fd
    if-eqz p1, :cond_10a

    .line 93
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_10a

    .line 94
    invoke-static {p1}, Lfreemarker/ext/dom/ElementModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    goto :goto_113

    :cond_10a
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Ljava/util/List;Lfreemarker/ext/dom/NodeModel;)V

    :goto_113
    return-object p1

    .line 95
    :cond_114
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->NEXT_SIBLING_ELEMENT:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 96
    iget-object p1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_126
    if-eqz p1, :cond_133

    .line 97
    invoke-direct {p0, p1}, Lfreemarker/ext/dom/ElementModel;->isSignificantNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_133

    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_126

    :cond_133
    if-eqz p1, :cond_140

    .line 100
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_140

    .line 101
    invoke-static {p1}, Lfreemarker/ext/dom/ElementModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    goto :goto_149

    :cond_140
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Ljava/util/List;Lfreemarker/ext/dom/NodeModel;)V

    :goto_149
    return-object p1

    .line 104
    :cond_14a
    invoke-super {p0, p1}, Lfreemarker/ext/dom/NodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 107
    :cond_14f
    invoke-static {p1, v3}, Lfreemarker/ext/dom/DomStringUtil;->isXMLNameLike(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/ElementModel;->getAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-nez p1, :cond_165

    .line 110
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {p1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/NodeModel;)V

    return-object p1

    .line 112
    :cond_165
    invoke-static {p1}, Lfreemarker/ext/dom/ElementModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    return-object p1

    .line 113
    :cond_16a
    const-string v0, "@*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 114
    new-instance p1, Lfreemarker/ext/dom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/NodeModel;)V

    return-object p1

    .line 117
    :cond_17e
    invoke-super {p0, p1}, Lfreemarker/ext/dom/NodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 120
    :cond_183
    invoke-static {p1}, Lfreemarker/ext/dom/DomStringUtil;->isXMLNameLike(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 122
    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/NodeListModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/dom/NodeListModel;->filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/NodeListModel;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    if-eq v0, v3, :cond_19a

    goto :goto_19e

    :cond_19a
    invoke-virtual {p1, v2}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_19e
    return-object p1

    .line 126
    :cond_19f
    invoke-super {p0, p1}, Lfreemarker/ext/dom/NodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 133
    const-string v1, ""

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_61

    .line 134
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 135
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_38

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20

    const/4 v5, 0x4

    if-ne v4, v5, :cond_35

    .line 143
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 137
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only elements with no child elements can be processed as text.\nThis element with name \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    .line 139
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has a child element named: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    return-object v1
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 3

    .line 150
    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 151
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 152
    :cond_10
    iget-object v0, p0, Lfreemarker/ext/dom/ElementModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method getQualifiedName()Ljava/lang/String;
    .registers 5

    .line 159
    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_56

    .line 164
    :cond_11
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lfreemarker/core/Environment;->getDefaultNS()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 168
    const-string v1, ""

    goto :goto_28

    .line 170
    :cond_24
    invoke-virtual {v2, v1}, Lfreemarker/core/Environment;->getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_28
    if-nez v1, :cond_2c

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_45

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_56
    :goto_56
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method matchesName(Ljava/lang/String;Lfreemarker/core/Environment;)Z
    .registers 5

    .line 230
    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/dom/ElementModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lfreemarker/ext/dom/DomStringUtil;->matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method
