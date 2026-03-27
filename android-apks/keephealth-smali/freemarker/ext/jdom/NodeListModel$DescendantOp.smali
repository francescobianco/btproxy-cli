.class Lfreemarker/ext/jdom/NodeListModel$DescendantOp;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/ext/jdom/NodeListModel$NodeOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescendantOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 817
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;-><init>()V

    return-void
.end method

.method private addChildren(Lorg/jdom/Element;Ljava/util/List;)V
    .registers 4

    .line 836
    invoke-virtual {p1}, Lorg/jdom/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 837
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 838
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 839
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 840
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-direct {p0, v0, p2}, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;->addChildren(Lorg/jdom/Element;Ljava/util/List;)V

    goto :goto_8

    :cond_1b
    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 819
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 820
    instance-of v1, p1, Lorg/jdom/Element;

    if-eqz v1, :cond_f

    .line 821
    check-cast p1, Lorg/jdom/Element;

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;->addChildren(Lorg/jdom/Element;Ljava/util/List;)V

    goto :goto_1f

    .line 822
    :cond_f
    instance-of v1, p1, Lorg/jdom/Document;

    if-eqz v1, :cond_20

    .line 823
    check-cast p1, Lorg/jdom/Document;

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    .line 824
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jdom/NodeListModel$DescendantOp;->addChildren(Lorg/jdom/Element;Ljava/util/List;)V

    :goto_1f
    return-object v0

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method
