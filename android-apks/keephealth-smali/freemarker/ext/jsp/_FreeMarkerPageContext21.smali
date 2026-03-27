.class public Lfreemarker/ext/jsp/_FreeMarkerPageContext21;
.super Lfreemarker/ext/jsp/FreeMarkerPageContext;
.source "_FreeMarkerPageContext21.java"


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private elContext:Ljavax/el/ELContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    const-string v0, "freemarker.jsp"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->LOG:Lfreemarker/log/Logger;

    .line 49
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v1

    if-nez v1, :cond_16

    .line 50
    new-instance v1, Lfreemarker/ext/jsp/FreeMarkerJspFactory21;

    invoke-direct {v1}, Lfreemarker/ext/jsp/FreeMarkerJspFactory21;-><init>()V

    invoke-static {v1}, Ljavax/servlet/jsp/JspFactory;->setDefaultFactory(Ljavax/servlet/jsp/JspFactory;)V

    .line 52
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using JspFactory implementation class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->findAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forward(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->forward(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3

    .line 45
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAttributeNamesInScope(I)Ljava/util/Enumeration;
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttributeNamesInScope(I)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAttributesScope(Ljava/lang/String;)I
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getAttributesScope(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getELContext()Ljavax/el/ELContext;
    .registers 5

    .line 103
    iget-object v0, p0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->elContext:Ljavax/el/ELContext;

    if-nez v0, :cond_41

    .line 104
    invoke-static {}, Ljavax/servlet/jsp/JspFactory;->getDefaultFactory()Ljavax/servlet/jsp/JspFactory;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/servlet/jsp/JspFactory;->getJspApplicationContext(Ljavax/servlet/ServletContext;)Ljavax/servlet/jsp/JspApplicationContext;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;

    if-eqz v1, :cond_22

    .line 106
    check-cast v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;

    invoke-virtual {v0, p0}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->createNewELContext(Lfreemarker/ext/jsp/FreeMarkerPageContext;)Ljavax/el/ELContext;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->elContext:Ljavax/el/ELContext;

    .line 107
    const-class v1, Ljavax/servlet/jsp/JspContext;

    invoke-virtual {v0, v1, p0}, Ljavax/el/ELContext;->putContext(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_41

    .line 109
    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not create an ELContext using a foreign JspApplicationContext (of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ").\nHint: The cause of this is often that you are trying to use JSTL tags/functions in FTL. In that case, know that that\'s not really suppored, and you are supposed to use FTL constrcuts instead, like #list instead of JSTL\'s forEach, etc."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_41
    :goto_41
    iget-object v0, p0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->elContext:Ljavax/el/ELContext;

    return-object v0
.end method

.method public bridge synthetic getException()Ljava/lang/Exception;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getExpressionEvaluator()Ljavax/servlet/jsp/el/ExpressionEvaluator;
    .registers 3

    .line 68
    :try_start_0
    new-instance v0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/_FreeMarkerPageContext21$1;-><init>(Lfreemarker/ext/jsp/_FreeMarkerPageContext21;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const-string v1, "org.apache.commons.el.ExpressionEvaluatorImpl"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/jsp/el/ExpressionEvaluator;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 77
    :catch_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "In order for the getExpressionEvaluator() method to work, you must have downloaded the apache commons-el jar and made it available in the classpath."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getOut()Ljavax/servlet/jsp/JspWriter;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getPage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequest()Ljavax/servlet/ServletRequest;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponse()Ljavax/servlet/ServletResponse;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServletConfig()Ljavax/servlet/ServletConfig;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServletContext()Ljavax/servlet/ServletContext;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Ljavax/servlet/http/HttpSession;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getVariableResolver()Ljavax/servlet/jsp/el/VariableResolver;
    .registers 2

    .line 92
    new-instance v0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21$2;

    invoke-direct {v0, p0, p0}, Lfreemarker/ext/jsp/_FreeMarkerPageContext21$2;-><init>(Lfreemarker/ext/jsp/_FreeMarkerPageContext21;Ljavax/servlet/jsp/PageContext;)V

    return-object v0
.end method

.method public bridge synthetic handlePageException(Ljava/lang/Exception;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->handlePageException(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic handlePageException(Ljava/lang/Throwable;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->handlePageException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic include(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->include(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic include(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->include(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic initialize(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V
    .registers 8

    .line 45
    invoke-super/range {p0 .. p7}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->initialize(Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public bridge synthetic popBody()Ljavax/servlet/jsp/JspWriter;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popBody()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pushBody(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushBody(Ljava/io/Writer;)Ljavax/servlet/jsp/JspWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pushBody()Ljavax/servlet/jsp/tagext/BodyContent;
    .registers 2

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushBody()Ljavax/servlet/jsp/tagext/BodyContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic release()V
    .registers 1

    .line 45
    invoke-super {p0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->release()V

    return-void
.end method

.method public bridge synthetic removeAttribute(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeAttribute(Ljava/lang/String;I)V
    .registers 3

    .line 45
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->removeAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 45
    invoke-super {p0, p1, p2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    .line 45
    invoke-super {p0, p1, p2, p3}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
