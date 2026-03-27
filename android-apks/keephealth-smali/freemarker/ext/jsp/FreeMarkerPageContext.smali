.class abstract Lfreemarker/ext/jsp/FreeMarkerPageContext;
.super Ljavax/servlet/jsp/PageContext;
.source "FreeMarkerPageContext.java"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/FreeMarkerPageContext$TemplateHashModelExEnumeration;
    }
.end annotation


# static fields
.field private static final OBJECT_CLASS:Ljava/lang/Class;


# instance fields
.field private final environment:Lfreemarker/core/Environment;

.field private final incompatibleImprovements:I

.field private jspOut:Ljavax/servlet/jsp/JspWriter;

.field private outs:Ljava/util/List;

.field private final request:Ljavax/servlet/http/HttpServletRequest;

.field private final response:Ljavax/servlet/http/HttpServletResponse;

.field private final servlet:Ljavax/servlet/GenericServlet;

.field private session:Ljavax/servlet/http/HttpSession;

.field private tags:Ljava/util/List;

.field private final unwrapper:Lfreemarker/template/ObjectWrapperAndUnwrapper;

.field private final wrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->OBJECT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljavax/servlet/jsp/PageContext;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->tags:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->outs:Ljava/util/List;

    .line 85
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->environment:Lfreemarker/core/Environment;

    .line 86
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    iput v1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->incompatibleImprovements:I

    .line 88
    const-string v1, "__FreeMarkerServlet.Application__"

    invoke-virtual {v0, v1}, Lfreemarker/core/Environment;->getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 90
    instance-of v2, v1, Lfreemarker/ext/servlet/ServletContextHashModel;

    if-nez v2, :cond_35

    .line 91
    const-string v1, "Application"

    invoke-virtual {v0, v1}, Lfreemarker/core/Environment;->getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 94
    :cond_35
    instance-of v2, v1, Lfreemarker/ext/servlet/ServletContextHashModel;

    const-string v3, "Could not find an instance of "

    if-eqz v2, :cond_cb

    .line 95
    check-cast v1, Lfreemarker/ext/servlet/ServletContextHashModel;

    invoke-virtual {v1}, Lfreemarker/ext/servlet/ServletContextHashModel;->getServlet()Ljavax/servlet/GenericServlet;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->servlet:Ljavax/servlet/GenericServlet;

    .line 104
    const-string v2, "__FreeMarkerServlet.Request__"

    .line 105
    invoke-virtual {v0, v2}, Lfreemarker/core/Environment;->getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 106
    instance-of v4, v2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    if-nez v4, :cond_53

    .line 107
    const-string v2, "Request"

    invoke-virtual {v0, v2}, Lfreemarker/core/Environment;->getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 110
    :cond_53
    instance-of v0, v2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    if-eqz v0, :cond_ac

    .line 111
    check-cast v2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    .line 112
    invoke-virtual {v2}, Lfreemarker/ext/servlet/HttpRequestHashModel;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    const/4 v3, 0x0

    .line 113
    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->session:Ljavax/servlet/http/HttpSession;

    .line 114
    invoke-virtual {v2}, Lfreemarker/ext/servlet/HttpRequestHashModel;->getResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->response:Ljavax/servlet/http/HttpServletResponse;

    .line 115
    invoke-virtual {v2}, Lfreemarker/ext/servlet/HttpRequestHashModel;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->wrapper:Lfreemarker/template/ObjectWrapper;

    .line 116
    instance-of v4, v2, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    if-eqz v4, :cond_79

    check-cast v2, Lfreemarker/template/ObjectWrapperAndUnwrapper;

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    :goto_7a
    iput-object v2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->unwrapper:Lfreemarker/template/ObjectWrapperAndUnwrapper;

    .line 127
    const-string v2, "javax.servlet.jsp.jspRequest"

    invoke-virtual {p0, v2, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "javax.servlet.jsp.jspResponse"

    invoke-virtual {p0, v0, v3}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_8f

    .line 130
    const-string v2, "javax.servlet.jsp.jspSession"

    invoke-virtual {p0, v2, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_8f
    const-string v0, "javax.servlet.jsp.jspPage"

    invoke-virtual {p0, v0, v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "javax.servlet.jsp.jspConfig"

    invoke-virtual {v1}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "javax.servlet.jsp.jspPageContext"

    invoke-virtual {p0, v0, p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "javax.servlet.jsp.jspApplication"

    invoke-virtual {v1}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_ac
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the data model under either the name __FreeMarkerServlet.Request__ or Request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_cb
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lfreemarker/ext/servlet/ServletContextHashModel;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the data model under either the name __FreeMarkerServlet.Application__ or Application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSession(Z)Ljavax/servlet/http/HttpSession;
    .registers 3

    .line 337
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_13

    .line 338
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->session:Ljavax/servlet/http/HttpSession;

    if-eqz p1, :cond_13

    .line 340
    const-string v0, "javax.servlet.jsp.jspSession"

    invoke-virtual {p0, v0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    :cond_13
    iget-object p1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->session:Ljavax/servlet/http/HttpSession;

    return-object p1
.end method


# virtual methods
.method public findAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    const/4 v0, 0x2

    .line 249
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    const/4 v0, 0x3

    .line 251
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    const/4 v0, 0x4

    .line 253
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forward(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_41

    const/4 v0, 0x2

    if-eq p2, v0, :cond_38

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x4

    if-ne p2, v0, :cond_15

    .line 237
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 240
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid scope "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p2, 0x0

    .line 230
    invoke-direct {p0, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-nez p2, :cond_33

    const/4 p1, 0x0

    return-object p1

    .line 234
    :cond_33
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 227
    :cond_38
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 197
    :cond_41
    :try_start_41
    iget-object p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->environment:Lfreemarker/core/Environment;

    invoke-virtual {p2}, Lfreemarker/core/Environment;->getGlobalNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 198
    iget p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->incompatibleImprovements:I

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt p2, v0, :cond_5a

    iget-object p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->unwrapper:Lfreemarker/template/ObjectWrapperAndUnwrapper;

    if-eqz p2, :cond_5a

    .line 199
    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapperAndUnwrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 201
    :cond_5a
    instance-of p2, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz p2, :cond_67

    .line 202
    check-cast p1, Lfreemarker/template/AdapterTemplateModel;

    sget-object p2, Lfreemarker/ext/jsp/FreeMarkerPageContext;->OBJECT_CLASS:Ljava/lang/Class;

    invoke-interface {p1, p2}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 204
    :cond_67
    instance-of p2, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz p2, :cond_72

    .line 205
    check-cast p1, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p1}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 207
    :cond_72
    instance-of p2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_7d

    .line 208
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_7d
    instance-of p2, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz p2, :cond_88

    .line 211
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 213
    :cond_88
    instance-of p2, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p2, :cond_97

    .line 214
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 216
    :cond_97
    iget p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->incompatibleImprovements:I

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt p2, v0, :cond_a7

    instance-of p2, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p2, :cond_a7

    .line 218
    check-cast p1, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p1
    :try_end_a7
    .catch Lfreemarker/template/TemplateModelException; {:try_start_41 .. :try_end_a7} :catch_a8

    :cond_a7
    return-object p1

    :catch_a8
    move-exception p1

    .line 223
    new-instance p2, Lfreemarker/template/utility/UndeclaredThrowableException;

    const-string v0, "Failed to unwrapp FTL global variable"

    invoke-direct {p2, v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAttributeNamesInScope(I)Ljava/util/Enumeration;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_46

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    .line 323
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    invoke-interface {p1}, Ljavax/servlet/ServletContext;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 326
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid scope "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 318
    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 320
    :cond_36
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 313
    :cond_3d
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p1

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 306
    :cond_46
    :try_start_46
    new-instance p1, Lfreemarker/ext/jsp/FreeMarkerPageContext$TemplateHashModelExEnumeration;

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->environment:Lfreemarker/core/Environment;

    .line 307
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getGlobalNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext$TemplateHashModelExEnumeration;-><init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/ext/jsp/FreeMarkerPageContext$1;)V
    :try_end_52
    .catch Lfreemarker/template/TemplateModelException; {:try_start_46 .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    move-exception p1

    .line 309
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAttributesScope(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x2

    .line 295
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x3

    .line 296
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    const/4 v0, 0x4

    .line 297
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 138
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->wrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public getOut()Ljavax/servlet/jsp/JspWriter;
    .registers 2

    .line 333
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    return-object v0
.end method

.method public getPage()Ljava/lang/Object;
    .registers 2

    .line 353
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->servlet:Ljavax/servlet/GenericServlet;

    return-object v0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .registers 2

    .line 358
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .registers 2

    .line 363
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->response:Ljavax/servlet/http/HttpServletResponse;

    return-object v0
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .registers 2

    .line 373
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->servlet:Ljavax/servlet/GenericServlet;

    invoke-virtual {v0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .registers 2

    .line 378
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->servlet:Ljavax/servlet/GenericServlet;

    invoke-virtual {v0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .registers 2

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public handlePageException(Ljava/lang/Exception;)V
    .registers 2

    .line 415
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public handlePageException(Ljava/lang/Throwable;)V
    .registers 2

    .line 420
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public include(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {v0}, Ljavax/servlet/jsp/JspWriter;->flush()V

    .line 390
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public include(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 396
    iget-object p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {p2}, Ljavax/servlet/jsp/JspWriter;->flush()V

    .line 398
    :cond_7
    new-instance p2, Ljava/io/PrintWriter;

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    invoke-direct {p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 399
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->request:Ljavax/servlet/http/HttpServletRequest;

    new-instance v1, Lfreemarker/ext/jsp/FreeMarkerPageContext$1;

    iget-object v2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-direct {v1, p0, v2, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext$1;-><init>(Lfreemarker/ext/jsp/FreeMarkerPageContext;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V

    invoke-interface {p1, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 410
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public initialize(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V
    .registers 8

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method peekTopTag(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 440
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 441
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 442
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public popBody()Ljavax/servlet/jsp/JspWriter;
    .registers 2

    .line 435
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    .line 436
    const-string v0, "javax.servlet.jsp.jspOut"

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/JspWriter;

    return-object v0
.end method

.method popTopTag()V
    .registers 3

    .line 450
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method popWriter()V
    .registers 3

    .line 454
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->outs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/JspWriter;

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    .line 455
    const-string v1, "javax.servlet.jsp.jspOut"

    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pushBody(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;
    .registers 3

    .line 430
    new-instance v0, Lfreemarker/ext/jsp/JspWriterAdapter;

    invoke-direct {v0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    return-object p1
.end method

.method public pushBody()Ljavax/servlet/jsp/tagext/BodyContent;
    .registers 4

    .line 425
    new-instance v0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;

    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;-><init>(Ljavax/servlet/jsp/JspWriter;Z)V

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/tagext/BodyContent;

    return-object v0
.end method

.method pushTopTag(Ljava/lang/Object;)V
    .registers 3

    .line 459
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    .registers 4

    .line 463
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->outs:Ljava/util/List;

    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iput-object p1, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->jspOut:Ljavax/servlet/jsp/JspWriter;

    .line 465
    const-string v0, "javax.servlet.jsp.jspOut"

    invoke-virtual {p0, v0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 259
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 260
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;I)V

    const/4 v0, 0x4

    .line 261
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_34

    const/4 v0, 0x3

    if-eq p2, v0, :cond_29

    const/4 v0, 0x4

    if-ne p2, v0, :cond_14

    .line 283
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletContext;->removeAttribute(Ljava/lang/String;)V

    goto :goto_45

    .line 287
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const/4 p2, 0x0

    .line 276
    invoke-direct {p0, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-eqz p2, :cond_45

    .line 278
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_45

    .line 272
    :cond_34
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    goto :goto_45

    .line 268
    :cond_3c
    iget-object p2, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->environment:Lfreemarker/core/Environment;

    invoke-virtual {p2}, Lfreemarker/core/Environment;->getGlobalNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfreemarker/core/Environment$Namespace;->remove(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_39

    const/4 v1, 0x2

    if-eq p3, v1, :cond_31

    const/4 v1, 0x3

    if-eq p3, v1, :cond_29

    const/4 v0, 0x4

    if-ne p3, v0, :cond_14

    .line 178
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    .line 182
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid scope "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_29
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    .line 170
    :cond_31
    invoke-virtual {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44

    .line 163
    :cond_39
    :try_start_39
    iget-object p3, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->environment:Lfreemarker/core/Environment;

    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerPageContext;->wrapper:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lfreemarker/core/Environment;->setGlobalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    :try_end_44
    .catch Lfreemarker/template/TemplateModelException; {:try_start_39 .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception p1

    .line 166
    new-instance p2, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p2, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
