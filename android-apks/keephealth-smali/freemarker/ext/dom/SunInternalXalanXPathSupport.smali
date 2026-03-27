.class Lfreemarker/ext/dom/SunInternalXalanXPathSupport;
.super Ljava/lang/Object;
.source "SunInternalXalanXPathSupport.java"

# interfaces
.implements Lfreemarker/ext/dom/XPathSupport;


# static fields
.field private static final CUSTOM_PREFIX_RESOLVER:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;


# instance fields
.field private xpathContext:Lcom/sun/org/apache/xpath/internal/XPathContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Lfreemarker/ext/dom/SunInternalXalanXPathSupport$1;

    invoke-direct {v0}, Lfreemarker/ext/dom/SunInternalXalanXPathSupport$1;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->CUSTOM_PREFIX_RESOLVER:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->xpathContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method private static isNodeList(Ljava/lang/Object;)Z
    .registers 5

    .line 137
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 141
    :cond_6
    check-cast p0, Ljava/util/List;

    .line 142
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1b

    .line 144
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/Node;

    if-nez v3, :cond_18

    return v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public declared-synchronized executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "Cannot deal with type: "

    const-string v1, "Xalan can\'t perform an XPath query against a Node Set (contains "

    const-string v2, "Can\'t perform an XPath query against a "

    monitor-enter p0

    .line 58
    :try_start_7
    instance-of v3, p1, Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    if-nez v3, :cond_6f

    if-eqz p1, :cond_36

    .line 59
    invoke-static {p1}, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->isNodeList(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_36

    .line 69
    :cond_15
    new-instance p2, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Expecting a single org.w3c.dom.Node."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_36
    :goto_36
    if-eqz p1, :cond_3e

    .line 60
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 61
    :cond_3e
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " node(s)). Expecting a single Node."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_5b
    const-string v0, "Xalan can\'t perform an XPath query against an empty Node Set."

    :goto_5d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " (There\'s no such restriction if you configure FreeMarker to use Jaxen for XPath.)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_6f
    check-cast p1, Lorg/w3c/dom/Node;
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_111

    .line 77
    :try_start_71
    new-instance v1, Lcom/sun/org/apache/xpath/internal/XPath;

    sget-object v2, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->CUSTOM_PREFIX_RESOLVER:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    move-object v6, p2

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 78
    iget-object p2, p0, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->xpathContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    .line 79
    iget-object v3, p0, Lfreemarker/ext/dom/SunInternalXalanXPathSupport;->xpathContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1, v3, p2, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p2

    .line 80
    instance-of v1, p2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v1, :cond_b1

    .line 81
    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    invoke-direct {v0, p1}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/Node;)V

    .line 82
    iput-object p0, v0, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;

    .line 83
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p1

    .line 86
    :cond_99
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_a2

    .line 88
    invoke-virtual {v0, p2}, Lfreemarker/ext/dom/NodeListModel;->add(Ljava/lang/Object;)V

    :cond_a2
    if-nez p2, :cond_99

    .line 91
    invoke-virtual {v0}, Lfreemarker/ext/dom/NodeListModel;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_af

    invoke-virtual {v0, v4}, Lfreemarker/ext/dom/NodeListModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_af
    .catch Ljavax/xml/transform/TransformerException; {:try_start_71 .. :try_end_af} :catch_10a
    .catchall {:try_start_71 .. :try_end_af} :catchall_111

    :cond_af
    monitor-exit p0

    return-object v0

    .line 93
    :cond_b1
    :try_start_b1
    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    if-eqz p1, :cond_c4

    .line 94
    check-cast p2, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->bool()Z

    move-result p1

    if-eqz p1, :cond_c0

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_c2

    :cond_c0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;
    :try_end_c2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b1 .. :try_end_c2} :catch_10a
    .catchall {:try_start_b1 .. :try_end_c2} :catchall_111

    :goto_c2
    monitor-exit p0

    return-object p1

    .line 96
    :cond_c4
    :try_start_c4
    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/objects/XNull;
    :try_end_c6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c4 .. :try_end_c6} :catch_10a
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_111

    if-eqz p1, :cond_cb

    .line 97
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_cb
    :try_start_cb
    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/objects/XString;

    if-eqz p1, :cond_da

    .line 100
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_cb .. :try_end_d8} :catch_10a
    .catchall {:try_start_cb .. :try_end_d8} :catchall_111

    monitor-exit p0

    return-object p1

    .line 102
    :cond_da
    :try_start_da
    instance-of p1, p2, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz p1, :cond_ef

    .line 103
    new-instance p1, Lfreemarker/template/SimpleNumber;

    check-cast p2, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;->num()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V
    :try_end_ed
    .catch Ljavax/xml/transform/TransformerException; {:try_start_da .. :try_end_ed} :catch_10a
    .catchall {:try_start_da .. :try_end_ed} :catchall_111

    monitor-exit p0

    return-object p1

    .line 105
    :cond_ef
    :try_start_ef
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_10a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_ef .. :try_end_10a} :catch_10a
    .catchall {:try_start_ef .. :try_end_10a} :catchall_111

    :catch_10a
    move-exception p1

    .line 107
    :try_start_10b
    new-instance p2, Lfreemarker/template/TemplateModelException;

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_111
    .catchall {:try_start_10b .. :try_end_111} :catchall_111

    :catchall_111
    move-exception p1

    monitor-exit p0

    throw p1
.end method
