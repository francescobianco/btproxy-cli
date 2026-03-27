.class final Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;
.super Lorg/jaxen/jdom/JDOMXPath;
.source "NodeListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDOMXPathEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .line 1169
    invoke-direct {p0, p1}, Lorg/jaxen/jdom/JDOMXPath;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public selectNodes(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .line 1174
    invoke-virtual {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    .line 1175
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;

    invoke-direct {v1, p2}, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 1176
    invoke-virtual {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
