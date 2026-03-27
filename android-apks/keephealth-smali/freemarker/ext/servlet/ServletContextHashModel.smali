.class public final Lfreemarker/ext/servlet/ServletContextHashModel;
.super Ljava/lang/Object;
.source "ServletContextHashModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# instance fields
.field private final servlet:Ljavax/servlet/GenericServlet;

.field private final servletctx:Ljavax/servlet/ServletContext;

.field private final wrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method public constructor <init>(Ljavax/servlet/GenericServlet;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servlet:Ljavax/servlet/GenericServlet;

    .line 41
    invoke-virtual {p1}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servletctx:Ljavax/servlet/ServletContext;

    .line 42
    iput-object p2, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;Lfreemarker/template/ObjectWrapper;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servlet:Ljavax/servlet/GenericServlet;

    .line 53
    iput-object p1, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servletctx:Ljavax/servlet/ServletContext;

    .line 54
    iput-object p2, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

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

    .line 58
    iget-object v0, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servletctx:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getServlet()Ljavax/servlet/GenericServlet;
    .registers 2

    .line 70
    iget-object v0, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servlet:Ljavax/servlet/GenericServlet;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lfreemarker/ext/servlet/ServletContextHashModel;->servletctx:Ljavax/servlet/ServletContext;

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
