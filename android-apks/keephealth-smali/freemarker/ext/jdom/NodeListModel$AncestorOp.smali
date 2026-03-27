.class final Lfreemarker/ext/jdom/NodeListModel$AncestorOp;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/ext/jdom/NodeListModel$NodeOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AncestorOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 790
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$AncestorOp;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 792
    # invokes: Lfreemarker/ext/jdom/NodeListModel;->getParent(Ljava/lang/Object;)Lorg/jdom/Element;
    invoke-static {p1}, Lfreemarker/ext/jdom/NodeListModel;->access$1100(Ljava/lang/Object;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_9

    .line 793
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 794
    :cond_9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 796
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {p1}, Lorg/jdom/Element;->getParent()Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_e

    return-object v0
.end method
