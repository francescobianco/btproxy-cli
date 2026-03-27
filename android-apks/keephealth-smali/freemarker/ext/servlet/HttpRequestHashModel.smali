.class public final Lfreemarker/ext/servlet/HttpRequestHashModel;
.super Ljava/lang/Object;
.source "HttpRequestHashModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# instance fields
.field private final request:Ljavax/servlet/http/HttpServletRequest;

.field private final response:Ljavax/servlet/http/HttpServletResponse;

.field private final wrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/ext/servlet/HttpRequestHashModel;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 58
    iput-object p2, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    .line 59
    iput-object p3, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v1, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 104
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public getRequest()Ljavax/servlet/http/HttpServletRequest;
    .registers 2

    .line 96
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/http/HttpServletResponse;
    .registers 2

    .line 100
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 82
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 84
    :cond_19
    new-instance v1, Lfreemarker/template/SimpleCollection;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .registers 4

    .line 72
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return v1
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 5

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 90
    iget-object v2, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 92
    :cond_21
    new-instance v1, Lfreemarker/template/SimpleCollection;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/ext/servlet/HttpRequestHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    invoke-direct {v1, v0, v2}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    return-object v1
.end method
