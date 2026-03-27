.class public Lfreemarker/ext/servlet/AllHttpScopesHashModel;
.super Lfreemarker/template/SimpleHash;
.source "AllHttpScopesHashModel.java"


# instance fields
.field private final context:Ljavax/servlet/ServletContext;

.field private final request:Ljavax/servlet/http/HttpServletRequest;

.field private final unlistedModels:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->unlistedModels:Ljava/util/Map;

    .line 60
    invoke-virtual {p0, p1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 61
    iput-object p2, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->context:Ljavax/servlet/ServletContext;

    .line 62
    iput-object p3, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

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

    .line 79
    invoke-super {p0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 85
    :cond_7
    iget-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->unlistedModels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_12

    return-object v0

    .line 91
    :cond_12
    iget-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 93
    invoke-virtual {p0, v0}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 97
    :cond_1f
    iget-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 99
    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 101
    invoke-virtual {p0, v0}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 106
    :cond_33
    iget-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 108
    invoke-virtual {p0, p1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->unlistedModels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
