.class public Lfreemarker/ext/xml/NodeListModel;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateNodeModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/NodeListModel$FilterByType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DOM4J_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

.field private static final DOM4J_NODE_CLASS:Ljava/lang/Class;

.field private static final DOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

.field private static final DOM_NODE_CLASS:Ljava/lang/Class;

.field private static final JDOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

.field private static final LOG:Lfreemarker/log/Logger;

.field private static volatile useJaxenNamespaces:Z


# instance fields
.field private namespaces:Lfreemarker/ext/xml/Namespaces;

.field private final navigator:Lfreemarker/ext/xml/Navigator;

.field private final nodes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "freemarker.xml"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->LOG:Lfreemarker/log/Logger;

    .line 76
    const-string v0, "org.w3c.dom.Node"

    invoke-static {v0}, Lfreemarker/ext/xml/NodeListModel;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM_NODE_CLASS:Ljava/lang/Class;

    .line 77
    const-string v0, "org.dom4j.Node"

    invoke-static {v0}, Lfreemarker/ext/xml/NodeListModel;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM4J_NODE_CLASS:Ljava/lang/Class;

    .line 78
    const-string v0, "Dom"

    invoke-static {v0}, Lfreemarker/ext/xml/NodeListModel;->getNavigator(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    .line 79
    const-string v0, "Dom4j"

    invoke-static {v0}, Lfreemarker/ext/xml/NodeListModel;->getNavigator(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM4J_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    .line 80
    const-string v0, "Jdom"

    invoke-static {v0}, Lfreemarker/ext/xml/NodeListModel;->getNavigator(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/NodeListModel;->JDOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    const/4 v0, 0x1

    .line 81
    sput-boolean v0, Lfreemarker/ext/xml/NodeListModel;->useJaxenNamespaces:Z

    return-void
.end method

.method private constructor <init>(Lfreemarker/ext/xml/Navigator;Ljava/util/List;Lfreemarker/ext/xml/Namespaces;)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    .line 138
    iput-object p2, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    .line 139
    iput-object p3, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1e

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    goto :goto_26

    :cond_18
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_26

    :cond_1e
    if-eqz p1, :cond_4f

    .line 108
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    .line 112
    :goto_26
    sget-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM_NODE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 113
    sget-object p1, Lfreemarker/ext/xml/NodeListModel;->DOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    goto :goto_48

    .line 114
    :cond_35
    sget-object v0, Lfreemarker/ext/xml/NodeListModel;->DOM4J_NODE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_44

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 115
    sget-object p1, Lfreemarker/ext/xml/NodeListModel;->DOM4J_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    goto :goto_48

    .line 118
    :cond_44
    sget-object p1, Lfreemarker/ext/xml/NodeListModel;->JDOM_NAVIGATOR:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    .line 120
    :goto_48
    invoke-direct {p0}, Lfreemarker/ext/xml/NodeListModel;->createNamespaces()Lfreemarker/ext/xml/Namespaces;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    return-void

    .line 110
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "nodes == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lfreemarker/ext/xml/NodeListModel;)Lfreemarker/ext/xml/Navigator;
    .registers 1

    .line 67
    iget-object p0, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/ext/xml/NodeListModel;Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p0

    return-object p0
.end method

.method private createNamespaces()Lfreemarker/ext/xml/Namespaces;
    .registers 2

    .line 124
    sget-boolean v0, Lfreemarker/ext/xml/NodeListModel;->useJaxenNamespaces:Z

    if-eqz v0, :cond_14

    .line 126
    :try_start_4
    const-string v0, "freemarker.ext.xml._JaxenNamespaces"

    .line 127
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/Namespaces;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    const/4 v0, 0x0

    .line 130
    sput-boolean v0, Lfreemarker/ext/xml/NodeListModel;->useJaxenNamespaces:Z

    .line 133
    :cond_14
    new-instance v0, Lfreemarker/ext/xml/Namespaces;

    invoke-direct {v0}, Lfreemarker/ext/xml/Namespaces;-><init>()V

    return-object v0
.end method

.method private deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;
    .registers 5

    .line 143
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Namespaces;->markShared()V

    .line 144
    new-instance v0, Lfreemarker/ext/xml/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    iget-object v2, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-direct {v0, v1, p1, v2}, Lfreemarker/ext/xml/NodeListModel;-><init>(Lfreemarker/ext/xml/Navigator;Ljava/util/List;Lfreemarker/ext/xml/Namespaces;)V

    return-object v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5

    .line 485
    :try_start_0
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 487
    sget-object v1, Lfreemarker/ext/xml/NodeListModel;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 488
    sget-object v1, Lfreemarker/ext/xml/NodeListModel;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t load class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNavigator(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;
    .registers 5

    const-string v0, "freemarker.ext.xml._"

    .line 496
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Navigator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/Navigator;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v0

    .line 499
    sget-object v1, Lfreemarker/ext/xml/NodeListModel;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load navigator for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUniqueText(Lfreemarker/ext/xml/NodeListModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 528
    iget-object p1, p1, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 529
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    if-nez v1, :cond_1a

    move-object v1, v2

    goto :goto_8

    .line 537
    :cond_1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v0, :cond_2a

    .line 539
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 540
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2a
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_2e
    if-nez v0, :cond_31

    return-object v1

    .line 551
    :cond_31
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value for node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " is ambiguos: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .registers 5

    .line 470
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    new-instance v2, Ljava/util/HashSet;

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v0, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 473
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 474
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 475
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 476
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 477
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2c
    return-object v1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 168
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    iget-object v1, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0, v1, p1, v2}, Lfreemarker/ext/xml/Navigator;->applyXPath(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p1

    return-object p1

    .line 165
    :cond_1d
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Expecting exactly one argument - an XPath expression"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 202
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0, p1}, Lfreemarker/ext/xml/Navigator;->getOperator(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5d

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_5d

    .line 390
    const-string v3, "_unique"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 391
    iget-object p1, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-static {p1}, Lfreemarker/ext/xml/NodeListModel;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p1

    return-object p1

    .line 392
    :cond_2b
    const-string v3, "_filterType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "_ftype"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_57

    .line 394
    :cond_3c
    const-string v3, "_registerNamespace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 395
    iget-object v3, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v3}, Lfreemarker/ext/xml/Namespaces;->isShared()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 396
    iget-object v3, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v3}, Lfreemarker/ext/xml/Namespaces;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/xml/Namespaces;

    iput-object v3, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    goto :goto_5d

    .line 393
    :cond_57
    :goto_57
    new-instance p1, Lfreemarker/ext/xml/NodeListModel$FilterByType;

    invoke-direct {p1, p0, v2}, Lfreemarker/ext/xml/NodeListModel$FilterByType;-><init>(Lfreemarker/ext/xml/NodeListModel;Lfreemarker/ext/xml/NodeListModel$1;)V

    return-object p1

    .line 401
    :cond_5d
    :goto_5d
    const-string v3, ""

    if-nez v0, :cond_b5

    const/16 v0, 0x3a

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6b

    goto :goto_7e

    :cond_6b
    add-int/lit8 v2, v0, 0x1

    .line 408
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0, p1}, Lfreemarker/ext/xml/Namespaces;->translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9a

    move-object p1, v2

    .line 415
    :goto_7e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_92

    .line 416
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Navigator;->getAttributeOperator()Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    const/4 v1, 0x1

    .line 417
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b5

    .line 419
    :cond_92
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Navigator;->getChildrenOperator()Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    move-object v2, p1

    goto :goto_b5

    .line 412
    :cond_9a
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Namespace prefix "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not registered."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_b5
    :goto_b5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object v1, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 425
    :try_start_c6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v2, v3, p1}, Lfreemarker/ext/xml/NodeOperator;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_cd
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_cd} :catch_ce

    goto :goto_c0

    :catch_ce
    move-exception p1

    .line 427
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 430
    :cond_d5
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/NodeListModel;->deriveModel(Ljava/util/List;)Lfreemarker/ext/xml/NodeListModel;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Lfreemarker/ext/xml/NodeListModel;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 184
    iget-object v1, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 186
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 187
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_11

    .line 189
    :cond_25
    iget-object v3, p0, Lfreemarker/ext/xml/NodeListModel;->navigator:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/xml/Navigator;->getAsString(Ljava/lang/Object;Ljava/io/StringWriter;)V

    goto :goto_11

    .line 192
    :cond_2b
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 507
    const-string v0, "_content"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/NodeListModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 511
    const-string v0, "_name"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/NodeListModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/NodeListModel;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/NodeListModel;->getUniqueText(Lfreemarker/ext/xml/NodeListModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 515
    const-string v0, "_nsuri"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/NodeListModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/NodeListModel;

    const-string v1, "namespace"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/NodeListModel;->getUniqueText(Lfreemarker/ext/xml/NodeListModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 519
    const-string v0, "_type"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/NodeListModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/NodeListModel;

    const-string v1, "type"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/NodeListModel;->getUniqueText(Lfreemarker/ext/xml/NodeListModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 522
    const-string v0, "_parent"

    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/NodeListModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateNodeModel;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 438
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Namespaces;->isShared()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 449
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Namespaces;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/Namespaces;

    iput-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    .line 451
    :cond_12
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->namespaces:Lfreemarker/ext/xml/Namespaces;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/xml/Namespaces;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 152
    iget-object v0, p0, Lfreemarker/ext/xml/NodeListModel;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
