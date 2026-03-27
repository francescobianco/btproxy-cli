.class final Lfreemarker/ext/jdom/NodeListModel$NameFilter;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NameFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/jdom/NodeListModel;


# direct methods
.method private constructor <init>(Lfreemarker/ext/jdom/NodeListModel;)V
    .registers 2

    .line 1056
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel$NameFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 3

    .line 1056
    invoke-direct {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$NameFilter;-><init>(Lfreemarker/ext/jdom/NodeListModel;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    .line 1062
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1063
    new-instance p1, Ljava/util/LinkedList;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel$NameFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    # getter for: Lfreemarker/ext/jdom/NodeListModel;->nodes:Ljava/util/List;
    invoke-static {v1}, Lfreemarker/ext/jdom/NodeListModel;->access$800(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1065
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1066
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1068
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_29

    .line 1069
    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 1070
    :cond_29
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_34

    .line 1071
    check-cast v2, Lorg/jdom/Attribute;

    invoke-virtual {v2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 1072
    :cond_34
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_3f

    .line 1073
    check-cast v2, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {v2}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 1074
    :cond_3f
    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_4a

    .line 1075
    check-cast v2, Lorg/jdom/EntityRef;

    invoke-virtual {v2}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    .line 1076
    :cond_4a
    instance-of v3, v2, Lorg/jdom/DocType;

    if-eqz v3, :cond_55

    .line 1077
    check-cast v2, Lorg/jdom/DocType;

    invoke-virtual {v2}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-eqz v2, :cond_5e

    .line 1079
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1080
    :cond_5e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 1082
    :cond_62
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel$NameFilter;->this$0:Lfreemarker/ext/jdom/NodeListModel;

    # getter for: Lfreemarker/ext/jdom/NodeListModel;->namespaces:Ljava/util/Map;
    invoke-static {v0}, Lfreemarker/ext/jdom/NodeListModel;->access$900(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/Map;

    move-result-object v0

    # invokes: Lfreemarker/ext/jdom/NodeListModel;->createNodeListModel(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    invoke-static {p1, v0}, Lfreemarker/ext/jdom/NodeListModel;->access$2600(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
