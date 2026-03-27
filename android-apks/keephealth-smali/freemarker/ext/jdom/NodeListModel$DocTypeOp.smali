.class final Lfreemarker/ext/jdom/NodeListModel$DocTypeOp;
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
    name = "DocTypeOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$1;)V
    .registers 2

    .line 884
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$DocTypeOp;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 886
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_14

    .line 887
    check-cast p1, Lorg/jdom/Document;

    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object p1

    if-nez p1, :cond_f

    .line 888
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_13

    :cond_f
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_13
    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method
