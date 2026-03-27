.class final Lfreemarker/ext/jdom/NodeListModel$AllChildrenOp;
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
    name = "AllChildrenOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 595
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$AllChildrenOp;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 597
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_b

    .line 598
    check-cast p1, Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 599
    :cond_b
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_1f

    .line 600
    check-cast p1, Lorg/jdom/Document;

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 601
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_1e
    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method
