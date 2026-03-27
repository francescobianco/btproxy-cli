.class final Lfreemarker/ext/dom/NodeListModel$1;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lfreemarker/template/ObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 62
    instance-of v0, p1, Lfreemarker/ext/dom/NodeModel;

    if-eqz v0, :cond_7

    .line 63
    check-cast p1, Lfreemarker/ext/dom/NodeModel;

    return-object p1

    .line 65
    :cond_7
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    return-object p1
.end method
