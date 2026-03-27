.class public Lfreemarker/ext/jdom/NodeListModel;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateScalarModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;,
        Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;,
        Lfreemarker/ext/jdom/NodeListModel$TypeFilter;,
        Lfreemarker/ext/jdom/NodeListModel$NameFilter;,
        Lfreemarker/ext/jdom/NodeListModel$RegisterNamespace;,
        Lfreemarker/ext/jdom/NodeListModel$TextOp;,
        Lfreemarker/ext/jdom/NodeListModel$ContentOp;,
        Lfreemarker/ext/jdom/NodeListModel$DocTypeOp;,
        Lfreemarker/ext/jdom/NodeListModel$DocumentOp;,
        Lfreemarker/ext/jdom/NodeListModel$DescendantOrSelfOp;,
        Lfreemarker/ext/jdom/NodeListModel$DescendantOp;,
        Lfreemarker/ext/jdom/NodeListModel$AncestorOrSelfOp;,
        Lfreemarker/ext/jdom/NodeListModel$AncestorOp;,
        Lfreemarker/ext/jdom/NodeListModel$ParentOp;,
        Lfreemarker/ext/jdom/NodeListModel$CanonicalNameOp;,
        Lfreemarker/ext/jdom/NodeListModel$NamespacePrefixOp;,
        Lfreemarker/ext/jdom/NodeListModel$NamespaceUriOp;,
        Lfreemarker/ext/jdom/NodeListModel$QNameOp;,
        Lfreemarker/ext/jdom/NodeListModel$NameOp;,
        Lfreemarker/ext/jdom/NodeListModel$NamedAttributeOp;,
        Lfreemarker/ext/jdom/NodeListModel$AllAttributesOp;,
        Lfreemarker/ext/jdom/NodeListModel$NamedChildrenOp;,
        Lfreemarker/ext/jdom/NodeListModel$AllChildrenOp;,
        Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;,
        Lfreemarker/ext/jdom/NodeListModel$NodeOperator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALL_ATTRIBUTES_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

.field private static final ALL_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

.field private static final EMPTY:Lfreemarker/ext/jdom/NodeListModel;

.field private static final NAMED_ATTRIBUTE_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

.field private static final NAMED_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

.field private static final OPERATIONS:Ljava/util/Map;

.field private static final OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

.field private static final SPECIAL_OPERATIONS:Ljava/util/Map;

.field private static final SPECIAL_OPERATION_COPY:I = 0x0

.field private static final SPECIAL_OPERATION_FILTER_NAME:I = 0x2

.field private static final SPECIAL_OPERATION_FILTER_TYPE:I = 0x3

.field private static final SPECIAL_OPERATION_PLAINTEXT:I = 0x6

.field private static final SPECIAL_OPERATION_QUERY_TYPE:I = 0x4

.field private static final SPECIAL_OPERATION_REGISTER_NAMESPACE:I = 0x5

.field private static final SPECIAL_OPERATION_UNIQUE:I = 0x1

.field private static final XPATH_CACHE:Ljava/util/Map;


# instance fields
.field private final namespaces:Ljava/util/Map;

.field private final nodes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    .line 97
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->EMPTY:Lfreemarker/ext/jdom/NodeListModel;

    .line 100
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->XPATH_CACHE:Ljava/util/Map;

    .line 102
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$NamedChildrenOp;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$NamedChildrenOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->NAMED_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 103
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$NamedAttributeOp;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$NamedAttributeOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->NAMED_ATTRIBUTE_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 104
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$AllAttributesOp;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$AllAttributesOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->ALL_ATTRIBUTES_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    .line 105
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$AllChildrenOp;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$AllChildrenOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->ALL_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    .line 106
    invoke-static {}, Lfreemarker/ext/jdom/NodeListModel;->createOperations()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->OPERATIONS:Ljava/util/Map;

    .line 107
    invoke-static {}, Lfreemarker/ext/jdom/NodeListModel;->createSpecialOperations()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->SPECIAL_OPERATIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    .line 137
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_c

    :cond_8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 4

    .line 88
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .registers 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    .line 165
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_7
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    .line 166
    iput-object p2, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 160
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    goto :goto_12

    :cond_e
    if-nez p1, :cond_12

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_12
    :goto_12
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    .line 161
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    .line 124
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_c

    :cond_8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    .line 125
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_8

    .line 132
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_c

    :cond_8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/Object;)Lorg/jdom/Element;
    .registers 1

    .line 88
    invoke-static {p0}, Lfreemarker/ext/jdom/NodeListModel;->getParent(Ljava/lang/Object;)Lorg/jdom/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    .registers 2

    .line 88
    invoke-static {p0, p1}, Lfreemarker/ext/jdom/NodeListModel;->createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/List;
    .registers 1

    .line 88
    iget-object p0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/Map;
    .registers 1

    .line 88
    iget-object p0, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    return-object p0
.end method

.method private static final createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    .registers 4

    if-eqz p0, :cond_21

    .line 170
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_21

    .line 177
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0

    .line 178
    :cond_1b
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v0

    .line 171
    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 172
    sget-object p0, Lfreemarker/ext/jdom/NodeListModel;->EMPTY:Lfreemarker/ext/jdom/NodeListModel;

    return-object p0

    .line 174
    :cond_2a
    new-instance p0, Lfreemarker/ext/jdom/NodeListModel;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method

.method private static final createOperations()Ljava/util/Map;
    .registers 4

    .line 989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 991
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$AncestorOp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$AncestorOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_ancestor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$AncestorOrSelfOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$AncestorOrSelfOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_ancestorOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v1, "_attributes"

    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->ALL_ATTRIBUTES_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v1, "_children"

    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->ALL_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$CanonicalNameOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$CanonicalNameOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_cname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$ContentOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$ContentOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_content"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_descendant"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$DescendantOrSelfOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$DescendantOrSelfOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_descendantOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$DocumentOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$DocumentOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_document"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$DocTypeOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$DocTypeOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_doctype"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$NameOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$NameOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$NamespacePrefixOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$NamespacePrefixOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_nsprefix"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$NamespaceUriOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$NamespaceUriOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_nsuri"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$ParentOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$ParentOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_parent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$QNameOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$QNameOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v3, "_qname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$TextOp;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$TextOp;-><init>(Lfreemarker/ext/jdom/NodeListModel$1;)V

    const-string v2, "_text"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final createSpecialOperations()Ljava/util/Map;
    .registers 9

    .line 1012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1014
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 1015
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 1016
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 1017
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    .line 1018
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    .line 1019
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    .line 1020
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1022
    const-string v8, "_copy"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v8, "_unique"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v8, "_fname"

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v8, "_ftype"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v8, "_type"

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v8, "_registerNamespace"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v6, "_plaintext"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v6, "x_copy"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v1, "x_unique"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v1, "x_fname"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v1, "x_ftype"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v1, "x_type"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final evaluateElementOperation(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 931
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 932
    new-array v1, v0, [Ljava/util/List;

    .line 936
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 937
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 938
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lfreemarker/ext/jdom/NodeListModel$NodeOperator;->operate(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d

    add-int/lit8 v6, v4, 0x1

    .line 940
    aput-object v5, v1, v4

    .line 941
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_d

    .line 945
    :cond_28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2d
    if-ge v2, v0, :cond_39

    .line 947
    aget-object p1, v1, v2

    if-eqz p1, :cond_36

    .line 948
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_39
    return-object p0
.end method

.method private static final evaluateNamedElementOperation(Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;Ljava/lang/String;Lorg/jdom/Namespace;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 956
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 957
    new-array v1, v0, [Ljava/util/List;

    .line 961
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 962
    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 963
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5, p1, p2}, Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;->operate(Ljava/lang/Object;Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 964
    aput-object v5, v1, v4

    .line 965
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_d

    .line 968
    :cond_26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2b
    if-ge v2, v0, :cond_35

    .line 970
    aget-object p1, v1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_35
    return-object p0
.end method

.method private static final getParent(Ljava/lang/Object;)Lorg/jdom/Element;
    .registers 2

    .line 764
    instance-of v0, p0, Lorg/jdom/Element;

    if-eqz v0, :cond_b

    .line 765
    check-cast p0, Lorg/jdom/Element;

    invoke-virtual {p0}, Lorg/jdom/Element;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 766
    :cond_b
    instance-of v0, p0, Lorg/jdom/Attribute;

    if-eqz v0, :cond_16

    .line 767
    check-cast p0, Lorg/jdom/Attribute;

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 768
    :cond_16
    instance-of v0, p0, Lorg/jdom/Text;

    if-eqz v0, :cond_21

    .line 769
    check-cast p0, Lorg/jdom/Text;

    invoke-virtual {p0}, Lorg/jdom/Text;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 770
    :cond_21
    instance-of v0, p0, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_2c

    .line 771
    check-cast p0, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0}, Lorg/jdom/ProcessingInstruction;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 772
    :cond_2c
    instance-of v0, p0, Lorg/jdom/Comment;

    if-eqz v0, :cond_37

    .line 773
    check-cast p0, Lorg/jdom/Comment;

    invoke-virtual {p0}, Lorg/jdom/Comment;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 774
    :cond_37
    instance-of v0, p0, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_42

    .line 775
    check-cast p0, Lorg/jdom/EntityRef;

    invoke-virtual {p0}, Lorg/jdom/EntityRef;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPlainText()Lfreemarker/template/SimpleScalar;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 477
    sget-object v0, Lfreemarker/ext/jdom/NodeListModel;->OPERATIONS:Ljava/util/Map;

    const-string v1, "_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jdom/NodeListModel$TextOp;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-static {v0, v1}, Lfreemarker/ext/jdom/NodeListModel;->evaluateElementOperation(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 482
    :cond_27
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getType()Lfreemarker/template/TemplateModel;
    .registers 6

    .line 450
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 451
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, ""

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 452
    :cond_10
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 454
    instance-of v2, v0, Lorg/jdom/Element;

    if-eqz v2, :cond_1e

    const/16 v0, 0x65

    goto :goto_56

    .line 456
    :cond_1e
    instance-of v2, v0, Lorg/jdom/Text;

    if-nez v2, :cond_54

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_27

    goto :goto_54

    .line 458
    :cond_27
    instance-of v2, v0, Lorg/jdom/Attribute;

    if-eqz v2, :cond_2e

    const/16 v0, 0x61

    goto :goto_56

    .line 460
    :cond_2e
    instance-of v2, v0, Lorg/jdom/EntityRef;

    if-eqz v2, :cond_35

    const/16 v0, 0x6e

    goto :goto_56

    .line 462
    :cond_35
    instance-of v2, v0, Lorg/jdom/Document;

    if-eqz v2, :cond_3c

    const/16 v0, 0x64

    goto :goto_56

    .line 464
    :cond_3c
    instance-of v2, v0, Lorg/jdom/DocType;

    if-eqz v2, :cond_43

    const/16 v0, 0x74

    goto :goto_56

    .line 466
    :cond_43
    instance-of v2, v0, Lorg/jdom/Comment;

    if-eqz v2, :cond_4a

    const/16 v0, 0x63

    goto :goto_56

    .line 468
    :cond_4a
    instance-of v0, v0, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_51

    const/16 v0, 0x70

    goto :goto_56

    :cond_51
    const/16 v0, 0x3f

    goto :goto_56

    :cond_54
    :goto_54
    const/16 v0, 0x78

    .line 472
    :goto_56
    new-instance v2, Lfreemarker/template/SimpleScalar;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [C

    aput-char v0, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1139
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 1140
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v0

    .line 1141
    new-instance v1, Lfreemarker/template/SimpleHash;

    invoke-direct {v1}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 1142
    new-instance v2, Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {v2, v0}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Lorg/jdom/Document;)V

    const-string v0, "document"

    invoke-virtual {v1, v0, v2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1143
    new-instance v0, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1144
    new-instance v3, Lfreemarker/template/Template;

    aget-object p0, p0, v2

    invoke-direct {v3, p0, v0}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    .line 1145
    new-instance p0, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1146
    invoke-virtual {v3, v1, p0}, Lfreemarker/template/Template;->process(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 1147
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 1148
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method private static final removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .registers 5

    .line 975
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 976
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 977
    new-instance v2, Ljava/util/HashSet;

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v0, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 978
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 979
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 980
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 981
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 982
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 984
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_4c

    .line 535
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x0

    .line 538
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 541
    :try_start_10
    sget-object v0, Lfreemarker/ext/jdom/NodeListModel;->XPATH_CACHE:Ljava/util/Map;

    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_36

    .line 542
    :try_start_13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;

    if-nez v1, :cond_23

    .line 544
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;

    invoke-direct {v1, p1}, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_33

    .line 548
    :try_start_24
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    iget-object v2, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;->selectNodes(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-static {v0, v1}, Lfreemarker/ext/jdom/NodeListModel;->createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_36

    return-object p1

    :catchall_33
    move-exception v1

    .line 547
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    .line 550
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not evaulate XPath expression "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 536
    :cond_4c
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Exactly one argument required for execute() on NodeTemplate"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 506
    :try_start_0
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    .line 508
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lfreemarker/ext/jdom/NodeListModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    sget-object p1, Lfreemarker/ext/jdom/NodeListModel;->EMPTY:Lfreemarker/ext/jdom/NodeListModel;

    return-object p1

    :cond_9
    if-eqz p1, :cond_13b

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13b

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_a7

    const/16 v5, 0x40

    if-eq v1, v5, :cond_8f

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x78

    if-eq v1, v2, :cond_2c

    move-object v1, v4

    move-object v2, v1

    goto/16 :goto_b0

    .line 387
    :cond_2c
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->OPERATIONS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    if-nez v1, :cond_8b

    .line 390
    sget-object v2, Lfreemarker/ext/jdom/NodeListModel;->SPECIAL_OPERATIONS:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_8b

    .line 392
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_156

    goto :goto_8b

    .line 410
    :pswitch_48
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel;->getPlainText()Lfreemarker/template/SimpleScalar;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_4d
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$RegisterNamespace;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$RegisterNamespace;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$1;)V

    return-object p1

    .line 406
    :pswitch_53
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel;->getType()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 404
    :pswitch_58
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$TypeFilter;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$1;)V

    return-object p1

    .line 402
    :pswitch_5e
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$NameFilter;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$NameFilter;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$1;)V

    return-object p1

    .line 400
    :pswitch_64
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-static {v0}, Lfreemarker/ext/jdom/NodeListModel;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p1

    .line 395
    :pswitch_72
    iget-object v2, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    monitor-enter v2

    .line 396
    :try_start_75
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    monitor-exit v2

    return-object p1

    :catchall_88
    move-exception p1

    .line 397
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_88

    throw p1

    :cond_8b
    :goto_8b
    move-object v2, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_b0

    .line 364
    :cond_8f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_a0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_9d

    goto :goto_a0

    .line 370
    :cond_9d
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->ALL_ATTRIBUTES_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    goto :goto_8b

    .line 366
    :cond_a0
    :goto_a0
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->NAMED_ATTRIBUTE_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 367
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b0

    .line 376
    :cond_a7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_120

    .line 377
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->ALL_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    goto :goto_8b

    :goto_b0
    if-nez v4, :cond_b7

    if-nez v1, :cond_b7

    .line 419
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->NAMED_CHILDREN_OP:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    goto :goto_b8

    :cond_b7
    move-object p1, v2

    :goto_b8
    if-eqz v4, :cond_c1

    .line 425
    iget-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-static {v4, p1}, Lfreemarker/ext/jdom/NodeListModel;->evaluateElementOperation(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_119

    .line 428
    :cond_c1
    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    const/16 v3, 0x3a

    .line 429
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_113

    add-int/lit8 v2, v3, 0x1

    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    monitor-enter v0

    .line 434
    :try_start_d9
    iget-object v3, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Namespace;

    .line 435
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_110

    if-nez v3, :cond_10d

    .line 437
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 438
    sget-object p1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_113

    .line 440
    :cond_f2
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregistered namespace prefix \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    move-object p1, v2

    move-object v2, v3

    goto :goto_113

    :catchall_110
    move-exception p1

    .line 435
    :try_start_111
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw p1

    .line 444
    :cond_113
    :goto_113
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-static {v1, p1, v2, v0}, Lfreemarker/ext/jdom/NodeListModel;->evaluateNamedElementOperation(Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;Ljava/lang/String;Lorg/jdom/Namespace;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 446
    :goto_119
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-static {p1, v0}, Lfreemarker/ext/jdom/NodeListModel;->createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1

    return-object p1

    .line 380
    :cond_120
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_13b
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_72
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_53
        :pswitch_4d
        :pswitch_48
    .end packed-switch
.end method

.method public getAsString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lfreemarker/ext/jdom/NodeListModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    const-string v0, ""

    return-object v0

    .line 200
    :cond_9
    new-instance v0, Ljava/io/StringWriter;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 202
    :try_start_16
    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 204
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_32

    .line 205
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V

    goto :goto_1c

    .line 206
    :cond_32
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_3e

    .line 207
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/Attribute;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/Attribute;Ljava/io/Writer;)V

    goto :goto_1c

    .line 208
    :cond_3e
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 209
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_1c

    .line 210
    :cond_50
    instance-of v3, v2, Lorg/jdom/Text;

    if-eqz v3, :cond_5c

    .line 211
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/Text;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V

    goto :goto_1c

    .line 212
    :cond_5c
    instance-of v3, v2, Lorg/jdom/Document;

    if-eqz v3, :cond_68

    .line 213
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/Document;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    goto :goto_1c

    .line 214
    :cond_68
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_74

    .line 215
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V

    goto :goto_1c

    .line 216
    :cond_74
    instance-of v3, v2, Lorg/jdom/Comment;

    if-eqz v3, :cond_80

    .line 217
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/Comment;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V

    goto :goto_1c

    .line 218
    :cond_80
    instance-of v3, v2, Lorg/jdom/CDATA;

    if-eqz v3, :cond_8c

    .line 219
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/CDATA;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V

    goto :goto_1c

    .line 220
    :cond_8c
    instance-of v3, v2, Lorg/jdom/DocType;

    if-eqz v3, :cond_98

    .line 221
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/DocType;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V

    goto :goto_1c

    .line 222
    :cond_98
    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_a5

    .line 223
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->OUTPUT:Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;

    check-cast v2, Lorg/jdom/EntityRef;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$AttributeXMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V

    goto/16 :goto_1c

    .line 225
    :cond_a5
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a core JDOM class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_c6} :catch_cb

    .line 230
    :cond_c6
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_cb
    move-exception v0

    .line 228
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 2

    .line 486
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/jdom/NodeListModel$1;-><init>(Lfreemarker/ext/jdom/NodeListModel;)V

    return-object v0
.end method

.method public registerNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 580
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public size()I
    .registers 2

    .line 513
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
