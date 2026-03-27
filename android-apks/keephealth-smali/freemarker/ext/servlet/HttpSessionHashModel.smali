.class public final Lfreemarker/ext/servlet/HttpSessionHashModel;
.super Ljava/lang/Object;
.source "HttpSessionHashModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient request:Ljavax/servlet/http/HttpServletRequest;

.field private final transient response:Ljavax/servlet/http/HttpServletResponse;

.field private final transient servlet:Lfreemarker/ext/servlet/FreemarkerServlet;

.field private transient session:Ljavax/servlet/http/HttpSession;

.field private final transient wrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method public constructor <init>(Lfreemarker/ext/servlet/FreemarkerServlet;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V
    .registers 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p4, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    .line 75
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->servlet:Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 76
    iput-object p2, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 77
    iput-object p3, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    .line 54
    iput-object p2, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->servlet:Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 57
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 58
    iput-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method

.method private checkSessionExistence()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_26

    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 87
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_26

    .line 88
    iget-object v1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->servlet:Lfreemarker/ext/servlet/FreemarkerServlet;

    if-eqz v1, :cond_26

    .line 90
    :try_start_15
    iget-object v2, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    iget-object v3, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v1, v2, v3, p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->initializeSessionAndInstallModel(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/HttpSessionHashModel;Ljavax/servlet/http/HttpSession;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception v0

    .line 95
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_24
    move-exception v0

    .line 93
    throw v0

    :cond_26
    :goto_26
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

    .line 81
    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpSessionHashModel;->checkSessionExistence()V

    .line 82
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->wrapper:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v1, :cond_e

    invoke-interface {v1, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lfreemarker/ext/servlet/HttpSessionHashModel;->checkSessionExistence()V

    .line 109
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method isOrphaned(Ljavax/servlet/http/HttpSession;)Z
    .registers 3

    .line 102
    iget-object v0, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_c

    :cond_6
    if-nez v0, :cond_e

    iget-object p1, p0, Lfreemarker/ext/servlet/HttpSessionHashModel;->request:Ljavax/servlet/http/HttpServletRequest;

    if-nez p1, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
