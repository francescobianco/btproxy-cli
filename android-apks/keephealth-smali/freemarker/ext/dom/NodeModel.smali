.class public abstract Lfreemarker/ext/dom/NodeModel;
.super Ljava/lang/Object;
.source "NodeModel.java"

# interfaces
.implements Lfreemarker/template/TemplateNodeModelEx;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;


# static fields
.field private static final LOG:Lfreemarker/log/Logger;

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field private static docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static errorHandler:Lorg/xml/sax/ErrorHandler;

.field private static jaxenXPathSupport:Lfreemarker/ext/dom/XPathSupport;

.field static xpathSupportClass:Ljava/lang/Class;

.field private static final xpathSupportMap:Ljava/util/Map;


# instance fields
.field private children:Lfreemarker/template/TemplateSequenceModel;

.field final node:Lorg/w3c/dom/Node;

.field private parent:Lfreemarker/ext/dom/NodeModel;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    const-string v0, "freemarker.dom"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/dom/NodeModel;->xpathSupportMap:Ljava/util/Map;

    .line 105
    :try_start_1a
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->useDefaultXPathSupport()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d

    .line 109
    :catch_1d
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    if-nez v0, :cond_2e

    sget-object v0, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 110
    const-string v1, "No XPath support is available. If you need it, add Apache Xalan or Jaxen as dependency."

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    return-void
.end method

.method public static getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 3

    .line 147
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v1, :cond_14

    .line 149
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 151
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 152
    sput-object v1, Lfreemarker/ext/dom/NodeModel;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 154
    :cond_14
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 180
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->errorHandler:Lorg/xml/sax/ErrorHandler;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static getText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 717
    instance-of v0, p0, Lorg/w3c/dom/Text;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/w3c/dom/CDATASection;

    if-eqz v0, :cond_9

    goto :goto_45

    .line 719
    :cond_9
    instance-of v0, p0, Lorg/w3c/dom/Element;

    const-string v1, ""

    if-eqz v0, :cond_36

    .line 720
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 721
    :goto_14
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lfreemarker/ext/dom/NodeModel;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 724
    :cond_36
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_4b

    .line 725
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    .line 718
    :cond_45
    :goto_45
    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public static getXPathSupportClass()Ljava/lang/Class;
    .registers 2

    .line 710
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 712
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static mergeAdjacentText(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lfreemarker/ext/dom/NodeModel;->mergeAdjacentText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static mergeAdjacentText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .registers 7

    .line 512
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5a

    .line 514
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 515
    instance-of v2, v0, Lorg/w3c/dom/Text;

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    .line 517
    :goto_f
    instance-of v3, v1, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_43

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    .line 519
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 520
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 521
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_34
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-interface {p0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 528
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_f

    :cond_43
    if-nez v2, :cond_58

    .line 530
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_58

    .line 531
    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    goto :goto_58

    .line 534
    :cond_55
    invoke-static {v0, p1}, Lfreemarker/ext/dom/NodeModel;->mergeAdjacentText(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    :cond_58
    :goto_58
    move-object v0, v1

    goto :goto_4

    :cond_5a
    return-void
.end method

.method public static parse(Ljava/io/File;)Lfreemarker/ext/dom/NodeModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 285
    invoke-static {p0, v0, v0}, Lfreemarker/ext/dom/NodeModel;->parse(Ljava/io/File;ZZ)Lfreemarker/ext/dom/NodeModel;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;ZZ)Lfreemarker/ext/dom/NodeModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 262
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 263
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 264
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 265
    :cond_11
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 267
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->simplify(Lorg/w3c/dom/Node;)V

    goto :goto_2a

    :cond_1d
    if-eqz p1, :cond_22

    .line 270
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->removeComments(Lorg/w3c/dom/Node;)V

    :cond_22
    if-eqz p2, :cond_27

    .line 273
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->removePIs(Lorg/w3c/dom/Node;)V

    .line 275
    :cond_27
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->mergeAdjacentText(Lorg/w3c/dom/Node;)V

    .line 277
    :goto_2a
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;)Lfreemarker/ext/dom/NodeModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 252
    invoke-static {p0, v0, v0}, Lfreemarker/ext/dom/NodeModel;->parse(Lorg/xml/sax/InputSource;ZZ)Lfreemarker/ext/dom/NodeModel;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/xml/sax/InputSource;ZZ)Lfreemarker/ext/dom/NodeModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 215
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 216
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 217
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 220
    :cond_11
    :try_start_11
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_15} :catch_2f

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 234
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->simplify(Lorg/w3c/dom/Node;)V

    goto :goto_2a

    :cond_1d
    if-eqz p1, :cond_22

    .line 237
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->removeComments(Lorg/w3c/dom/Node;)V

    :cond_22
    if-eqz p2, :cond_27

    .line 240
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->removePIs(Lorg/w3c/dom/Node;)V

    .line 242
    :cond_27
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->mergeAdjacentText(Lorg/w3c/dom/Node;)V

    .line 244
    :goto_2a
    invoke-static {p0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p0

    return-object p0

    :catch_2f
    move-exception p1

    .line 223
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5d

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    if-nez p2, :cond_5d

    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 224
    new-instance p0, Ljava/net/MalformedURLException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The SAX InputSource has systemId == null && characterStream == null && byteStream == null. This is often because it was created with a null InputStream or Reader, which is often because the XML file it should point to was not found. (The original exception was: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_5d
    throw p1
.end method

.method public static removeComments(Lorg/w3c/dom/Node;)V
    .registers 5

    .line 467
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_21

    .line 469
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 470
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_16

    .line 471
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1f

    .line 472
    :cond_16
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 473
    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->removeComments(Lorg/w3c/dom/Node;)V

    :cond_1f
    :goto_1f
    move-object v0, v1

    goto :goto_4

    :cond_21
    return-void
.end method

.method public static removePIs(Lorg/w3c/dom/Node;)V
    .registers 5

    .line 485
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_20

    .line 487
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 488
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_15

    .line 489
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1e

    .line 490
    :cond_15
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 491
    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->removePIs(Lorg/w3c/dom/Node;)V

    :cond_1e
    :goto_1e
    move-object v0, v1

    goto :goto_4

    :cond_20
    return-void
.end method

.method public static setDocumentBuilderFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    sput-object p0, Lfreemarker/ext/dom/NodeModel;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 136
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    sput-object p0, Lfreemarker/ext/dom/NodeModel;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 171
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setXPathSupportClass(Ljava/lang/Class;)V
    .registers 4

    if-eqz p0, :cond_2a

    .line 696
    const-class v0, Lfreemarker/ext/dom/XPathSupport;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2a

    .line 697
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " does not implement freemarker.ext.dom.XPathSupport"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_2a
    :goto_2a
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_2d
    sput-object p0, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    .line 702
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public static simplify(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lfreemarker/ext/dom/NodeModel;->simplify(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static simplify(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .registers 9

    .line 551
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_6
    const/4 v3, 0x0

    if-eqz v0, :cond_91

    .line 553
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 554
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz v2, :cond_28

    .line 557
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_27

    .line 558
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_27
    move-object v2, v1

    .line 564
    :cond_28
    invoke-static {v0, p1}, Lfreemarker/ext/dom/NodeModel;->simplify(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    goto :goto_8e

    .line 566
    :cond_2c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5c

    const/4 v6, 0x4

    if-ne v5, v6, :cond_37

    goto :goto_5c

    :cond_37
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3f

    .line 581
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_8e

    :cond_3f
    const/4 v6, 0x7

    if-ne v5, v6, :cond_46

    .line 583
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_8e

    :cond_46
    if-eqz v2, :cond_8e

    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 587
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5a
    move-object v2, v1

    goto :goto_8e

    :cond_5c
    :goto_5c
    if-eqz v2, :cond_8a

    .line 569
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7f

    .line 571
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 570
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 572
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_7f
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_8e

    .line 578
    :cond_8a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v2, v0

    :cond_8e
    :goto_8e
    move-object v0, v4

    goto/16 :goto_6

    :cond_91
    if-eqz v2, :cond_a5

    .line 598
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_a5

    .line 599
    check-cast v2, Lorg/w3c/dom/CharacterData;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a5
    return-void
.end method

.method public static useDefaultXPathSupport()V
    .registers 4

    .line 618
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 619
    :try_start_4
    sput-object v1, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    .line 620
    sput-object v1, Lfreemarker/ext/dom/NodeModel;->jaxenXPathSupport:Lfreemarker/ext/dom/XPathSupport;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_51

    .line 623
    :try_start_8
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->useXalanXPathSupport()V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_15
    .catch Ljava/lang/IllegalAccessError; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_51

    goto :goto_1d

    :catch_c
    move-exception v1

    .line 629
    :try_start_d
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Xalan internal XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :catch_15
    move-exception v1

    .line 627
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Xalan XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :catch_1d
    :goto_1d
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_51

    if-nez v1, :cond_36

    .line 633
    :try_start_21
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->useSunInternalXPathSupport()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_2e
    .catch Ljava/lang/IllegalAccessError; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_51

    goto :goto_36

    :catch_25
    move-exception v1

    .line 638
    :try_start_26
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Sun internal XPath support. Tip: On Java 9+, you may need Xalan or Jaxen+Saxpath."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_2e
    move-exception v1

    .line 635
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Sun internal XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 642
    :cond_36
    :goto_36
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_51

    if-nez v1, :cond_4f

    .line 643
    :try_start_3a
    invoke-static {}, Lfreemarker/ext/dom/NodeModel;->useJaxenXPathSupport()V
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3d} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_47
    .catch Ljava/lang/IllegalAccessError; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_51

    goto :goto_4f

    :catch_3e
    move-exception v1

    .line 649
    :try_start_3f
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Jaxen XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    :catch_47
    move-exception v1

    .line 647
    sget-object v2, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to use Jaxen XPath support."

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    :catch_4f
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_51

    throw v1
.end method

.method public static useJaxenXPathSupport()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 659
    const-string v0, "org.jaxen.dom.DOMXPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 660
    const-string v0, "freemarker.ext.dom.JaxenXPathSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/dom/XPathSupport;

    sput-object v1, Lfreemarker/ext/dom/NodeModel;->jaxenXPathSupport:Lfreemarker/ext/dom/XPathSupport;

    .line 662
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_16
    sput-object v0, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    .line 664
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21

    .line 665
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Using Jaxen classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    :catchall_21
    move-exception v0

    .line 664
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public static useSunInternalXPathSupport()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 682
    const-string v0, "com.sun.org.apache.xpath.internal.XPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 683
    const-string v0, "freemarker.ext.dom.SunInternalXalanXPathSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 684
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 685
    :try_start_e
    sput-object v0, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    .line 686
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    .line 687
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Using Sun\'s internal Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    :catchall_19
    move-exception v0

    .line 686
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static useXalanXPathSupport()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 673
    const-string v0, "org.apache.xpath.XPath"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 674
    const-string v0, "freemarker.ext.dom.XalanXPathSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 675
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    :try_start_e
    sput-object v0, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;

    .line 677
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    .line 678
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Using Xalan classes for XPath support"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    :catchall_19
    move-exception v0

    .line 677
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 448
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :pswitch_b
    goto :goto_3b

    .line 456
    :pswitch_c
    new-instance v0, Lfreemarker/ext/dom/DocumentTypeModel;

    check-cast p0, Lorg/w3c/dom/DocumentType;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/DocumentTypeModel;-><init>(Lorg/w3c/dom/DocumentType;)V

    goto :goto_3b

    .line 449
    :pswitch_14
    new-instance v0, Lfreemarker/ext/dom/DocumentModel;

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/DocumentModel;-><init>(Lorg/w3c/dom/Document;)V

    goto :goto_3b

    .line 455
    :pswitch_1c
    new-instance v0, Lfreemarker/ext/dom/PINodeModel;

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/PINodeModel;-><init>(Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_3b

    .line 454
    :pswitch_24
    new-instance v0, Lfreemarker/ext/dom/CharacterDataNodeModel;

    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/CharacterDataNodeModel;-><init>(Lorg/w3c/dom/CharacterData;)V

    goto :goto_3b

    .line 451
    :pswitch_2c
    new-instance v0, Lfreemarker/ext/dom/AttributeNodeModel;

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/AttributeNodeModel;-><init>(Lorg/w3c/dom/Attr;)V

    goto :goto_3b

    .line 450
    :pswitch_34
    new-instance v0, Lfreemarker/ext/dom/ElementModel;

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-direct {v0, p0}, Lfreemarker/ext/dom/ElementModel;-><init>(Lorg/w3c/dom/Element;)V

    :goto_3b
    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_24
        :pswitch_b
        :pswitch_b
        :pswitch_1c
        :pswitch_24
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 439
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    check-cast p1, Lfreemarker/ext/dom/NodeModel;

    iget-object p1, p1, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public exec(Ljava/util/List;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    const/4 v0, 0x0

    .line 397
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 403
    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 401
    :cond_1b
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "No XPath support available"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_23
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Expecting exactly one arguments"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 770
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_29

    .line 771
    aget-object v1, p1, v0

    .line 772
    const-class v2, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_22

    const-class v2, Lfreemarker/template/TemplateNumberModel;

    .line 773
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_22

    const-class v2, Lfreemarker/template/TemplateBooleanModel;

    .line 774
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 775
    :cond_22
    :goto_22
    const-string p1, "XML node values are always strings (text), that is, they can\'t be used as number, date/time/datetime or boolean without explicit conversion (such as someNode?number, someNode?datetime.xs, someNode?date.xs, someNode?time.xs, someNode?boolean)."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(I)Lfreemarker/template/TemplateModel;
    .registers 2

    if-nez p1, :cond_4

    move-object p1, p0

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 301
    const-string v0, "@@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 302
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->TEXT:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 303
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 304
    :cond_20
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->NAMESPACE:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 305
    iget-object p1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_3b

    .line 306
    :cond_36
    new-instance v1, Lfreemarker/template/SimpleScalar;

    invoke-direct {v1, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_3b
    return-object v1

    .line 307
    :cond_3c
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->LOCAL_NAME:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 308
    iget-object p1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_54

    .line 310
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 312
    :cond_54
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 313
    :cond_5a
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->MARKUP:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    new-instance v0, Lfreemarker/ext/dom/NodeOutputter;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/NodeOutputter;-><init>(Lorg/w3c/dom/Node;)V

    .line 316
    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/NodeOutputter;->outputContent(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 317
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 318
    :cond_81
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->NESTED_MARKUP:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    new-instance v0, Lfreemarker/ext/dom/NodeOutputter;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/NodeOutputter;-><init>(Lorg/w3c/dom/Node;)V

    .line 321
    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/dom/NodeOutputter;->outputContent(Lorg/w3c/dom/NodeList;Ljava/lang/StringBuilder;)V

    .line 322
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 323
    :cond_ac
    sget-object v0, Lfreemarker/ext/dom/AtAtKey;->QNAME:Lfreemarker/ext/dom/AtAtKey;

    invoke-virtual {v0}, Lfreemarker/ext/dom/AtAtKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 324
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c3

    .line 325
    new-instance v1, Lfreemarker/template/SimpleScalar;

    invoke-direct {v1, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :cond_c3
    return-object v1

    .line 328
    :cond_c4
    invoke-static {p1}, Lfreemarker/ext/dom/AtAtKey;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 329
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" is not supported for an XML node of type \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 330
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\"."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_f3
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

    .line 336
    :cond_108
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getXPathSupport()Lfreemarker/ext/dom/XPathSupport;

    move-result-object v0

    if-eqz v0, :cond_115

    .line 342
    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, p1}, Lfreemarker/ext/dom/XPathSupport;->executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 338
    :cond_115
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
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 762
    iget-object p1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .registers 3

    .line 368
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->children:Lfreemarker/template/TemplateSequenceModel;

    if-nez v0, :cond_11

    .line 369
    new-instance v0, Lfreemarker/ext/dom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Lorg/w3c/dom/NodeList;Lfreemarker/ext/dom/NodeModel;)V

    iput-object v0, p0, Lfreemarker/ext/dom/NodeModel;->children:Lfreemarker/template/TemplateSequenceModel;

    .line 371
    :cond_11
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->children:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method getDocumentNodeModel()Lfreemarker/ext/dom/NodeModel;
    .registers 3

    .line 606
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_7

    return-object p0

    .line 609
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lfreemarker/template/TemplateNodeModelEx;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 297
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .registers 7

    .line 418
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    return-object v1

    .line 422
    :cond_e
    iget-object v4, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 423
    const-string v5, ""

    if-nez v4, :cond_1c

    if-ne v0, v2, :cond_1c

    move-object v1, v5

    goto :goto_26

    .line 425
    :cond_1c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-ne v0, v3, :cond_25

    goto :goto_26

    :cond_25
    move-object v1, v4

    :goto_26
    return-object v1
.end method

.method public final getNodeType()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 376
    const-string v1, "text"

    packed-switch v0, :pswitch_data_46

    .line 390
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown node type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". This should be impossible!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :pswitch_26
    const-string v0, "notation"

    return-object v0

    .line 380
    :pswitch_29
    const-string v0, "document_fragment"

    return-object v0

    .line 382
    :pswitch_2c
    const-string v0, "document_type"

    return-object v0

    .line 381
    :pswitch_2f
    const-string v0, "document"

    return-object v0

    .line 379
    :pswitch_32
    const-string v0, "comment"

    return-object v0

    .line 387
    :pswitch_35
    const-string v0, "pi"

    return-object v0

    .line 384
    :pswitch_38
    const-string v0, "entity"

    return-object v0

    .line 385
    :pswitch_3b
    const-string v0, "entity_reference"

    return-object v0

    :pswitch_3e
    return-object v1

    .line 377
    :pswitch_3f
    const-string v0, "attribute"

    return-object v0

    .line 383
    :pswitch_42
    const-string v0, "element"

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .registers 4

    .line 347
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->parent:Lfreemarker/ext/dom/NodeModel;

    if-nez v0, :cond_1e

    .line 348
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_18

    .line 350
    iget-object v1, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_18

    .line 351
    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 354
    :cond_18
    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/dom/NodeModel;->parent:Lfreemarker/ext/dom/NodeModel;

    .line 356
    :cond_1e
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->parent:Lfreemarker/ext/dom/NodeModel;

    return-object v0
.end method

.method public getPreviousSibling()Lfreemarker/template/TemplateNodeModelEx;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v0

    return-object v0
.end method

.method getQualifiedName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Lfreemarker/ext/dom/NodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 766
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method getXPathSupport()Lfreemarker/ext/dom/XPathSupport;
    .registers 6

    .line 731
    sget-object v0, Lfreemarker/ext/dom/NodeModel;->jaxenXPathSupport:Lfreemarker/ext/dom/XPathSupport;

    if-eqz v0, :cond_5

    return-object v0

    .line 735
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_11

    .line 737
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    .line 739
    :cond_11
    monitor-enter v0

    .line 740
    :try_start_12
    sget-object v1, Lfreemarker/ext/dom/NodeModel;->xpathSupportMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_23

    .line 742
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/dom/XPathSupport;

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-nez v2, :cond_45

    .line 744
    sget-object v3, Lfreemarker/ext/dom/NodeModel;->xpathSupportClass:Ljava/lang/Class;
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_47

    if-eqz v3, :cond_45

    .line 746
    :try_start_2a
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/dom/XPathSupport;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_3d
    .catchall {:try_start_2a .. :try_end_30} :catchall_47

    .line 747
    :try_start_30
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_3a
    .catchall {:try_start_30 .. :try_end_38} :catchall_47

    move-object v2, v3

    goto :goto_45

    :catch_3a
    move-exception v1

    move-object v2, v3

    goto :goto_3e

    :catch_3d
    move-exception v1

    .line 749
    :goto_3e
    :try_start_3e
    sget-object v3, Lfreemarker/ext/dom/NodeModel;->LOG:Lfreemarker/log/Logger;

    const-string v4, "Error instantiating xpathSupport class"

    invoke-virtual {v3, v4, v1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 752
    :cond_45
    :goto_45
    monitor-exit v0

    return-object v2

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_47

    throw v1
.end method

.method public final hashCode()I
    .registers 2

    .line 433
    iget-object v0, p0, Lfreemarker/ext/dom/NodeModel;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
