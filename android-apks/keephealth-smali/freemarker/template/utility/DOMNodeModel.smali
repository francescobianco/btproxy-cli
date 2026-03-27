.class public Lfreemarker/template/utility/DOMNodeModel;
.super Ljava/lang/Object;
.source "DOMNodeModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/DOMNodeModel$NodeListTM;,
        Lfreemarker/template/utility/DOMNodeModel$AncestorByName;
    }
.end annotation


# static fields
.field private static equivalenceTable:Ljava/util/HashMap;


# instance fields
.field private cache:Ljava/util/HashMap;

.field private node:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/template/utility/DOMNodeModel;->equivalenceTable:Ljava/util/HashMap;

    .line 49
    const-string v1, "*"

    const-string v2, "children"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lfreemarker/template/utility/DOMNodeModel;->equivalenceTable:Ljava/util/HashMap;

    const-string v1, "@*"

    const-string v2, "attributes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->cache:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/template/utility/DOMNodeModel;)Lorg/w3c/dom/Node;
    .registers 1

    .line 45
    iget-object p0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method private static getText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 133
    instance-of v0, p0, Lorg/w3c/dom/Text;

    if-eqz v0, :cond_b

    .line 134
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p0

    goto :goto_39

    .line 135
    :cond_b
    instance-of v0, p0, Lorg/w3c/dom/Element;

    const-string v1, ""

    if-eqz v0, :cond_38

    .line 136
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 137
    :goto_16
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lfreemarker/template/utility/DOMNodeModel;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    move-object p0, v1

    :goto_39
    return-object p0
.end method

.method private static nextElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .registers 5

    .line 167
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 168
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 169
    :goto_b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 170
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 171
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1c

    .line 172
    check-cast v2, Lorg/w3c/dom/Element;

    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 176
    :cond_1f
    invoke-static {p0}, Lfreemarker/template/utility/DOMNodeModel;->nextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_26

    return-object v0

    .line 180
    :cond_26
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 181
    :goto_2a
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_3a

    .line 182
    invoke-static {p0}, Lfreemarker/template/utility/DOMNodeModel;->nextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_35

    return-object v0

    .line 186
    :cond_35
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_2a

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static nextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .registers 2

    :cond_0
    if-eqz p0, :cond_d

    .line 147
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 148
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 149
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static previousElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .registers 2

    .line 192
    invoke-static {p0}, Lfreemarker/template/utility/DOMNodeModel;->previousSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 196
    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 197
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_12

    .line 198
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static previousSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .registers 2

    :cond_0
    if-eqz p0, :cond_d

    .line 158
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 159
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 62
    sget-object v0, Lfreemarker/template/utility/DOMNodeModel;->equivalenceTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    sget-object v0, Lfreemarker/template/utility/DOMNodeModel;->equivalenceTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 65
    :cond_10
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 66
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    if-nez v0, :cond_1a8

    .line 69
    const-string v2, "attributes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    .line 70
    iget-object v1, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1a3

    .line 72
    new-instance v0, Lfreemarker/template/SimpleHash;

    invoke-direct {v0}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 73
    :goto_3b
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_1a3

    .line 74
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    .line 75
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 79
    :cond_55
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7e

    .line 80
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_76

    .line 81
    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Lfreemarker/template/SimpleScalar;

    invoke-direct {v1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_73
    move-object v0, v1

    goto/16 :goto_1a3

    .line 84
    :cond_76
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Trying to get an attribute value for a non-element node"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_7e
    const-string v2, "is_element"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 87
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_90

    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_1a3

    :cond_90
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_1a3

    .line 89
    :cond_94
    const-string v2, "is_text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 90
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Text;

    if-eqz v0, :cond_a6

    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_1a3

    :cond_a6
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto/16 :goto_1a3

    .line 92
    :cond_aa
    const-string v2, "name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 93
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a3

    .line 94
    :cond_bf
    const-string v2, "children"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 95
    new-instance v0, Lfreemarker/template/utility/DOMNodeModel$NodeListTM;

    iget-object v1, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfreemarker/template/utility/DOMNodeModel$NodeListTM;-><init>(Lfreemarker/template/utility/DOMNodeModel;Lorg/w3c/dom/NodeList;)V

    goto/16 :goto_1a3

    .line 96
    :cond_d4
    const-string v2, "parent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 97
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_e5

    goto :goto_73

    .line 98
    :cond_e5
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_73

    .line 99
    :cond_eb
    const-string v2, "ancestorByName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 100
    new-instance v0, Lfreemarker/template/utility/DOMNodeModel$AncestorByName;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/DOMNodeModel$AncestorByName;-><init>(Lfreemarker/template/utility/DOMNodeModel;)V

    goto/16 :goto_1a3

    .line 101
    :cond_fa
    const-string v2, "nextSibling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 102
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_10c

    goto/16 :goto_73

    .line 103
    :cond_10c
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 104
    :cond_113
    const-string v2, "previousSibling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 105
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_125

    goto/16 :goto_73

    .line 106
    :cond_125
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 107
    :cond_12c
    const-string v2, "nextSiblingElement"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 108
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/DOMNodeModel;->nextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_13e

    goto/16 :goto_73

    .line 109
    :cond_13e
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 110
    :cond_145
    const-string v2, "previousSiblingElement"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 111
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/DOMNodeModel;->previousSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_157

    goto/16 :goto_73

    .line 112
    :cond_157
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 113
    :cond_15e
    const-string v2, "nextElement"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 114
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/DOMNodeModel;->nextElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_170

    goto/16 :goto_73

    .line 115
    :cond_170
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 116
    :cond_177
    const-string v2, "previousElement"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 117
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lfreemarker/template/utility/DOMNodeModel;->previousElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_189

    goto/16 :goto_73

    .line 118
    :cond_189
    new-instance v1, Lfreemarker/template/utility/DOMNodeModel;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/DOMNodeModel;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_73

    .line 119
    :cond_190
    const-string v1, "text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 120
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-static {v1}, Lfreemarker/template/utility/DOMNodeModel;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    .line 122
    :cond_1a3
    :goto_1a3
    iget-object v1, p0, Lfreemarker/template/utility/DOMNodeModel;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a8
    return-object v0
.end method

.method getNodeName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method setParent(Lfreemarker/template/utility/DOMNodeModel;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 205
    iget-object v0, p0, Lfreemarker/template/utility/DOMNodeModel;->cache:Ljava/util/HashMap;

    const-string v1, "parent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
