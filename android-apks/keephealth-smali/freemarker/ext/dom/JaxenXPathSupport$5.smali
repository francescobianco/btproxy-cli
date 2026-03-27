.class final Lfreemarker/ext/dom/JaxenXPathSupport$5;
.super Lorg/jaxen/dom/DocumentNavigator;
.source "JaxenXPathSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/JaxenXPathSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lorg/jaxen/dom/DocumentNavigator;-><init>()V

    return-void
.end method


# virtual methods
.method public getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-static {p1}, Lfreemarker/ext/dom/JaxenXPathSupport;->getTemplate(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    .line 173
    # getter for: Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIAGOTOR_CACHED_DOM:Lfreemarker/core/CustomAttribute;
    invoke-static {}, Lfreemarker/ext/dom/JaxenXPathSupport;->access$000()Lfreemarker/core/CustomAttribute;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfreemarker/core/CustomAttribute;->get(Lfreemarker/template/Template;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    if-nez v1, :cond_3a

    .line 175
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 176
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 177
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 178
    new-instance v2, Lfreemarker/ext/dom/JaxenXPathSupport$FmEntityResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/ext/dom/JaxenXPathSupport$FmEntityResolver;-><init>(Lfreemarker/ext/dom/JaxenXPathSupport$1;)V

    .line 179
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 180
    # invokes: Lfreemarker/ext/dom/JaxenXPathSupport;->createInputSource(Ljava/lang/String;Lfreemarker/template/Template;)Lorg/xml/sax/InputSource;
    invoke-static {v3, v0}, Lfreemarker/ext/dom/JaxenXPathSupport;->access$200(Ljava/lang/String;Lfreemarker/template/Template;)Lorg/xml/sax/InputSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 183
    invoke-virtual {v2}, Lfreemarker/ext/dom/JaxenXPathSupport$FmEntityResolver;->getCallCount()I

    move-result v2

    if-nez v2, :cond_3a

    .line 184
    # getter for: Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIAGOTOR_CACHED_DOM:Lfreemarker/core/CustomAttribute;
    invoke-static {}, Lfreemarker/ext/dom/JaxenXPathSupport;->access$000()Lfreemarker/core/CustomAttribute;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lfreemarker/core/CustomAttribute;->set(Ljava/lang/Object;Lfreemarker/template/Template;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    :cond_3a
    return-object v1

    :catch_3b
    move-exception v0

    .line 189
    new-instance v1, Lorg/jaxen/FunctionCallException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse document for URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
