.class final Lfreemarker/ext/jdom/NodeListModel$AllAttributesOp;
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
    name = "AllAttributesOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 636
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$AllAttributesOp;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 640
    instance-of v0, p1, Lorg/jdom/Element;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 643
    :cond_6
    check-cast p1, Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
