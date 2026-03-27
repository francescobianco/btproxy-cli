.class final Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;
.super Ljava/lang/Object;
.source "NodeListModel.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamespaceContextImpl"
.end annotation


# instance fields
.field private final namespaces:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;->namespaces:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 1193
    :cond_7
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;->namespaces:Ljava/util/Map;

    monitor-enter v0

    .line 1194
    :try_start_a
    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel$JDOMXPathEx$NamespaceContextImpl;->namespaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Namespace;

    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_1a

    .line 1195
    :cond_16
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    :goto_1a
    monitor-exit v0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 1196
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw p1
.end method
