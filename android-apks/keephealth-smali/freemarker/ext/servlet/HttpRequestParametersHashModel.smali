.class public Lfreemarker/ext/servlet/HttpRequestParametersHashModel;
.super Ljava/lang/Object;
.source "HttpRequestParametersHashModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# instance fields
.field private keys:Ljava/util/List;

.field private final request:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/servlet/HttpRequestParametersHashModel;)Ljavax/servlet/http/HttpServletRequest;
    .registers 1

    .line 39
    iget-object p0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    return-object p0
.end method

.method private declared-synchronized getKeys()Ljava/util/List;
    .registers 4

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->keys:Ljava/util/List;

    if-nez v0, :cond_22

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->keys:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 90
    iget-object v1, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 93
    :cond_22
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->keys:Ljava/util/List;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 50
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    .line 51
    :cond_a
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_10
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 3

    .line 63
    new-instance v0, Lfreemarker/template/SimpleCollection;

    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 59
    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected transcode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 67
    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    new-instance v1, Lfreemarker/template/SimpleCollection;

    new-instance v2, Lfreemarker/ext/servlet/HttpRequestParametersHashModel$1;

    invoke-direct {v2, p0, v0}, Lfreemarker/ext/servlet/HttpRequestParametersHashModel$1;-><init>(Lfreemarker/ext/servlet/HttpRequestParametersHashModel;Ljava/util/Iterator;)V

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
