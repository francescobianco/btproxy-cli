.class public Lfreemarker/ext/xml/_DomNavigator;
.super Lfreemarker/ext/xml/Navigator;
.source "_DomNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/_DomNavigator$DomXPathEx;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lfreemarker/ext/xml/Navigator;-><init>()V

    return-void
.end method

.method private createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4

    .line 189
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    .line 190
    invoke-interface {p1, p3}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    return-object p1
.end method

.method private outputContent(Lorg/w3c/dom/NamedNodeMap;Ljava/io/StringWriter;)V
    .registers 5

    const/4 v0, 0x0

    .line 125
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 126
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/Node;Ljava/io/StringWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private outputContent(Lorg/w3c/dom/Node;Ljava/io/StringWriter;)V
    .registers 7

    .line 55
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x3e

    const/16 v3, 0x22

    packed-switch v0, :pswitch_data_136

    goto/16 :goto_135

    .line 77
    :pswitch_f
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 78
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .line 79
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 80
    const-string v0, " PUBLIC \""

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 82
    :cond_35
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 83
    invoke-virtual {p2, v3}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 85
    :cond_4a
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 86
    const-string v0, " ["

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 88
    :cond_63
    invoke-virtual {p2, v2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    goto/16 :goto_135

    .line 73
    :pswitch_68
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/NodeList;Ljava/io/StringWriter;)V

    goto/16 :goto_135

    .line 69
    :pswitch_71
    const-string v0, "<!--"

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    const-string p2, "-->"

    invoke-virtual {p1, p2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto/16 :goto_135

    .line 108
    :pswitch_86
    const-string v0, "<?"

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto/16 :goto_135

    .line 100
    :pswitch_a7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/NodeList;Ljava/io/StringWriter;)V

    goto/16 :goto_135

    :pswitch_b0
    const/16 v0, 0x26

    .line 104
    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    goto :goto_135

    .line 65
    :pswitch_c4
    const-string v0, "<![CDATA["

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    const-string p2, "]]>"

    invoke-virtual {p1, p2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto :goto_135

    .line 112
    :pswitch_d8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->XMLEncNQG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto :goto_135

    .line 57
    :pswitch_e4
    invoke-virtual {p2, v1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object p2

    .line 58
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/_DomNavigator;->getQualifiedName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    const-string v0, "=\""

    .line 59
    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->XMLEncNA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v3}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    goto :goto_135

    :pswitch_106
    const/16 v0, 0x3c

    .line 92
    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/_DomNavigator;->getQualifiedName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 93
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/NamedNodeMap;Ljava/io/StringWriter;)V

    .line 94
    invoke-virtual {p2, v2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 95
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/NodeList;Ljava/io/StringWriter;)V

    .line 96
    const-string v0, "</"

    invoke-virtual {p2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p2

    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/_DomNavigator;->getQualifiedName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    :goto_135
    return-void

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_106
        :pswitch_e4
        :pswitch_d8
        :pswitch_c4
        :pswitch_b0
        :pswitch_a7
        :pswitch_86
        :pswitch_71
        :pswitch_68
        :pswitch_f
    .end packed-switch
.end method

.method private outputContent(Lorg/w3c/dom/NodeList;Ljava/io/StringWriter;)V
    .registers 5

    const/4 v0, 0x0

    .line 119
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 120
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/Node;Ljava/io/StringWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
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

    .line 304
    :try_start_0
    new-instance v0, Lfreemarker/ext/xml/_DomNavigator$DomXPathEx;

    invoke-direct {v0, p1}, Lfreemarker/ext/xml/_DomNavigator$DomXPathEx;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    .line 306
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method getAsString(Ljava/lang/Object;Ljava/io/StringWriter;)V
    .registers 3

    .line 51
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/xml/_DomNavigator;->outputContent(Lorg/w3c/dom/Node;Ljava/io/StringWriter;)V

    return-void
.end method

.method getAttributes(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    .line 149
    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_31

    .line 150
    check-cast p1, Lorg/w3c/dom/Element;

    if-nez p2, :cond_1d

    .line 152
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 p2, 0x0

    .line 153
    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p3

    if-ge p2, p3, :cond_a0

    .line 154
    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 157
    :cond_1d
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p3, 0x0

    .line 160
    :cond_26
    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 162
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a0

    .line 165
    :cond_31
    instance-of p3, p1, Lorg/w3c/dom/ProcessingInstruction;

    if-eqz p3, :cond_5f

    .line 166
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .line 167
    const-string p3, "target"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 168
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/ext/xml/_DomNavigator;->createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 169
    :cond_4b
    const-string p3, "data"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 170
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/ext/xml/_DomNavigator;->createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 176
    :cond_5f
    instance-of p3, p1, Lorg/w3c/dom/DocumentType;

    if-eqz p3, :cond_a0

    .line 177
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .line 178
    const-string p3, "publicId"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 179
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/ext/xml/_DomNavigator;->createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 180
    :cond_79
    const-string p3, "systemId"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/ext/xml/_DomNavigator;->createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 182
    :cond_8d
    const-string p3, "elementName"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 183
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/ext/xml/_DomNavigator;->createAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    return-void
.end method

.method getChildren(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    .line 132
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p3, 0x0

    .line 135
    :cond_9
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 136
    :goto_10
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 137
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_41

    :cond_28
    if-eqz p2, :cond_3e

    .line 140
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lfreemarker/ext/xml/_DomNavigator;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lfreemarker/ext/xml/_DomNavigator;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 141
    :cond_3e
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_44
    return-void
.end method

.method getContent(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5

    .line 226
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 227
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 228
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method getDescendants(Ljava/lang/Object;Ljava/util/List;)V
    .registers 7

    .line 196
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 197
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 198
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 200
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, v1, p2}, Lfreemarker/ext/xml/_DomNavigator;->getDescendants(Ljava/lang/Object;Ljava/util/List;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method getDocument(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 213
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method getDocumentType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 218
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/w3c/dom/Document;

    .line 220
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method getLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 251
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 256
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 261
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 208
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method getText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    instance-of v1, p1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_2d

    .line 236
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    .line 237
    :goto_10
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 238
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 239
    instance-of v3, v2, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_25

    .line 240
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 243
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 245
    :cond_2d
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 266
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    packed-switch p1, :pswitch_data_2a

    .line 298
    const-string p1, "unknown"

    return-object p1

    .line 280
    :pswitch_c
    const-string p1, "documentType"

    return-object p1

    .line 277
    :pswitch_f
    const-string p1, "document"

    return-object p1

    .line 274
    :pswitch_12
    const-string p1, "comment"

    return-object p1

    .line 292
    :pswitch_15
    const-string p1, "processingInstruction"

    return-object p1

    .line 286
    :pswitch_18
    const-string p1, "entity"

    return-object p1

    .line 289
    :pswitch_1b
    const-string p1, "entityReference"

    return-object p1

    .line 271
    :pswitch_1e
    const-string p1, "cdata"

    return-object p1

    .line 295
    :pswitch_21
    const-string p1, "text"

    return-object p1

    .line 268
    :pswitch_24
    const-string p1, "attribute"

    return-object p1

    .line 283
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
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method
