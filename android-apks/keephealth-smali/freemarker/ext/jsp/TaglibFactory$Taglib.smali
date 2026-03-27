.class final Lfreemarker/ext/jsp/TaglibFactory$Taglib;
.super Ljava/lang/Object;
.source "TaglibFactory.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Taglib"
.end annotation


# instance fields
.field private final tagsAndFunctions:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    invoke-static {p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$Taglib;->parseToTagsAndFunctions(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$Taglib;->tagsAndFunctions:Ljava/util/Map;

    return-void
.end method

.method private static final parseToTagsAndFunctions(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1469
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;

    invoke-direct {v0, p2}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 1471
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 1473
    :try_start_9
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getXmlSystemId()Ljava/lang/String;

    move-result-object p1

    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->parseXml(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    invoke-static {p2, p1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->access$1300(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_62

    .line 1475
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1478
    invoke-static {p0}, Lfreemarker/ext/jsp/EventForwarding;->getInstance(Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/EventForwarding;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1480
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->getListeners()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/EventForwarding;->addListeners(Ljava/util/List;)V

    goto :goto_2b

    .line 1481
    :cond_21
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->getListeners()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_30

    .line 1491
    :goto_2b
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->getTagsAndFunctions()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1482
    :cond_30
    new-instance p0, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Event listeners specified in the TLD could not be  registered since the web application doesn\'t have a listener of class "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lfreemarker/ext/jsp/EventForwarding;

    .line 1485
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". To remedy this, add this element to web.xml:\n| <listener>\n|   <listener-class>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class p2, Lfreemarker/ext/jsp/EventForwarding;

    .line 1488
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "</listener-class>\n| </listener>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p0

    :catchall_62
    move-exception p0

    .line 1475
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1476
    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 1460
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$Taglib;->tagsAndFunctions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1464
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$Taglib;->tagsAndFunctions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
