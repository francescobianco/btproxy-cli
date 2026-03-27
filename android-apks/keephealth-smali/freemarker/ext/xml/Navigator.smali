.class abstract Lfreemarker/ext/xml/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/Navigator$TypeOp;,
        Lfreemarker/ext/xml/Navigator$NamespaceUriOp;,
        Lfreemarker/ext/xml/Navigator$NamespacePrefixOp;,
        Lfreemarker/ext/xml/Navigator$QualifiedNameOp;,
        Lfreemarker/ext/xml/Navigator$LocalNameOp;,
        Lfreemarker/ext/xml/Navigator$TextOp;,
        Lfreemarker/ext/xml/Navigator$ContentOp;,
        Lfreemarker/ext/xml/Navigator$DocumentTypeOp;,
        Lfreemarker/ext/xml/Navigator$DocumentOp;,
        Lfreemarker/ext/xml/Navigator$ParentOp;,
        Lfreemarker/ext/xml/Navigator$AncestorOp;,
        Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;,
        Lfreemarker/ext/xml/Navigator$DescendantOp;,
        Lfreemarker/ext/xml/Navigator$DescendantOrSelfOp;,
        Lfreemarker/ext/xml/Navigator$AttributesOp;,
        Lfreemarker/ext/xml/Navigator$ChildrenOp;,
        Lfreemarker/ext/xml/Navigator$XPathEx;
    }
.end annotation


# instance fields
.field private final attributeOperator:Lfreemarker/ext/xml/NodeOperator;

.field private final childrenOperator:Lfreemarker/ext/xml/NodeOperator;

.field private final operators:Ljava/util/Map;

.field private final xpathCache:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->xpathCache:Ljava/util/Map;

    .line 38
    invoke-direct {p0}, Lfreemarker/ext/xml/Navigator;->createOperatorMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->operators:Ljava/util/Map;

    .line 39
    const-string v0, "_attributes"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/Navigator;->getOperator(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->attributeOperator:Lfreemarker/ext/xml/NodeOperator;

    .line 40
    const-string v0, "_children"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/Navigator;->getOperator(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/Navigator;->childrenOperator:Lfreemarker/ext/xml/NodeOperator;

    return-void
.end method

.method static synthetic access$1600(Lfreemarker/ext/xml/Navigator;Ljava/lang/Object;Ljava/util/List;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/Navigator;->getAncestors(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method private createOperatorMap()Ljava/util/Map;
    .registers 5

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    new-instance v1, Lfreemarker/ext/xml/Navigator$AttributesOp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$AttributesOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_attributes"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "@*"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Lfreemarker/ext/xml/Navigator$ChildrenOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$ChildrenOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_children"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "*"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Lfreemarker/ext/xml/Navigator$DescendantOrSelfOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$DescendantOrSelfOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_descendantOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Lfreemarker/ext/xml/Navigator$DescendantOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$DescendantOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_descendant"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lfreemarker/ext/xml/Navigator$DocumentOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$DocumentOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_document"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Lfreemarker/ext/xml/Navigator$DocumentTypeOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$DocumentTypeOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_doctype"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lfreemarker/ext/xml/Navigator$AncestorOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$AncestorOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_ancestor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_ancestorOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lfreemarker/ext/xml/Navigator$ContentOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$ContentOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_content"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Lfreemarker/ext/xml/Navigator$LocalNameOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$LocalNameOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Lfreemarker/ext/xml/Navigator$NamespacePrefixOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$NamespacePrefixOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_nsprefix"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lfreemarker/ext/xml/Navigator$NamespaceUriOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$NamespaceUriOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_nsuri"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Lfreemarker/ext/xml/Navigator$ParentOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$ParentOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_parent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Lfreemarker/ext/xml/Navigator$QualifiedNameOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$QualifiedNameOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_qname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v1, Lfreemarker/ext/xml/Navigator$TextOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$TextOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v3, "_text"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Lfreemarker/ext/xml/Navigator$TypeOp;

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/xml/Navigator$TypeOp;-><init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V

    const-string v2, "_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getAncestors(Ljava/lang/Object;Ljava/util/List;)V
    .registers 3

    .line 94
    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method applyXPath(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->xpathCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_21

    .line 62
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/xml/Navigator;->xpathCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/xml/Navigator$XPathEx;

    if-nez v1, :cond_16

    .line 64
    invoke-virtual {p0, p2}, Lfreemarker/ext/xml/Navigator;->createXPathEx(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator$XPathEx;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lfreemarker/ext/xml/Navigator;->xpathCache:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 68
    :try_start_17
    check-cast p3, Lorg/jaxen/NamespaceContext;

    invoke-interface {v1, p1, p3}, Lfreemarker/ext/xml/Navigator$XPathEx;->selectNodes(Ljava/lang/Object;Lorg/jaxen/NamespaceContext;)Ljava/util/List;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_21

    return-object p1

    :catchall_1e
    move-exception p1

    .line 67
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception p1

    .line 70
    new-instance p3, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not evaulate XPath expression "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method abstract createXPathEx(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator$XPathEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method equal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_c

    :cond_6
    const/4 p1, 0x0

    goto :goto_c

    .line 129
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_c
    return p1
.end method

.method abstract getAsString(Ljava/lang/Object;Ljava/io/StringWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method getAttributeOperator()Lfreemarker/ext/xml/NodeOperator;
    .registers 2

    .line 47
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->attributeOperator:Lfreemarker/ext/xml/NodeOperator;

    return-object v0
.end method

.method abstract getAttributes(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method abstract getChildren(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method getChildrenOperator()Lfreemarker/ext/xml/NodeOperator;
    .registers 2

    .line 51
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->childrenOperator:Lfreemarker/ext/xml/NodeOperator;

    return-object v0
.end method

.method abstract getContent(Ljava/lang/Object;Ljava/util/List;)V
.end method

.method abstract getDescendants(Ljava/lang/Object;Ljava/util/List;)V
.end method

.method abstract getDocument(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract getDocumentType(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract getLocalName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method abstract getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method abstract getNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method getOperator(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;
    .registers 3

    .line 43
    iget-object v0, p0, Lfreemarker/ext/xml/Navigator;->operators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/xml/NodeOperator;

    return-object p1
.end method

.method abstract getParent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method getQualifiedName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 112
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->getLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_8
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/Navigator;->getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2d

    .line 120
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method abstract getText(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method abstract getType(Ljava/lang/Object;)Ljava/lang/String;
.end method
