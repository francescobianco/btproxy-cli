.class public Lfreemarker/ext/xml/_Dom4jNavigator;
.super Lfreemarker/ext/xml/Navigator;
.source "_Dom4jNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/_Dom4jNavigator$Dom4jXPathEx;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lfreemarker/ext/xml/Navigator;-><init>()V

    return-void
.end method

.method private getDescendants(Lorg/dom4j/Branch;Ljava/util/List;)V
    .registers 5

    .line 112
    invoke-interface {p1}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 115
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_8

    .line 116
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0, v0, p2}, Lfreemarker/ext/xml/_Dom4jNavigator;->getDescendants(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_8

    :cond_1f
    return-void
.end method


# virtual methods
.method createXPathEx(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator$XPathEx;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Lfreemarker/ext/xml/_Dom4jNavigator$Dom4jXPathEx;

    invoke-direct {v0, p1}, Lfreemarker/ext/xml/_Dom4jNavigator$Dom4jXPathEx;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    .line 221
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method getAsString(Ljava/lang/Object;Ljava/io/StringWriter;)V
    .registers 3

    .line 51
    invoke-virtual {p2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p2

    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method getAttributes(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    .line 73
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_2a

    .line 74
    check-cast p1, Lorg/dom4j/Element;

    if-nez p2, :cond_11

    .line 76
    invoke-interface {p1}, Lorg/dom4j/Element;->attributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_ab

    .line 78
    :cond_11
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 80
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ab

    .line 83
    :cond_2a
    instance-of p3, p1, Lorg/dom4j/ProcessingInstruction;

    if-eqz p3, :cond_67

    .line 84
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .line 85
    const-string p3, "target"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 86
    new-instance p2, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 87
    :cond_45
    const-string p3, "data"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 88
    new-instance p2, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 90
    :cond_5a
    new-instance p3, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1, p2}, Lorg/dom4j/ProcessingInstruction;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 92
    :cond_67
    instance-of p3, p1, Lorg/dom4j/DocumentType;

    if-eqz p3, :cond_ab

    .line 93
    check-cast p1, Lorg/dom4j/DocumentType;

    .line 94
    const-string p3, "publicId"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 95
    new-instance p2, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 96
    :cond_82
    const-string p3, "systemId"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 97
    new-instance p2, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 98
    :cond_97
    const-string p3, "elementName"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 99
    new-instance p2, Lorg/dom4j/tree/DefaultAttribute;

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ab
    :goto_ab
    return-void
.end method

.method getChildren(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    .line 56
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_26

    .line 57
    check-cast p1, Lorg/dom4j/Element;

    if-nez p2, :cond_10

    .line 59
    invoke-interface {p1}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    .line 61
    :cond_10
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/dom4j/Element;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    .line 63
    :cond_26
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_49

    .line 64
    check-cast p1, Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object p1

    if-eqz p2, :cond_46

    .line 65
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lfreemarker/ext/xml/_Dom4jNavigator;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lfreemarker/ext/xml/_Dom4jNavigator;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 66
    :cond_46
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    return-void
.end method

.method getContent(Ljava/lang/Object;Ljava/util/List;)V
    .registers 4

    .line 142
    instance-of v0, p1, Lorg/dom4j/Branch;

    if-eqz v0, :cond_d

    .line 143
    check-cast p1, Lorg/dom4j/Branch;

    invoke-interface {p1}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    return-void
.end method

.method getDescendants(Ljava/lang/Object;Ljava/util/List;)V
    .registers 4

    .line 106
    instance-of v0, p1, Lorg/dom4j/Branch;

    if-eqz v0, :cond_9

    .line 107
    check-cast p1, Lorg/dom4j/Branch;

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/_Dom4jNavigator;->getDescendants(Lorg/dom4j/Branch;Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method getDocument(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 129
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method getDocumentType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 134
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/dom4j/Document;

    .line 136
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method getLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 154
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 159
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_b

    .line 160
    check-cast p1, Lorg/dom4j/Element;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_b
    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_16

    .line 163
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method getNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 170
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_b

    .line 171
    check-cast p1, Lorg/dom4j/Element;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 173
    :cond_b
    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_16

    .line 174
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 124
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method getText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 149
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 181
    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result p1

    packed-switch p1, :pswitch_data_2a

    .line 213
    :pswitch_9
    const-string p1, "unknown"

    return-object p1

    .line 204
    :pswitch_c
    const-string p1, "namespace"

    return-object p1

    .line 195
    :pswitch_f
    const-string p1, "documentType"

    return-object p1

    .line 192
    :pswitch_12
    const-string p1, "document"

    return-object p1

    .line 189
    :pswitch_15
    const-string p1, "comment"

    return-object p1

    .line 207
    :pswitch_18
    const-string p1, "processingInstruction"

    return-object p1

    .line 201
    :pswitch_1b
    const-string p1, "entityReference"

    return-object p1

    .line 186
    :pswitch_1e
    const-string p1, "cdata"

    return-object p1

    .line 210
    :pswitch_21
    const-string p1, "text"

    return-object p1

    .line 183
    :pswitch_24
    const-string p1, "attribute"

    return-object p1

    .line 198
    :pswitch_27
    const-string p1, "element"

    return-object p1

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_9
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
