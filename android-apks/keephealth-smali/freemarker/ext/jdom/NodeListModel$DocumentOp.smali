.class final Lfreemarker/ext/jdom/NodeListModel$DocumentOp;
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
    name = "DocumentOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 855
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$DocumentOp;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 858
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_b

    .line 859
    check-cast p1, Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    goto :goto_58

    .line 860
    :cond_b
    instance-of v0, p1, Lorg/jdom/Attribute;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 861
    check-cast p1, Lorg/jdom/Attribute;

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_1a

    :goto_18
    move-object p1, v1

    goto :goto_58

    .line 862
    :cond_1a
    invoke-virtual {p1}, Lorg/jdom/Element;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    goto :goto_58

    .line 863
    :cond_1f
    instance-of v0, p1, Lorg/jdom/Text;

    if-eqz v0, :cond_31

    .line 864
    check-cast p1, Lorg/jdom/Text;

    invoke-virtual {p1}, Lorg/jdom/Text;->getParent()Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_2c

    goto :goto_18

    .line 865
    :cond_2c
    invoke-virtual {p1}, Lorg/jdom/Element;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    goto :goto_58

    .line 866
    :cond_31
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_38

    .line 867
    check-cast p1, Lorg/jdom/Document;

    goto :goto_58

    .line 868
    :cond_38
    instance-of v0, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_43

    .line 869
    check-cast p1, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    goto :goto_58

    .line 870
    :cond_43
    instance-of v0, p1, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_4e

    .line 871
    check-cast p1, Lorg/jdom/EntityRef;

    invoke-virtual {p1}, Lorg/jdom/EntityRef;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    goto :goto_58

    .line 872
    :cond_4e
    instance-of v0, p1, Lorg/jdom/Comment;

    if-eqz v0, :cond_62

    .line 873
    check-cast p1, Lorg/jdom/Comment;

    invoke-virtual {p1}, Lorg/jdom/Comment;->getDocument()Lorg/jdom/Document;

    move-result-object p1

    :goto_58
    if-nez p1, :cond_5d

    .line 880
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_61

    :cond_5d
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_61
    return-object p1

    :cond_62
    return-object v1
.end method
