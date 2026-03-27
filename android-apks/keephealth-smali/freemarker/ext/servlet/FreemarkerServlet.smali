.class public Lfreemarker/ext/servlet/FreemarkerServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "FreemarkerServlet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;,
        Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;,
        Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;,
        Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;,
        Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;,
        Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;,
        Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;,
        Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;
    }
.end annotation


# static fields
.field private static final ATTR_APPLICATION_MODEL:Ljava/lang/String; = ".freemarker.Application"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_JETTY_CP_TAGLIB_JAR_PATTERNS:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

.field private static final ATTR_JSP_TAGLIBS_MODEL:Ljava/lang/String; = ".freemarker.JspTaglibs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_REQUEST_MODEL:Ljava/lang/String; = ".freemarker.Request"

.field private static final ATTR_REQUEST_PARAMETERS_MODEL:Ljava/lang/String; = ".freemarker.RequestParameters"

.field private static final ATTR_SESSION_MODEL:Ljava/lang/String; = ".freemarker.Session"

.field private static final DEFAULT_CONTENT_TYPE:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

.field private static final DEPR_INITPARAM_DEBUG:Ljava/lang/String; = "debug"

.field private static final DEPR_INITPARAM_ENCODING:Ljava/lang/String; = "DefaultEncoding"

.field private static final DEPR_INITPARAM_OBJECT_WRAPPER:Ljava/lang/String; = "ObjectWrapper"

.field private static final DEPR_INITPARAM_TEMPLATE_DELAY:Ljava/lang/String; = "TemplateDelay"

.field private static final DEPR_INITPARAM_TEMPLATE_EXCEPTION_HANDLER:Ljava/lang/String; = "TemplateExceptionHandler"

.field private static final DEPR_INITPARAM_TEMPLATE_EXCEPTION_HANDLER_DEBUG:Ljava/lang/String; = "debug"

.field private static final DEPR_INITPARAM_TEMPLATE_EXCEPTION_HANDLER_HTML_DEBUG:Ljava/lang/String; = "htmlDebug"

.field private static final DEPR_INITPARAM_TEMPLATE_EXCEPTION_HANDLER_IGNORE:Ljava/lang/String; = "ignore"

.field private static final DEPR_INITPARAM_TEMPLATE_EXCEPTION_HANDLER_RETHROW:Ljava/lang/String; = "rethrow"

.field private static final DEPR_INITPARAM_WRAPPER_BEANS:Ljava/lang/String; = "beans"

.field private static final DEPR_INITPARAM_WRAPPER_JYTHON:Ljava/lang/String; = "jython"

.field private static final DEPR_INITPARAM_WRAPPER_SIMPLE:Ljava/lang/String; = "simple"

.field private static final EXPIRATION_DATE:Ljava/lang/String;

.field public static final INIT_PARAM_BUFFER_SIZE:Ljava/lang/String; = "BufferSize"

.field public static final INIT_PARAM_CLASSPATH_TLDS:Ljava/lang/String; = "ClasspathTlds"

.field public static final INIT_PARAM_CONTENT_TYPE:Ljava/lang/String; = "ContentType"

.field private static final INIT_PARAM_DEBUG:Ljava/lang/String; = "Debug"

.field public static final INIT_PARAM_EXCEPTION_ON_MISSING_TEMPLATE:Ljava/lang/String; = "ExceptionOnMissingTemplate"

.field public static final INIT_PARAM_META_INF_TLD_LOCATIONS:Ljava/lang/String; = "MetaInfTldSources"

.field public static final INIT_PARAM_NO_CACHE:Ljava/lang/String; = "NoCache"

.field public static final INIT_PARAM_OVERRIDE_RESPONSE_CONTENT_TYPE:Ljava/lang/String; = "OverrideResponseContentType"

.field public static final INIT_PARAM_OVERRIDE_RESPONSE_LOCALE:Ljava/lang/String; = "OverrideResponseLocale"

.field public static final INIT_PARAM_RESPONSE_CHARACTER_ENCODING:Ljava/lang/String; = "ResponseCharacterEncoding"

.field public static final INIT_PARAM_TEMPLATE_PATH:Ljava/lang/String; = "TemplatePath"

.field public static final INIT_PARAM_VALUE_ALWAYS:Ljava/lang/String; = "always"

.field public static final INIT_PARAM_VALUE_DO_NOT_SET:Ljava/lang/String; = "doNotSet"

.field public static final INIT_PARAM_VALUE_FORCE_PREFIX:Ljava/lang/String; = "force "

.field public static final INIT_PARAM_VALUE_FROM_TEMPLATE:Ljava/lang/String; = "fromTemplate"

.field public static final INIT_PARAM_VALUE_LEGACY:Ljava/lang/String; = "legacy"

.field public static final INIT_PARAM_VALUE_NEVER:Ljava/lang/String; = "never"

.field public static final INIT_PARAM_VALUE_WHEN_TEMPLATE_HAS_MIME_TYPE:Ljava/lang/String; = "whenTemplateHasMimeType"

.field public static final KEY_APPLICATION:Ljava/lang/String; = "Application"

.field public static final KEY_APPLICATION_PRIVATE:Ljava/lang/String; = "__FreeMarkerServlet.Application__"

.field public static final KEY_INCLUDE:Ljava/lang/String; = "include_page"

.field public static final KEY_JSP_TAGLIBS:Ljava/lang/String; = "JspTaglibs"

.field public static final KEY_REQUEST:Ljava/lang/String; = "Request"

.field public static final KEY_REQUEST_PARAMETERS:Ljava/lang/String; = "RequestParameters"

.field public static final KEY_REQUEST_PRIVATE:Ljava/lang/String; = "__FreeMarkerServlet.Request__"

.field public static final KEY_SESSION:Ljava/lang/String; = "Session"

.field private static final LOG:Lfreemarker/log/Logger;

.field private static final LOG_RT:Lfreemarker/log/Logger;

.field public static final META_INF_TLD_LOCATION_CLASSPATH:Ljava/lang/String; = "classpath"

.field public static final META_INF_TLD_LOCATION_CLEAR:Ljava/lang/String; = "clear"

.field public static final META_INF_TLD_LOCATION_WEB_INF_PER_LIB_JARS:Ljava/lang/String; = "webInfPerLibJars"

.field public static final SYSTEM_PROPERTY_CLASSPATH_TLDS:Ljava/lang/String; = "org.freemarker.jsp.classpathTlds"

.field public static final SYSTEM_PROPERTY_META_INF_TLD_SOURCES:Ljava/lang/String; = "org.freemarker.jsp.metaInfTldSources"

.field public static final serialVersionUID:J = -0x21dd63e17889c2afL


# instance fields
.field private bufferSize:Ljava/lang/Integer;

.field private classpathTlds:Ljava/util/List;

.field private config:Lfreemarker/template/Configuration;

.field private contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

.field protected debug:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private exceptionOnMissingTemplate:Z

.field private forcedResponseCharacterEncoding:Ljava/nio/charset/Charset;

.field private lazyInitFieldsLock:Ljava/lang/Object;

.field private metaInfTldSources:Ljava/util/List;

.field private noCache:Z

.field private objectWrapperMismatchWarnLogged:Z

.field private overrideResponseContentType:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

.field private overrideResponseLocale:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

.field private responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

.field private servletContextModel:Lfreemarker/ext/servlet/ServletContextHashModel;

.field private taglibFactory:Lfreemarker/ext/jsp/TaglibFactory;

.field private templatePath:Ljava/lang/String;

.field private wrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 321
    const-string v0, "freemarker.servlet"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    .line 322
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG_RT:Lfreemarker/log/Logger;

    .line 414
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    const-string v1, "text/html"

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->DEFAULT_CONTENT_TYPE:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    .line 492
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 493
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 494
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 498
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->EXPIRATION_DATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 320
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 520
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getDefaultOverrideResponseContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    move-result-object v1

    .line 519
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->initParamValueToEnum(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseContentType:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    .line 521
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    .line 524
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;->ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseLocale:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    .line 528
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->lazyInitFieldsLock:Ljava/lang/Object;

    return-void
.end method

.method private getTemplateSpecificContentType(Lfreemarker/template/Template;)Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;
    .registers 5

    .line 920
    const-string v0, "content_type"

    invoke-virtual {p1, v0}, Lfreemarker/template/Template;->getCustomAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 923
    new-instance p1, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 926
    :cond_12
    invoke-virtual {p1}, Lfreemarker/template/Template;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/OutputFormat;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 928
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v2, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-ne v1, v2, :cond_44

    .line 930
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getTemplateSpecificOutputEncoding(Lfreemarker/template/Template;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 932
    :cond_44
    new-instance p1, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_4b
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTemplateSpecificOutputEncoding(Lfreemarker/template/Template;)Ljava/lang/String;
    .registers 4

    .line 914
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 915
    :cond_8
    invoke-virtual {p1}, Lfreemarker/template/Template;->getOutputEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_f

    goto :goto_13

    .line 916
    :cond_f
    invoke-virtual {p1}, Lfreemarker/template/Template;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method private initParamValueToEnum(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)TT;"
        }
    .end annotation

    .line 1594
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2e

    aget-object v3, p2, v2

    .line 1595
    invoke-interface {v3}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;->getInitParamValue()Ljava/lang/String;

    move-result-object v4

    .line 1596
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "}"

    .line 1597
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "${"

    .line 1598
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1597
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2d
    :goto_2d
    return-object v3

    .line 1603
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    const-string p1, " is not a one of the enumeration values: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    array-length p1, p2

    const/4 v2, 0x1

    move v3, v1

    :goto_42
    if-ge v3, p1, :cond_5d

    aget-object v4, p2, v3

    if-nez v2, :cond_4e

    .line 1609
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_4e
    move v2, v1

    .line 1613
    :goto_4f
    invoke-interface {v4}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;->getInitParamValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1615
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initialize()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;,
            Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;,
            Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;
        }
    .end annotation

    .line 555
    const-string v0, "template_exception_handler"

    const-string v1, "template_update_delay"

    const-string v2, "default_encoding"

    const-string v3, "TemplateDelay"

    const-string v4, "DefaultEncoding"

    const-string v5, "TemplateExceptionHandler"

    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createConfiguration()Lfreemarker/template/Configuration;

    move-result-object v6

    iput-object v6, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    .line 558
    const-string v6, "incompatible_improvements"

    invoke-virtual {p0, v6}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 561
    :try_start_1a
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v8, v6, v7}, Lfreemarker/template/Configuration;->setSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception v0

    .line 563
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;

    invoke-direct {v1, v6, v7, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 568
    :cond_27
    :goto_27
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v7}, Lfreemarker/template/Configuration;->isTemplateExceptionHandlerExplicitlySet()Z

    move-result v7

    if-nez v7, :cond_36

    .line 569
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    sget-object v8, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v7, v8}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 571
    :cond_36
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v7}, Lfreemarker/template/Configuration;->isLogTemplateExceptionsExplicitlySet()Z

    move-result v7

    if-nez v7, :cond_44

    .line 572
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lfreemarker/template/Configuration;->setLogTemplateExceptions(Z)V

    .line 575
    :cond_44
    sget-object v7, Lfreemarker/ext/servlet/FreemarkerServlet;->DEFAULT_CONTENT_TYPE:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    iput-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    .line 578
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v7

    iput-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    .line 579
    sget-object v7, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v7}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Using object wrapper: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 582
    :cond_6a
    iget-object v7, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {v7, v8}, Lfreemarker/template/Configuration;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 585
    const-string v7, "TemplatePath"

    invoke-virtual {p0, v7}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->templatePath:Ljava/lang/String;

    if-nez v8, :cond_87

    .line 586
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v8}, Lfreemarker/template/Configuration;->isTemplateLoaderExplicitlySet()Z

    move-result v8

    if-nez v8, :cond_87

    .line 587
    const-string v8, "class://"

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->templatePath:Ljava/lang/String;

    .line 589
    :cond_87
    iget-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->templatePath:Ljava/lang/String;

    if-eqz v8, :cond_9e

    .line 591
    :try_start_8b
    iget-object v9, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {p0, v8}, Lfreemarker/ext/servlet/FreemarkerServlet;->createTemplateLoader(Ljava/lang/String;)Lfreemarker/cache/TemplateLoader;

    move-result-object v8

    invoke-virtual {v9, v8}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_95

    goto :goto_9e

    :catch_95
    move-exception v0

    .line 593
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->templatePath:Ljava/lang/String;

    invoke-direct {v1, v7, v2, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 597
    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createDefaultMetaInfTldSources()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->metaInfTldSources:Ljava/util/List;

    .line 598
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createDefaultClassPathTlds()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->classpathTlds:Ljava/util/List;

    .line 601
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v8

    invoke-interface {v8}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v8

    .line 602
    :catch_b2
    :cond_b2
    :goto_b2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    const-string v10, "ContentType"

    if-eqz v9, :cond_29f

    .line 603
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 604
    invoke-virtual {p0, v9}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_297

    if-eqz v11, :cond_278

    .line 617
    :try_start_c8
    const-string v12, "ObjectWrapper"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b2

    const-string v12, "object_wrapper"

    .line 618
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b2

    .line 619
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b2

    .line 620
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e5

    goto :goto_b2

    .line 622
    :cond_e5
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 623
    invoke-virtual {p0, v2}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f7

    .line 627
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v10, v11}, Lfreemarker/template/Configuration;->setDefaultEncoding(Ljava/lang/String;)V

    goto :goto_b2

    .line 624
    :cond_f7
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;

    invoke-direct {v0, v2, v4}, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_fd
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_119

    .line 629
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_107
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException; {:try_start_c8 .. :try_end_107} :catch_276
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_107} :catch_26f

    if-nez v10, :cond_113

    .line 634
    :try_start_109
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Lfreemarker/template/Configuration;->setTemplateUpdateDelay(I)V
    :try_end_112
    .catch Ljava/lang/NumberFormatException; {:try_start_109 .. :try_end_112} :catch_b2
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException; {:try_start_109 .. :try_end_112} :catch_276
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_26f

    goto :goto_b2

    .line 630
    :cond_113
    :try_start_113
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;

    invoke-direct {v0, v1, v3}, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_119
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_11d
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException; {:try_start_113 .. :try_end_11d} :catch_276
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_11d} :catch_26f

    const-string v13, "debug"

    if-eqz v12, :cond_177

    .line 639
    :try_start_121
    invoke-virtual {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_171

    .line 644
    const-string v10, "rethrow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_138

    .line 645
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->RETHROW_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_b2

    .line 646
    :cond_138
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_147

    .line 647
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_b2

    .line 648
    :cond_147
    const-string v10, "htmlDebug"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_158

    .line 649
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_b2

    .line 650
    :cond_158
    const-string v10, "ignore"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_169

    .line 651
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    sget-object v12, Lfreemarker/template/TemplateExceptionHandler;->IGNORE_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {v10, v12}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_b2

    .line 653
    :cond_169
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;

    const-string v1, "Not one of the supported values."

    invoke-direct {v0, v5, v11, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_171
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;

    invoke-direct {v1, v0, v5}, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_177
    const-string v12, "NoCache"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_187

    .line 657
    invoke-static {v11}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->noCache:Z

    goto/16 :goto_b2

    .line 658
    :cond_187
    const-string v12, "BufferSize"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19b

    .line 659
    invoke-direct {p0, v11}, Lfreemarker/ext/servlet/FreemarkerServlet;->parseSize(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->bufferSize:Ljava/lang/Integer;

    goto/16 :goto_b2

    .line 660
    :cond_19b
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_19f
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException; {:try_start_121 .. :try_end_19f} :catch_276
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_19f} :catch_26f

    const-string v14, "Debug"

    if-eqz v12, :cond_1b7

    .line 661
    :try_start_1a3
    invoke-virtual {p0, v14}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1b1

    .line 664
    invoke-static {v11}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->debug:Z

    goto/16 :goto_b2

    .line 662
    :cond_1b1
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;

    invoke-direct {v0, v14, v13}, Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1b7
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 666
    invoke-static {v11}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->debug:Z

    goto/16 :goto_b2

    .line 667
    :cond_1c5
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d4

    .line 668
    new-instance v10, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    invoke-direct {v10, v11}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    goto/16 :goto_b2

    .line 669
    :cond_1d4
    const-string v10, "OverrideResponseContentType"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ea

    .line 670
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->initParamValueToEnum(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseContentType:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    goto/16 :goto_b2

    .line 671
    :cond_1ea
    const-string v10, "ResponseCharacterEncoding"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_213

    .line 672
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->initParamValueToEnum(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    .line 673
    sget-object v12, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-ne v10, v12, :cond_b2

    const/4 v10, 0x6

    .line 674
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 675
    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->forcedResponseCharacterEncoding:Ljava/nio/charset/Charset;

    goto/16 :goto_b2

    .line 677
    :cond_213
    const-string v10, "OverrideResponseLocale"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_229

    .line 678
    invoke-static {}, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;->values()[Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    move-result-object v10

    invoke-direct {p0, v11, v10}, Lfreemarker/ext/servlet/FreemarkerServlet;->initParamValueToEnum(Ljava/lang/String;[Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;)Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;

    move-result-object v10

    check-cast v10, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseLocale:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    goto/16 :goto_b2

    .line 679
    :cond_229
    const-string v10, "ExceptionOnMissingTemplate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_239

    .line 680
    invoke-static {v11}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->exceptionOnMissingTemplate:Z

    goto/16 :goto_b2

    .line 681
    :cond_239
    const-string v10, "MetaInfTldSources"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_249

    .line 682
    invoke-direct {p0, v11}, Lfreemarker/ext/servlet/FreemarkerServlet;->parseAsMetaInfTldLocations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->metaInfTldSources:Ljava/util/List;

    goto/16 :goto_b2

    .line 683
    :cond_249
    const-string v10, "ClasspathTlds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_268

    .line 684
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 685
    iget-object v12, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->classpathTlds:Ljava/util/List;

    if-eqz v12, :cond_25d

    .line 686
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 688
    :cond_25d
    invoke-static {v11}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 689
    iput-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->classpathTlds:Ljava/util/List;

    goto/16 :goto_b2

    .line 691
    :cond_268
    iget-object v10, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v10, v9, v11}, Lfreemarker/template/Configuration;->setSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26d
    .catch Lfreemarker/ext/servlet/FreemarkerServlet$ConflictingInitParamsException; {:try_start_1a3 .. :try_end_26d} :catch_276
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_26d} :catch_26f

    goto/16 :goto_b2

    :catch_26f
    move-exception v0

    .line 696
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;

    invoke-direct {v1, v9, v11, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_276
    move-exception v0

    .line 694
    throw v0

    .line 611
    :cond_278
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init-param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-static {v9}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without param-value. Maybe the web.xml is not well-formed?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_297
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;

    const-string v1, "init-param without param-name. Maybe the web.xml is not well-formed?"

    invoke-direct {v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet$MalformedWebXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_29f
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->containsCharset:Z
    invoke-static {v0}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$000(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-ne v0, v1, :cond_2ae

    goto :goto_2c1

    .line 701
    :cond_2ae
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->httpHeaderValue:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$100(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You can\'t specify the charset in the content type, because the \"ResponseCharacterEncoding\" init-param isn\'t set to \"legacy\"."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v1, v2}, Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2c1
    :goto_2c1
    return-void
.end method

.method private logWarnOnObjectWrapperMismatch()V
    .registers 4

    .line 962
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    if-eq v0, v1, :cond_54

    iget-boolean v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->objectWrapperMismatchWarnLogged:Z

    if-nez v0, :cond_54

    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 964
    monitor-enter p0

    .line 965
    :try_start_17
    iget-boolean v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->objectWrapperMismatchWarnLogged:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 967
    iput-boolean v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->objectWrapperMismatchWarnLogged:Z

    .line 969
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_51

    if-eqz v1, :cond_54

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wrapper != config.getObjectWrapper(); possibly the result of incorrect extension of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 974
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    goto :goto_54

    :catchall_51
    move-exception v0

    .line 969
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :goto_54
    return-void
.end method

.method private newServletExceptionWithFreeMarkerLogging(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 940
    instance-of v0, p2, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_a

    .line 943
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG_RT:Lfreemarker/log/Logger;

    invoke-virtual {v0, p1, p2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 945
    :cond_a
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0, p1, p2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 948
    :goto_f
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1, p2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    :try_start_14
    invoke-virtual {v0, p2}, Ljavax/servlet/ServletException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_17

    .line 956
    :catch_17
    throw v0
.end method

.method private parseAsMetaInfTldLocations(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 711
    invoke-static {p1}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 715
    const-string v3, "webInfPerLibJars"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 716
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;->INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;

    goto :goto_90

    .line 717
    :cond_20
    const-string v3, "classpath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_86

    const/16 v3, 0x9

    .line 718
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_47

    .line 720
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;

    const-string v3, ".*"

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_90

    .line 721
    :cond_47
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x1

    .line 722
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_69

    .line 727
    new-instance v3, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v3, v2}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;-><init>(Ljava/util/regex/Pattern;)V

    move-object v2, v3

    goto :goto_90

    .line 724
    :cond_69
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Empty regular expression after \"classpath:\""

    invoke-direct {p1, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 729
    :cond_71
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid \"classpath\" value syntax: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 732
    :cond_86
    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 733
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;->INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;

    :goto_90
    if-nez v1, :cond_97

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 740
    :cond_97
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 735
    :cond_9c
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item has no recognized source type prefix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_b1
    return-object v1
.end method

.method private parseSize(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 1491
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_15

    const/16 v3, 0x39

    if-gt v2, v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    :goto_18
    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 1497
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1499
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8d

    const-string v3, "B"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_8d

    .line 1503
    :cond_41
    const-string v1, "K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "KB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "KIB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_8b

    .line 1505
    :cond_5a
    const-string v1, "M"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    const-string v1, "MB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    const-string v1, "MIB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    goto :goto_88

    .line 1508
    :cond_73
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown unit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_88
    :goto_88
    const/high16 v1, 0x100000

    goto :goto_8d

    :cond_8b
    :goto_8b
    const/16 v1, 0x400

    :cond_8d
    :goto_8d
    int-to-long v2, v2

    int-to-long v0, v1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_a7

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v2, v0

    if-gtz p1, :cond_9f

    long-to-int p1, v2

    return p1

    .line 1516
    :cond_9f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size can\'t bigger than 2147483647"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1513
    :cond_a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size can\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private process(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->preprocessRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 784
    :cond_7
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->bufferSize:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_23

    .line 786
    :try_start_11
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->bufferSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setBufferSize(I)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 788
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    const-string v2, "Can\'t set buffer size any more,"

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    :cond_23
    :goto_23
    invoke-virtual {p0, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->requestUrlToTemplatePath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 794
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    const-string v3, "."

    if-eqz v2, :cond_4b

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Requested template "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 798
    :cond_4b
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 799
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseLocale:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    sget-object v4, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;->NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseLocale;

    if-eq v2, v4, :cond_5b

    .line 800
    :cond_57
    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->deduceLocale(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/util/Locale;

    move-result-object v1

    .line 805
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v2, v0, v1}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v0
    :try_end_61
    .catch Lfreemarker/template/TemplateNotFoundException; {:try_start_5b .. :try_end_61} :catch_196
    .catch Lfreemarker/core/ParseException; {:try_start_5b .. :try_end_61} :catch_179
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_61} :catch_15c

    .line 827
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseContentType:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    sget-object v2, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;->NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    if-eq v1, v2, :cond_d2

    .line 828
    :cond_6d
    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getTemplateSpecificContentType(Lfreemarker/template/Template;)Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 831
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-eq v2, v3, :cond_7e

    .line 833
    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->httpHeaderValue:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$100(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Ljava/lang/String;

    move-result-object v2

    goto :goto_82

    .line 834
    :cond_7e
    # invokes: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->getMimeType()Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$200(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Ljava/lang/String;

    move-result-object v2

    .line 831
    :goto_82
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 835
    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->containsCharset:Z
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$000(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Z

    move-result v1

    goto :goto_d3

    .line 836
    :cond_8a
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->overrideResponseContentType:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    sget-object v2, Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;->ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$OverrideResponseContentType;

    if-ne v1, v2, :cond_d2

    .line 838
    :cond_96
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v2, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-ne v1, v2, :cond_c9

    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->containsCharset:Z
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$000(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    .line 841
    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->httpHeaderValue:Ljava/lang/String;
    invoke-static {v2}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$100(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getTemplateSpecificOutputEncoding(Lfreemarker/template/Template;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    goto :goto_d2

    .line 843
    :cond_c9
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->contentType:Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;

    # getter for: Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->httpHeaderValue:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;->access$100(Lfreemarker/ext/servlet/FreemarkerServlet$ContentType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    const/4 v1, 0x0

    .line 848
    :goto_d3
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-eq v2, v3, :cond_f8

    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-eq v2, v3, :cond_f8

    .line 851
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-eq v2, v3, :cond_ef

    if-nez v1, :cond_f8

    .line 853
    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getTemplateSpecificOutputEncoding(Lfreemarker/template/Template;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    goto :goto_f8

    .line 856
    :cond_ef
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->forcedResponseCharacterEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 860
    :cond_f8
    :goto_f8
    invoke-direct {p0, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->setBrowserCachingPolicy(Ljavax/servlet/http/HttpServletResponse;)V

    .line 862
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 864
    :try_start_ff
    invoke-direct {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->logWarnOnObjectWrapperMismatch()V

    .line 866
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {p0, v2, v1, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->createModel(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 869
    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->preTemplateProcess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/Template;Lfreemarker/template/TemplateModel;)Z

    move-result v2
    :try_end_10c
    .catch Lfreemarker/template/TemplateException; {:try_start_ff .. :try_end_10c} :catch_132

    if-eqz v2, :cond_131

    .line 872
    :try_start_10e
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/Environment;

    move-result-object v2

    .line 873
    iget-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->responseCharacterEncoding:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    sget-object v4, Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$ResponseCharacterEncoding;

    if-eq v3, v4, :cond_125

    .line 874
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_125

    .line 876
    invoke-virtual {v2, v3}, Lfreemarker/core/Environment;->setOutputEncoding(Ljava/lang/String;)V

    .line 879
    :cond_125
    invoke-virtual {p0, v2, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->processEnvironment(Lfreemarker/core/Environment;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_128
    .catchall {:try_start_10e .. :try_end_128} :catchall_12c

    .line 882
    :try_start_128
    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->postTemplateProcess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/Template;Lfreemarker/template/TemplateModel;)V

    goto :goto_131

    :catchall_12c
    move-exception v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->postTemplateProcess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/Template;Lfreemarker/template/TemplateModel;)V

    .line 883
    throw v2
    :try_end_131
    .catch Lfreemarker/template/TemplateException; {:try_start_128 .. :try_end_131} :catch_132

    :cond_131
    :goto_131
    return-void

    :catch_132
    move-exception p1

    .line 886
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    .line 888
    sget-object v1, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    if-eq v0, v1, :cond_152

    sget-object v1, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    if-eq v0, v1, :cond_152

    .line 889
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_155

    .line 890
    :cond_152
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 892
    :cond_155
    const-string p2, "Error executing FreeMarker template"

    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->newServletExceptionWithFreeMarkerLogging(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_15c
    move-exception p1

    .line 822
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error when loading template "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 822
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->newServletExceptionWithFreeMarkerLogging(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_179
    move-exception p1

    .line 819
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Parsing error with template "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 819
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->newServletExceptionWithFreeMarkerLogging(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1

    :catch_196
    move-exception p1

    .line 807
    iget-boolean v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->exceptionOnMissingTemplate:Z

    if-nez v1, :cond_1c5

    .line 811
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Responding HTTP 404 \"Not found\" for missing template "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {v1, v0, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1bd
    const/16 p1, 0x194

    .line 815
    const-string v0, "Page template not found"

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void

    .line 808
    :cond_1c5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Template not found for name "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 808
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/servlet/FreemarkerServlet;->newServletExceptionWithFreeMarkerLogging(Ljava/lang/String;Ljava/lang/Throwable;)Ljavax/servlet/ServletException;

    move-result-object p1

    throw p1
.end method

.method private setBrowserCachingPolicy(Ljavax/servlet/http/HttpServletResponse;)V
    .registers 4

    .line 1477
    iget-boolean v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->noCache:Z

    if-eqz v0, :cond_19

    .line 1479
    const-string v0, "Cache-Control"

    const-string v1, "no-store, no-cache, must-revalidate, post-check=0, pre-check=0"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v0, "Expires"

    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->EXPIRATION_DATE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method


# virtual methods
.method protected createConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 1254
    new-instance v0, Lfreemarker/template/Configuration;

    invoke-direct {v0}, Lfreemarker/template/Configuration;-><init>()V

    return-object v0
.end method

.method protected createDefaultClassPathTlds()Ljava/util/List;
    .registers 2

    .line 1159
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_CLASSPATH_TLDS:Ljava/util/List;

    return-object v0
.end method

.method protected createDefaultMetaInfTldSources()Ljava/util/List;
    .registers 2

    .line 1174
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_META_INF_TLD_SOURCES:Ljava/util/List;

    return-object v0
.end method

.method protected createDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 1344
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected createModel(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lfreemarker/template/TemplateModel;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1002
    :try_start_0
    new-instance v0, Lfreemarker/ext/servlet/AllHttpScopesHashModel;

    invoke-direct {v0, p1, p2, p3}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;-><init>(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;Ljavax/servlet/http/HttpServletRequest;)V

    .line 1007
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->lazyInitFieldsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_8} :catch_b2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_ab

    .line 1008
    :try_start_8
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->servletContextModel:Lfreemarker/ext/servlet/ServletContextHashModel;

    if-nez v2, :cond_27

    .line 1009
    new-instance v2, Lfreemarker/ext/servlet/ServletContextHashModel;

    invoke-direct {v2, p0, p1}, Lfreemarker/ext/servlet/ServletContextHashModel;-><init>(Ljavax/servlet/GenericServlet;Lfreemarker/template/ObjectWrapper;)V

    .line 1010
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->createTaglibFactory(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/TaglibFactory;

    move-result-object v3

    .line 1013
    const-string v4, ".freemarker.Application"

    invoke-interface {p2, v4, v2}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    const-string v4, ".freemarker.JspTaglibs"

    invoke-interface {p2, v4, v3}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p0, p3, p4}, Lfreemarker/ext/servlet/FreemarkerServlet;->initializeServletContext(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 1018
    iput-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->taglibFactory:Lfreemarker/ext/jsp/TaglibFactory;

    .line 1019
    iput-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->servletContextModel:Lfreemarker/ext/servlet/ServletContextHashModel;

    goto :goto_29

    .line 1022
    :cond_27
    iget-object v3, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->taglibFactory:Lfreemarker/ext/jsp/TaglibFactory;

    .line 1024
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_a8

    .line 1026
    :try_start_2a
    const-string p2, "Application"

    invoke-virtual {v0, p2, v2}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1027
    const-string p2, "__FreeMarkerServlet.Application__"

    invoke-virtual {v0, p2, v2}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1028
    const-string p2, "JspTaglibs"

    invoke-virtual {v0, p2, v3}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    const/4 p2, 0x0

    .line 1031
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    if-eqz p2, :cond_59

    .line 1033
    const-string v1, ".freemarker.Session"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/servlet/HttpSessionHashModel;

    if-eqz v1, :cond_50

    .line 1034
    invoke-virtual {v1, p2}, Lfreemarker/ext/servlet/HttpSessionHashModel;->isOrphaned(Ljavax/servlet/http/HttpSession;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1035
    :cond_50
    new-instance v1, Lfreemarker/ext/servlet/HttpSessionHashModel;

    invoke-direct {v1, p2, p1}, Lfreemarker/ext/servlet/HttpSessionHashModel;-><init>(Ljavax/servlet/http/HttpSession;Lfreemarker/template/ObjectWrapper;)V

    .line 1036
    invoke-virtual {p0, p3, p4, v1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->initializeSessionAndInstallModel(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/HttpSessionHashModel;Ljavax/servlet/http/HttpSession;)V

    goto :goto_5e

    .line 1040
    :cond_59
    new-instance v1, Lfreemarker/ext/servlet/HttpSessionHashModel;

    invoke-direct {v1, p0, p3, p4, p1}, Lfreemarker/ext/servlet/HttpSessionHashModel;-><init>(Lfreemarker/ext/servlet/FreemarkerServlet;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V

    .line 1042
    :cond_5e
    :goto_5e
    const-string p2, "Session"

    invoke-virtual {v0, p2, v1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1045
    const-string p2, ".freemarker.Request"

    .line 1046
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    if-eqz p2, :cond_73

    .line 1047
    invoke-virtual {p2}, Lfreemarker/ext/servlet/HttpRequestHashModel;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    if-eq v1, p3, :cond_86

    .line 1048
    :cond_73
    new-instance p2, Lfreemarker/ext/servlet/HttpRequestHashModel;

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/ext/servlet/HttpRequestHashModel;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/ObjectWrapper;)V

    .line 1049
    const-string p1, ".freemarker.Request"

    invoke-interface {p3, p1, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    const-string p1, ".freemarker.RequestParameters"

    .line 1052
    invoke-virtual {p0, p3}, Lfreemarker/ext/servlet/FreemarkerServlet;->createRequestParametersHashModel(Ljavax/servlet/http/HttpServletRequest;)Lfreemarker/ext/servlet/HttpRequestParametersHashModel;

    move-result-object v1

    .line 1050
    invoke-interface {p3, p1, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    :cond_86
    const-string p1, "Request"

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1055
    const-string p1, "include_page"

    new-instance v1, Lfreemarker/ext/servlet/IncludePage;

    invoke-direct {v1, p3, p4}, Lfreemarker/ext/servlet/IncludePage;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1056
    const-string p1, "__FreeMarkerServlet.Request__"

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 1059
    const-string p1, ".freemarker.RequestParameters"

    .line 1060
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;

    .line 1062
    const-string p2, "RequestParameters"

    invoke-virtual {v0, p2, p1}, Lfreemarker/ext/servlet/AllHttpScopesHashModel;->putUnlistedModel(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    :try_end_a7
    .catch Ljavax/servlet/ServletException; {:try_start_2a .. :try_end_a7} :catch_b2
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_a7} :catch_ab

    return-object v0

    :catchall_a8
    move-exception p1

    .line 1024
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw p1
    :try_end_ab
    .catch Ljavax/servlet/ServletException; {:try_start_aa .. :try_end_ab} :catch_b2
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ab} :catch_ab

    :catch_ab
    move-exception p1

    .line 1067
    new-instance p2, Lfreemarker/template/TemplateModelException;

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_b2
    move-exception p1

    .line 1065
    new-instance p2, Lfreemarker/template/TemplateModelException;

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method protected createObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 4

    .line 1283
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    const-string v1, "ObjectWrapper"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    const-string v1, "object_wrapper"

    if-eqz v0, :cond_6d

    .line 1285
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_65

    .line 1290
    const-string v1, "beans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1291
    sget-object v0, Lfreemarker/template/ObjectWrapper;->BEANS_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object v0

    .line 1293
    :cond_1f
    const-string v1, "simple"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1294
    sget-object v0, Lfreemarker/template/ObjectWrapper;->SIMPLE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object v0

    .line 1296
    :cond_2a
    const-string v1, "jython"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1299
    :try_start_32
    const-string v0, "freemarker.ext.jython.JythonWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/ObjectWrapper;
    :try_end_3e
    .catch Ljava/lang/InstantiationException; {:try_start_32 .. :try_end_3e} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_3e} :catch_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_3e} :catch_3f

    return-object v0

    :catch_3f
    move-exception v0

    .line 1306
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4a
    move-exception v0

    .line 1304
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_55
    move-exception v0

    .line 1302
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    :cond_60
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 1286
    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Conflicting init-params: object_wrapper and ObjectWrapper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_6d
    invoke-virtual {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_87

    .line 1313
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->isObjectWrapperExplicitlySet()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1314
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->createDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_80
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    .line 1320
    :cond_87
    :try_start_87
    iget-object v2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v2, v1, v0}, Lfreemarker/template/Configuration;->setSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Lfreemarker/template/TemplateException; {:try_start_87 .. :try_end_8c} :catch_93

    .line 1324
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0

    :catch_93
    move-exception v0

    .line 1322
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set object_wrapper"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createRequestParametersHashModel(Ljavax/servlet/http/HttpServletRequest;)Lfreemarker/ext/servlet/HttpRequestParametersHashModel;
    .registers 3

    .line 1367
    new-instance v0, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;

    invoke-direct {v0, p1}, Lfreemarker/ext/servlet/HttpRequestParametersHashModel;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected createTaglibFactory(Lfreemarker/template/ObjectWrapper;Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/TaglibFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1080
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {v0, p2}, Lfreemarker/ext/jsp/TaglibFactory;-><init>(Ljavax/servlet/ServletContext;)V

    .line 1082
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    .line 1085
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->metaInfTldSources:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 1088
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1091
    :cond_14
    const-string v1, "org.freemarker.jsp.metaInfTldSources"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1094
    :try_start_1d
    invoke-direct {p0, v1}, Lfreemarker/ext/servlet/FreemarkerServlet;->parseAsMetaInfTldLocations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1096
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception p1

    .line 1099
    new-instance p2, Lfreemarker/template/TemplateModelException;

    const-string v0, "Failed to parse system property \"org.freemarker.jsp.metaInfTldSources\""

    invoke-direct {p2, v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 1106
    :cond_30
    :goto_30
    :try_start_30
    const-string v1, "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

    invoke-interface {p2, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_47

    .line 1107
    invoke-static {p2}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedPatterns(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception p2

    .line 1109
    sget-object v1, Lfreemarker/ext/servlet/FreemarkerServlet;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Failed to parse application context attribute \"org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern\" - it will be ignored"

    invoke-virtual {v1, v3, p2}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    move-object p2, v2

    :goto_48
    if-eqz p2, :cond_63

    .line 1113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1114
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 1115
    new-instance v3, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;

    invoke-direct {v3, v1}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 1119
    :cond_63
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->setMetaInfTldSources(Ljava/util/List;)V

    .line 1123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    iget-object p2, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->classpathTlds:Ljava/util/List;

    if-eqz p2, :cond_72

    .line 1125
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1128
    :cond_72
    const-string p2, "org.freemarker.jsp.classpathTlds"

    invoke-static {p2, v2}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8d

    .line 1131
    :try_start_7a
    invoke-static {p2}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8d

    .line 1133
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_83
    .catch Ljava/text/ParseException; {:try_start_7a .. :try_end_83} :catch_84

    goto :goto_8d

    :catch_84
    move-exception p1

    .line 1136
    new-instance p2, Lfreemarker/template/TemplateModelException;

    const-string v0, "Failed to parse system property \"org.freemarker.jsp.classpathTlds\""

    invoke-direct {p2, v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 1141
    :cond_8d
    :goto_8d
    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->setClasspathTlds(Ljava/util/List;)V

    return-object v0
.end method

.method protected createTemplateLoader(Ljava/lang/String;)Lfreemarker/cache/TemplateLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lfreemarker/ext/servlet/InitParamParser;->createTemplateLoader(Ljava/lang/String;Lfreemarker/template/Configuration;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;

    move-result-object p1

    return-object p1
.end method

.method protected deduceLocale(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/util/Locale;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 994
    iget-object p1, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->process(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->process(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method protected getConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 1458
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->config:Lfreemarker/template/Configuration;

    return-object v0
.end method

.method protected getDefaultOverrideResponseContentType()Ljava/lang/String;
    .registers 2

    .line 1469
    const-string v0, "always"

    return-object v0
.end method

.method protected getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 1352
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->wrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method protected final getTemplatePath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1363
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet;->templatePath:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 545
    :try_start_0
    invoke-direct {p0}, Lfreemarker/ext/servlet/FreemarkerServlet;->initialize()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 549
    new-instance v1, Ljavax/servlet/ServletException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while initializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " servlet; see cause exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected initializeServletContext(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected initializeSession(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method initializeSessionAndInstallModel(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/ext/servlet/HttpSessionHashModel;Ljavax/servlet/http/HttpSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    const-string v0, ".freemarker.Session"

    invoke-interface {p4, v0, p3}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/servlet/FreemarkerServlet;->initializeSession(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method protected postTemplateProcess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/Template;Lfreemarker/template/TemplateModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected preTemplateProcess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lfreemarker/template/Template;Lfreemarker/template/TemplateModel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected preprocessRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected processEnvironment(Lfreemarker/core/Environment;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    invoke-virtual {p1}, Lfreemarker/core/Environment;->process()V

    return-void
.end method

.method protected requestUrlToTemplatePath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1203
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1207
    const-string v1, "javax.servlet.include.path_info"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, p1

    :goto_16
    return-object v0

    .line 1213
    :cond_17
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    .line 1215
    :cond_1e
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    return-object p1

    .line 1218
    :cond_25
    const-string p1, ""

    return-object p1
.end method

.method protected setConfigurationDefaults()V
    .registers 1

    return-void
.end method
