.class final Lfreemarker/ext/xml/_JdomNavigator$JDOMXPathEx;
.super Lorg/jaxen/jdom/JDOMXPath;
.source "_JdomNavigator.java"

# interfaces
.implements Lfreemarker/ext/xml/Navigator$XPathEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/_JdomNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDOMXPathEx"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Lorg/jaxen/jdom/JDOMXPath;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public selectNodes(Ljava/lang/Object;Lorg/jaxen/NamespaceContext;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/_JdomNavigator$JDOMXPathEx;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 340
    :try_start_b
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/_JdomNavigator$JDOMXPathEx;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    .line 342
    new-instance p2, Lfreemarker/template/TemplateModelException;

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
