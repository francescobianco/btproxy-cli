.class Lfreemarker/ext/dom/JaxenXPathSupport;
.super Ljava/lang/Object;
.source "JaxenXPathSupport.java"

# interfaces
.implements Lfreemarker/ext/dom/XPathSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/dom/JaxenXPathSupport$FmEntityResolver;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAYLIST:Ljava/util/ArrayList;

.field private static final FM_DOM_NAVIAGOTOR_CACHED_DOM:Lfreemarker/core/CustomAttribute;

.field private static final FM_DOM_NAVIGATOR:Lorg/jaxen/Navigator;

.field private static final FM_FUNCTION_CONTEXT:Lorg/jaxen/FunctionContext;

.field private static final FM_VARIABLE_CONTEXT:Lorg/jaxen/VariableContext;

.field private static final XPATH_CACHE_ATTR:Lfreemarker/core/CustomAttribute;

.field private static final customNamespaceContext:Lorg/jaxen/NamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Lfreemarker/ext/dom/JaxenXPathSupport$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/ext/dom/JaxenXPathSupport$1;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->XPATH_CACHE_ATTR:Lfreemarker/core/CustomAttribute;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->EMPTY_ARRAYLIST:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lfreemarker/ext/dom/JaxenXPathSupport$2;

    invoke-direct {v0}, Lfreemarker/ext/dom/JaxenXPathSupport$2;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->customNamespaceContext:Lorg/jaxen/NamespaceContext;

    .line 122
    new-instance v0, Lfreemarker/ext/dom/JaxenXPathSupport$3;

    invoke-direct {v0}, Lfreemarker/ext/dom/JaxenXPathSupport$3;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_VARIABLE_CONTEXT:Lorg/jaxen/VariableContext;

    .line 150
    new-instance v0, Lfreemarker/ext/dom/JaxenXPathSupport$4;

    invoke-direct {v0}, Lfreemarker/ext/dom/JaxenXPathSupport$4;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_FUNCTION_CONTEXT:Lorg/jaxen/FunctionContext;

    .line 165
    new-instance v0, Lfreemarker/core/CustomAttribute;

    invoke-direct {v0, v1}, Lfreemarker/core/CustomAttribute;-><init>(I)V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIAGOTOR_CACHED_DOM:Lfreemarker/core/CustomAttribute;

    .line 168
    new-instance v0, Lfreemarker/ext/dom/JaxenXPathSupport$5;

    invoke-direct {v0}, Lfreemarker/ext/dom/JaxenXPathSupport$5;-><init>()V

    sput-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIGATOR:Lorg/jaxen/Navigator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lfreemarker/core/CustomAttribute;
    .registers 1

    .line 66
    sget-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIAGOTOR_CACHED_DOM:Lfreemarker/core/CustomAttribute;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Lfreemarker/template/Template;)Lorg/xml/sax/InputSource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lfreemarker/ext/dom/JaxenXPathSupport;->createInputSource(Ljava/lang/String;Lfreemarker/template/Template;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method private static createInputSource(Ljava/lang/String;Lfreemarker/template/Template;)Lorg/xml/sax/InputSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 211
    :try_start_5
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p1, v1, v0}, Lfreemarker/template/Template;->process(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_a
    .catch Lfreemarker/template/TemplateException; {:try_start_5 .. :try_end_a} :catch_26

    .line 215
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 216
    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 218
    new-instance p0, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    return-object v1

    :catch_26
    move-exception p0

    .line 213
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method static getTemplate(Ljava/lang/String;)Lfreemarker/template/Template;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Template;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 198
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/template/Configuration;->getEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_1a
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2f

    .line 202
    const-string v2, ""

    goto :goto_35

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 203
    :goto_35
    invoke-virtual {v0, v2, p0}, Lfreemarker/core/Environment;->toFullTemplateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v2

    invoke-virtual {v0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v2, p0, v0, v1, v5}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public executeQuery(Ljava/lang/Object;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 82
    :try_start_0
    sget-object v0, Lfreemarker/ext/dom/JaxenXPathSupport;->XPATH_CACHE_ATTR:Lfreemarker/core/CustomAttribute;

    invoke-virtual {v0}, Lfreemarker/core/CustomAttribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    monitor-enter v0
    :try_end_9
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_0 .. :try_end_9} :catch_5a
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_9} :catch_53

    .line 84
    :try_start_9
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaxen/BaseXPath;

    if-nez v1, :cond_2a

    .line 86
    new-instance v1, Lorg/jaxen/BaseXPath;

    sget-object v2, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_DOM_NAVIGATOR:Lorg/jaxen/Navigator;

    invoke-direct {v1, p2, v2}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    .line 87
    sget-object v2, Lfreemarker/ext/dom/JaxenXPathSupport;->customNamespaceContext:Lorg/jaxen/NamespaceContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 88
    sget-object v2, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_FUNCTION_CONTEXT:Lorg/jaxen/FunctionContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 89
    sget-object v2, Lfreemarker/ext/dom/JaxenXPathSupport;->FM_VARIABLE_CONTEXT:Lorg/jaxen/VariableContext;

    invoke-virtual {v1, v2}, Lorg/jaxen/BaseXPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 90
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_50

    if-eqz p1, :cond_2e

    goto :goto_30

    .line 93
    :cond_2e
    :try_start_2e
    sget-object p1, Lfreemarker/ext/dom/JaxenXPathSupport;->EMPTY_ARRAYLIST:Ljava/util/ArrayList;

    :goto_30
    invoke-virtual {v1, p1}, Lorg/jaxen/BaseXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_47

    .line 96
    sget-object p2, Lfreemarker/template/ObjectWrapper;->DEFAULT_WRAPPER:Lfreemarker/template/ObjectWrapper;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 98
    :cond_47
    new-instance p2, Lfreemarker/ext/dom/NodeListModel;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lfreemarker/ext/dom/NodeListModel;-><init>(Ljava/util/List;Lfreemarker/ext/dom/NodeModel;)V

    .line 99
    iput-object p0, p2, Lfreemarker/ext/dom/NodeListModel;->xpathSupport:Lfreemarker/ext/dom/XPathSupport;
    :try_end_4f
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_2e .. :try_end_4f} :catch_5a
    .catch Lorg/jaxen/JaxenException; {:try_start_2e .. :try_end_4f} :catch_53

    return-object p2

    :catchall_50
    move-exception p1

    .line 92
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catch Lfreemarker/template/utility/UndeclaredThrowableException; {:try_start_52 .. :try_end_53} :catch_5a
    .catch Lorg/jaxen/JaxenException; {:try_start_52 .. :try_end_53} :catch_53

    :catch_53
    move-exception p1

    .line 108
    new-instance p2, Lfreemarker/template/TemplateModelException;

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_5a
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lfreemarker/template/utility/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object p2

    .line 103
    instance-of v0, p2, Lfreemarker/template/TemplateModelException;

    if-eqz v0, :cond_66

    .line 104
    check-cast p2, Lfreemarker/template/TemplateModelException;

    throw p2

    .line 106
    :cond_66
    throw p1
.end method
