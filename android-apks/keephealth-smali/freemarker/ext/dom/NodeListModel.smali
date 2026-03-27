.class Lfreemarker/ext/dom/NodeListModel;
.super Lfreemarker/template/SimpleSequence;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;


# static fields
.field private static final NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;


# instance fields
.field contextNode:Lfreemarker/ext/dom/NodeModel;

.field xpathSupport:Lfreemarker/ext/dom/XPathSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lfreemarker/ext/dom/NodeListModel$1;

    invoke-direct {v0}, Lfreemarker/ext/dom/NodeListModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/NodeListModel;->NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method constructor <init>(Lfreemarker/ext/dom/NodeModel;)V
    .registers 3

    .line 74
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 75
    iput-object p1, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lfreemarker/ext/dom/NodeModel;)V
    .registers 4

    .line 95
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    .line 96
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lfreemarker/ext/dom/NodeModel;)V
    .registers 6

    .line 87
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 88
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 89
    iget-object v1, p0, Lfreemarker/ext/dom/NodeListModel;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 91
    :cond_18
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 70
    invoke-static {p1}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/NodeModel;)V

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/NodeModel;)V
    .registers 6

    .line 79
    sget-object v0, Lfreemarker/ext/dom/NodeListModel;->NODE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 80
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 81
    iget-object v1, p0, Lfreemarker/ext/dom/NodeListModel;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 83
    :cond_18
    iput-object p2, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    return-void
.end method

.method private newTypeErrorExplanation(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 9

    .line 219
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_d

    const-string v0, "no matches."

    goto :goto_f

    :cond_d
    const-string v0, "multiple matches."

    :goto_f
    move-object v6, v0

    const-string v1, "This XML query result can\'t be used as "

    const-string v3, " because for that it had to contain exactly 1 XML node, but it contains "

    const-string v5, " nodes. That is, the constructing XML query has found "

    move-object v2, p1

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private rawNodeList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 187
    invoke-virtual {p0, v2}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/NodeModel;

    iget-object v3, v3, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 204
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_40

    .line 205
    aget-object v1, p1, v0

    .line 206
    const-class v2, Lfreemarker/template/TemplateScalarModel;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_39

    const-class v2, Lfreemarker/template/TemplateDateModel;

    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_39

    const-class v2, Lfreemarker/template/TemplateNumberModel;

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_39

    const-class v2, Lfreemarker/template/TemplateBooleanModel;

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_39

    .line 211
    :cond_27
    const-class v2, Lfreemarker/template/TemplateNodeModel;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 212
    const-string p1, "node"

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeListModel;->newTypeErrorExplanation(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_39
    :goto_39
    const-string p1, "string"

    invoke-direct {p0, p1}, Lfreemarker/ext/dom/NodeListModel;->newTypeErrorExplanation(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method filterByName(Ljava/lang/String;)Lfreemarker/ext/dom/NodeListModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 100
    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/NodeModel;)V

    .line 101
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 105
    :cond_e
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_2e

    .line 107
    invoke-virtual {p0, v3}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/dom/NodeModel;

    .line 108
    instance-of v5, v4, Lfreemarker/ext/dom/ElementModel;

    if-eqz v5, :cond_2b

    .line 109
    move-object v5, v4

    check-cast v5, Lfreemarker/ext/dom/ElementModel;

    invoke-virtual {v5, p1, v2}, Lfreemarker/ext/dom/ElementModel;->matchesName(Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 110
    invoke-virtual {v0, v4}, Lfreemarker/ext/dom/NodeListModel;->add(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2e
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 124
    invoke-virtual {p0, v1}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/NodeModel;

    .line 125
    invoke-virtual {v0, p1}, Lfreemarker/ext/dom/NodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 127
    :cond_13
    const-string v3, "@@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 128
    sget-object v4, Lfreemarker/ext/dom/AtAtKey;->MARKUP:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v4}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    sget-object v4, Lfreemarker/ext/dom/AtAtKey;->NESTED_MARKUP:Lfreemarker/ext/dom/AtAtKey;

    .line 129
    invoke-virtual {v4}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    sget-object v4, Lfreemarker/ext/dom/AtAtKey;->TEXT:Lfreemarker/ext/dom/AtAtKey;

    .line 130
    invoke-virtual {v4}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_99

    .line 138
    :cond_40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c0

    .line 140
    invoke-static {p1}, Lfreemarker/ext/dom/AtAtKey;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 141
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\" is only applicable to a single XML node, but it was applied on "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_76

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " XML nodes (multiple matches)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_76
    const-string v0, "an empty list of XML nodes (no matches)."

    :goto_78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_84
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported @@ key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_99
    :goto_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9e
    if-ge v1, v0, :cond_b6

    .line 133
    invoke-virtual {p0, v1}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/NodeModel;

    .line 134
    invoke-virtual {v3, p1}, Lfreemarker/ext/dom/NodeModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    .line 135
    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 137
    :cond_b6
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 151
    :cond_c0
    invoke-static {p1}, Lfreemarker/ext/dom/DomStringUtil;->isXMLNameLike(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11b

    const-string v4, "@"

    .line 152
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 153
    invoke-static {p1, v2}, Lfreemarker/ext/dom/DomStringUtil;->isXMLNameLike(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_11b

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    const-string v3, "@*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    :cond_e2
    const-string v3, "*"

    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    const-string v3, "**"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    goto :goto_11b

    .line 173
    :cond_f3
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v1

    if-eqz v1, :cond_106

    if-nez v0, :cond_fd

    const/4 v0, 0x0

    goto :goto_101

    .line 179
    :cond_fd
    invoke-direct {p0}, Lfreemarker/ext/dom/NodeListModel;->rawNodeList()Ljava/util/List;

    move-result-object v0

    .line 180
    :goto_101
    invoke-interface {v1, v0, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 175
    :cond_106
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_11b
    :goto_11b
    new-instance v3, Lfreemarker/ext/dom/NodeListModel;

    iget-object v4, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    invoke-direct {v3, v4}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lfreemarker/ext/dom/NodeModel;)V

    move v4, v1

    :goto_123
    if-ge v4, v0, :cond_14d

    .line 157
    invoke-virtual {p0, v4}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/ext/dom/NodeModel;

    .line 158
    instance-of v6, v5, Lfreemarker/ext/dom/ElementModel;

    if-eqz v6, :cond_14a

    .line 159
    check-cast v5, Lfreemarker/ext/dom/ElementModel;

    invoke-virtual {v5, p1}, Lfreemarker/ext/dom/ElementModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v5, :cond_14a

    .line 161
    invoke-interface {v5}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v6

    move v7, v1

    :goto_13e
    if-ge v7, v6, :cond_14a

    .line 163
    invoke-interface {v5, v7}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v8

    invoke-virtual {v3, v8}, Lfreemarker/ext/dom/NodeListModel;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13e

    :cond_14a
    add-int/lit8 v4, v4, 0x1

    goto :goto_123

    .line 168
    :cond_14d
    invoke-virtual {v3}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result p1

    if-ne p1, v2, :cond_158

    .line 169
    invoke-virtual {v3, v1}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_158
    return-object v3
.end method

.method getXPathSupport()Lfreemarker/ext/dom/XPathSupport;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    if-nez v0, :cond_22

    .line 194
    iget-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->contextNode:Lfreemarker/ext/dom/NodeModel;

    if-eqz v0, :cond_f

    .line 195
    invoke-virtual {v0}, Lfreemarker/ext/dom/NodeModel;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    goto :goto_22

    .line 196
    :cond_f
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/dom/NodeModel;

    invoke-virtual {v0}, Lfreemarker/ext/dom/NodeModel;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    .line 200
    :cond_22
    :goto_22
    iget-object v0, p0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 118
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
