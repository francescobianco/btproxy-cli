.class public Lfreemarker/ext/jsp/TaglibFactory;
.super Ljava/lang/Object;
.source "TaglibFactory.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;,
        Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;,
        Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;,
        Lfreemarker/ext/jsp/TaglibFactory$EmptyContentEntityResolver;,
        Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;,
        Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;,
        Lfreemarker/ext/jsp/TaglibFactory$WebXmlParser;,
        Lfreemarker/ext/jsp/TaglibFactory$Taglib;,
        Lfreemarker/ext/jsp/TaglibFactory$FileTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$JarEntryUrlTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$JarEntryTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;,
        Lfreemarker/ext/jsp/TaglibFactory$TldLocation;,
        Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;,
        Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;,
        Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;,
        Lfreemarker/ext/jsp/TaglibFactory$MetaInfTldSource;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLASSPATH_TLDS:Ljava/util/List;

.field public static final DEFAULT_META_INF_TLD_SOURCES:Ljava/util/List;

.field private static final DEFAULT_TLD_RESOURCE_PATH:Ljava/lang/String; = "/META-INF/taglib.tld"

.field private static final JAR_URL_ENTRY_PATH_START:Ljava/lang/String; = "!/"

.field private static final LOG:Lfreemarker/log/Logger;

.field private static final META_INF_ABS_PATH:Ljava/lang/String; = "/META-INF/"

.field private static final META_INF_REL_PATH:Ljava/lang/String; = "META-INF/"

.field private static final PLATFORM_FILE_ENCODING:Ljava/lang/String;

.field private static final URL_TYPE_ABSOLUTE:I = 0x1

.field private static final URL_TYPE_FULL:I = 0x0

.field private static final URL_TYPE_RELATIVE:I = 0x2


# instance fields
.field private classpathTlds:Ljava/util/List;

.field private failedTldLocations:Ljava/util/List;

.field private final lock:Ljava/lang/Object;

.field private metaInfTldSources:Ljava/util/List;

.field private nextTldLocationLookupPhase:I

.field private objectWrapper:Lfreemarker/template/ObjectWrapper;

.field private final servletContext:Ljavax/servlet/ServletContext;

.field private final taglibs:Ljava/util/Map;

.field test_emulateJarEntryUrlOpenStreamFails:Z

.field test_emulateNoJarURLConnections:Z

.field test_emulateNoUrlToFileConversions:Z

.field private final tldLocations:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 103
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_CLASSPATH_TLDS:Ljava/util/List;

    .line 112
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;->INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_META_INF_TLD_SOURCES:Ljava/util/List;

    .line 115
    const-string v0, "freemarker.jsp"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    .line 126
    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .registers 4

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_META_INF_TLD_SOURCES:Ljava/util/List;

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    .line 132
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->DEFAULT_CLASSPATH_TLDS:Ljava/util/List;

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->classpathTlds:Ljava/util/List;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateNoUrlToFileConversions:Z

    .line 135
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateNoJarURLConnections:Z

    .line 136
    iput-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateJarEntryUrlOpenStreamFails:Z

    .line 138
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->lock:Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->taglibs:Ljava/util/Map;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->tldLocations:Ljava/util/Map;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    .line 142
    iput v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->nextTldLocationLookupPhase:I

    .line 157
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    return-void
.end method

.method static synthetic access$1000()Lfreemarker/log/Logger;
    .registers 1

    .line 96
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .line 96
    invoke-static {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->tryCreateServletContextJarEntryUrl(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->parseXml(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->getUriType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Ljava/lang/String;)Z
    .registers 1

    .line 96
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->isJarPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocation(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .registers 1

    .line 96
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->isTldFileNameIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lfreemarker/ext/jsp/TaglibFactory;)Ljavax/servlet/ServletContext;
    .registers 1

    .line 96
    iget-object p0, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/ClassLoader;
    .registers 1

    .line 96
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->tryGetThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addTldLocation(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V
    .registers 7

    .line 805
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->tldLocations:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " to TLD location "

    if-eqz v0, :cond_35

    .line 806
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignored duplicate mapping of taglib URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 808
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_64

    .line 811
    :cond_35
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->tldLocations:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mapped taglib URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 814
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private addTldLocationFromTld(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 772
    invoke-interface {p1}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 774
    :try_start_4
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 776
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_b
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 777
    throw p1
.end method

.method private addTldLocationFromTld(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    :try_start_0
    invoke-interface {p2}, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;->getXmlSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->getTaglibUriFromTld(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_2c

    :catch_9
    move-exception p1

    .line 793
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while parsing TLD; skipping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    monitor-enter p1

    .line 795
    :try_start_21
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    const/4 p1, 0x0

    :goto_2c
    if-eqz p1, :cond_31

    .line 800
    invoke-direct {p0, p2, p1}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocation(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V

    :cond_31
    return-void

    :catchall_32
    move-exception p2

    .line 796
    :try_start_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p2
.end method

.method private addTldLocationsFromClasspathTlds()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->classpathTlds:Ljava/util/List;

    if-eqz v0, :cond_a7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a7

    .line 558
    :cond_c
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Looking for TLD locations in TLD-s specified in cfg.classpathTlds"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->classpathTlds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9f

    .line 566
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    :cond_44
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 573
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;

    invoke-direct {v2, v1}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;-><init>(Ljava/lang/String;)V

    .line 576
    :try_start_4f
    invoke-virtual {v2}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_54

    goto :goto_7c

    :catch_54
    move-exception v3

    .line 578
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v4}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 579
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignored classpath TLD location "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " because of error"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    if-eqz v1, :cond_19

    .line 586
    :try_start_7e
    invoke-direct {p0, v1, v2}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_85

    .line 588
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :catchall_85
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 589
    throw v0

    .line 570
    :cond_8a
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "classpathTlds can\'t specify a directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_9f
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    const-string v1, "classpathTlds can\'t contain empty item"

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    :goto_a7
    return-void
.end method

.method private addTldLocationsFromFileDirectory(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 745
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 746
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scanning for *.tld-s in File directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 749
    :cond_24
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$1;-><init>(Lfreemarker/ext/jsp/TaglibFactory;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 p1, 0x0

    .line 759
    :goto_30
    array-length v1, v0

    if-ge p1, v1, :cond_6d

    .line 760
    aget-object v1, v0, p1

    .line 761
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$FileTldLocation;

    invoke-direct {v2, v1}, Lfreemarker/ext/jsp/TaglibFactory$FileTldLocation;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 757
    :cond_40
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t list this directory for some reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_55
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipped scanning for *.tld for non-existent directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_6d
    return-void
.end method

.method private addTldLocationsFromJarDirectoryEntryURL(Ljava/net/URL;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 667
    iget-boolean v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateNoJarURLConnections:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    instance-of v1, v0, Ljava/net/JarURLConnection;

    if-eqz v1, :cond_25

    .line 668
    check-cast v0, Ljava/net/JarURLConnection;

    .line 669
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    .line 671
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v4, v3

    goto :goto_5a

    .line 673
    :cond_20
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->newFailedToExtractEntryPathException(Ljava/net/URL;)Ljava/net/MalformedURLException;

    move-result-object p1

    throw p1

    .line 676
    :cond_25
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_139

    const/16 v4, 0x3a

    .line 681
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->urlToFileOrNull(Ljava/net/URL;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 686
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    goto :goto_5a

    :cond_59
    move-object v1, v3

    .line 689
    :goto_5a
    const-string v2, ".tld"

    const/4 v5, 0x0

    if-eqz v1, :cond_b2

    .line 690
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v4}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Scanning for /META-INF/**/*.tld-s in random access mode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 694
    :cond_79
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_7d
    :goto_7d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 695
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 696
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 699
    invoke-static {p1, v4}, Lfreemarker/ext/jsp/TaglibFactory;->createJarEntryUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 700
    new-instance v6, Lfreemarker/ext/jsp/TaglibFactory$JarEntryUrlTldLocation;

    invoke-direct {v6, p0, v4, v3, v3}, Lfreemarker/ext/jsp/TaglibFactory$JarEntryUrlTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_7d

    .line 705
    :cond_b2
    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 706
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Scanning for /META-INF/**/*.tld-s in stream mode (slow): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 710
    :cond_cc
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 712
    :try_start_d5
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_da
    .catch Ljava/util/zip/ZipException; {:try_start_d5 .. :try_end_da} :catch_117
    .catchall {:try_start_d5 .. :try_end_da} :catchall_115

    .line 715
    :cond_da
    :goto_da
    :try_start_da
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_110

    if-nez v7, :cond_e7

    .line 726
    :try_start_e0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e3
    .catch Ljava/util/zip/ZipException; {:try_start_e0 .. :try_end_e3} :catch_117
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_115

    .line 739
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_e6
    return-void

    .line 718
    :cond_e7
    :try_start_e7
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 719
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_da

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 720
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 721
    invoke-static {p1, v7}, Lfreemarker/ext/jsp/TaglibFactory;->createJarEntryUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 722
    new-instance v8, Lfreemarker/ext/jsp/TaglibFactory$JarEntryUrlTldLocation;

    invoke-direct {v8, p0, v7, v3, v3}, Lfreemarker/ext/jsp/TaglibFactory$JarEntryUrlTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    invoke-direct {p0, v6, v8}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_10f
    .catchall {:try_start_e7 .. :try_end_10f} :catchall_110

    goto :goto_da

    :catchall_110
    move-exception p1

    .line 726
    :try_start_111
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 727
    throw p1
    :try_end_115
    .catch Ljava/util/zip/ZipException; {:try_start_111 .. :try_end_115} :catch_117
    .catchall {:try_start_111 .. :try_end_115} :catchall_115

    :catchall_115
    move-exception p1

    goto :goto_135

    :catch_117
    move-exception p1

    .line 730
    :try_start_118
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading ZIP (see cause excepetion) from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_118 .. :try_end_130} :catchall_115

    .line 733
    :try_start_130
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_134
    .catchall {:try_start_130 .. :try_end_133} :catchall_115

    .line 737
    :try_start_133
    throw v0

    .line 735
    :catch_134
    throw p1
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_115

    .line 739
    :goto_135
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 740
    throw p1

    .line 679
    :cond_139
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->newFailedToExtractEntryPathException(Ljava/net/URL;)Ljava/net/MalformedURLException;

    move-result-object p1

    throw p1
.end method

.method private addTldLocationsFromMetaInfTlds()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    if-eqz v0, :cond_f7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_f7

    .line 476
    :cond_c
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    const/4 v1, 0x0

    if-ltz v0, :cond_27

    .line 477
    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lfreemarker/ext/jsp/TaglibFactory$ClearMetaInfTldSource;

    if-eqz v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_27
    move v0, v1

    :goto_28
    const/4 v2, 0x0

    .line 483
    :goto_29
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f7

    .line 484
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/jsp/TaglibFactory$MetaInfTldSource;

    .line 486
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;->INSTANCE:Lfreemarker/ext/jsp/TaglibFactory$WebInfPerLibJarMetaInfTldSource;

    if-ne v3, v4, :cond_42

    .line 487
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromWebInfPerLibJarMetaInfTlds()V

    goto/16 :goto_ed

    .line 488
    :cond_42
    instance-of v4, v3, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;

    if-eqz v4, :cond_f1

    .line 489
    check-cast v3, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;

    .line 490
    sget-object v4, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v4}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Looking for TLD-s in classpathRoots["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v3}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;->getRootContainerPattern()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]/META-INF/**/*.tld"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-virtual {v4, v5}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    :cond_6c
    if-nez v2, :cond_72

    .line 497
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->collectMetaInfUrlsFromClassLoaders()Ljava/util/Set;

    move-result-object v2

    .line 500
    :cond_72
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_76
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 501
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;

    .line 502
    invoke-virtual {v5}, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;->getUrl()Ljava/net/URL;

    move-result-object v6

    .line 503
    invoke-static {v6}, Lfreemarker/ext/jsp/TaglibFactory;->isJarUrl(Ljava/net/URL;)Z

    move-result v7

    .line 504
    # getter for: Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;->externalForm:Ljava/lang/String;
    invoke-static {v5}, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;->access$200(Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_9e

    .line 508
    const-string v9, "!/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b0

    .line 509
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_b0

    .line 511
    :cond_9e
    const-string v9, "/META-INF/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 512
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x9

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 516
    :cond_b0
    :goto_b0
    invoke-virtual {v3}, Lfreemarker/ext/jsp/TaglibFactory$ClasspathMetaInfTldSource;->getRootContainerPattern()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 517
    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->urlToFileOrNull(Ljava/net/URL;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_c8

    .line 519
    invoke-direct {p0, v8}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromFileDirectory(Ljava/io/File;)V

    goto :goto_76

    :cond_c8
    if-eqz v7, :cond_ce

    .line 521
    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromJarDirectoryEntryURL(Ljava/net/URL;)V

    goto :goto_76

    .line 523
    :cond_ce
    sget-object v6, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v6}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t list entries under this URL; TLD-s won\'t be discovered here: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v5}, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;->getExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {v6, v5}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_76

    :cond_ed
    :goto_ed
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    .line 531
    :cond_f1
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0}, Lfreemarker/core/BugException;-><init>()V

    throw v0

    :cond_f7
    :goto_f7
    return-void
.end method

.method private addTldLocationsFromServletContextJar(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 600
    const-string v0, "/META-INF/"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->servletContextResourceToFileOrNull(Ljava/lang/String;)Ljava/util/jar/JarFile;

    move-result-object v1

    const/4 v2, 0x0

    .line 604
    const-string v3, ".tld"

    const/4 v4, 0x0

    if-eqz v1, :cond_58

    .line 605
    sget-object v5, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v5}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Scanning for /META-INF/*.tld-s in JarFile: servletContext:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 609
    :cond_2b
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 610
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 611
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 612
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 613
    new-instance v6, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;

    invoke-direct {v6, p0, p1, v5, v2}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    invoke-direct {p0, v6}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_2f

    .line 617
    :cond_58
    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v1}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Scanning for /META-INF/*.tld-s in ZipInputStream (slow): servletContext:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 622
    :cond_72
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 627
    :try_start_7a
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_ae

    .line 630
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_a9

    if-nez v6, :cond_8c

    .line 640
    :try_start_85
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_ae

    .line 643
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8b
    return-void

    .line 633
    :cond_8c
    :try_start_8c
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lfreemarker/ext/jsp/TaglibFactory;->normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 634
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 635
    new-instance v7, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;

    invoke-direct {v7, p0, p1, v6, v2}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    invoke-direct {p0, v5, v7}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Ljava/io/InputStream;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V
    :try_end_a8
    .catchall {:try_start_8c .. :try_end_a8} :catchall_a9

    goto :goto_7f

    :catchall_a9
    move-exception p1

    .line 640
    :try_start_aa
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 641
    throw p1
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception p1

    .line 643
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 644
    throw p1

    .line 624
    :cond_b3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServletContext resource not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addTldLocationsFromServletContextResourceTlds(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 452
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    const-string v2, ".tld"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 454
    new-instance v2, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;

    invoke-direct {v2, p0, v1}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationFromTld(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;)V

    goto :goto_14

    .line 458
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 459
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 461
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromServletContextResourceTlds(Ljava/lang/String;)V

    goto :goto_35

    :cond_4d
    return-void
.end method

.method private addTldLocationsFromWebInfPerLibJarMetaInfTlds()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 537
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 538
    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/lib/*.{jar,zip}/META-INF/*.tld"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 542
    :cond_d
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    const-string v1, "/WEB-INF/lib"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 544
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    invoke-static {v1}, Lfreemarker/ext/jsp/TaglibFactory;->isJarPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 547
    invoke-direct {p0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromServletContextJar(Ljava/lang/String;)V

    goto :goto_1b

    :cond_31
    return-void
.end method

.method private addTldLocationsFromWebInfTlds()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 440
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/**/*.tld"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 441
    const-string v0, "/WEB-INF"

    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromServletContextResourceTlds(Ljava/lang/String;)V

    return-void
.end method

.method private addTldLocationsFromWebXml()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    const-string v1, "Looking for TLD locations in servletContext:/WEB-INF/web.xml"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 425
    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$WebXmlParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/ext/jsp/TaglibFactory$WebXmlParser;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    .line 426
    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    const-string v3, "/WEB-INF/web.xml"

    invoke-interface {v2, v3}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 428
    const-string v1, "No web.xml was found in servlet context"

    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, v3}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lfreemarker/ext/jsp/TaglibFactory;->parseXml(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 434
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_2e
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 435
    throw v0
.end method

.method private checkNotStarted()V
    .registers 5

    .line 381
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->nextTldLocationLookupPhase:I

    if-nez v1, :cond_9

    .line 385
    monitor-exit v0

    return-void

    .line 383
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object was already in use."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_28
    move-exception v1

    .line 385
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private static collectMetaInfUrlsFromClassLoader(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    const-string v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 838
    :goto_8
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 839
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-direct {v0, v1}, Lfreemarker/ext/jsp/TaglibFactory$URLWithExternalForm;-><init>(Ljava/net/URL;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1d
    return-void
.end method

.method private static collectMetaInfUrlsFromClassLoaders()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 822
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->tryGetThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 824
    invoke-static {v1, v0}, Lfreemarker/ext/jsp/TaglibFactory;->collectMetaInfUrlsFromClassLoader(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 827
    :cond_e
    const-class v2, Lfreemarker/ext/jsp/TaglibFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 828
    invoke-static {v1, v2}, Lfreemarker/ext/jsp/TaglibFactory;->isDescendantOfOrSameAs(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 829
    invoke-static {v2, v0}, Lfreemarker/ext/jsp/TaglibFactory;->collectMetaInfUrlsFromClassLoader(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_1d
    return-object v0
.end method

.method private static createJarEntryUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 974
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 975
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 978
    :cond_d
    :try_start_d
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;

    invoke-static {p1, v1}, Lfreemarker/template/utility/StringUtil;->URLPathEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_18} :catch_19

    return-object v0

    .line 980
    :catch_19
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0
.end method

.method private getExplicitlyMappedTldLocation(Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldLocation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;
        }
    .end annotation

    .line 391
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->tldLocations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jsp/TaglibFactory$TldLocation;

    if-eqz v0, :cond_b

    return-object v0

    .line 396
    :cond_b
    iget v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->nextTldLocationLookupPhase:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 p1, 0x4

    if-ne v0, p1, :cond_1d

    const/4 p1, 0x0

    return-object p1

    .line 416
    :cond_1d
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    .line 411
    :cond_23
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromMetaInfTlds()V

    goto :goto_32

    .line 407
    :cond_27
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromWebInfTlds()V

    goto :goto_32

    .line 403
    :cond_2b
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromWebXml()V

    goto :goto_32

    .line 399
    :cond_2f
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->addTldLocationsFromClasspathTlds()V

    .line 418
    :goto_32
    iget v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->nextTldLocationLookupPhase:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->nextTldLocationLookupPhase:I

    goto :goto_0
.end method

.method private getFailedTLDsList()Ljava/lang/String;
    .registers 5

    .line 272
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 274
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 277
    :goto_14
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    if-eqz v2, :cond_23

    .line 279
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_23
    iget-object v3, p0, Lfreemarker/ext/jsp/TaglibFactory;->failedTldLocations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 283
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception v1

    .line 284
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private getTaglibUriFromTld(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;

    invoke-direct {v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;-><init>()V

    .line 846
    invoke-static {p1, p2, v0}, Lfreemarker/ext/jsp/TaglibFactory;->parseXml(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 847
    invoke-virtual {v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->getTaglibUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getUriType(Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p0, :cond_53

    .line 936
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    return v3

    :cond_13
    const/16 v2, 0x61

    const/4 v4, 0x2

    if-lt v1, v2, :cond_4a

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1d

    goto :goto_4a

    :cond_1d
    const/16 v1, 0x3a

    .line 947
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_27

    return v4

    :cond_27
    :goto_27
    if-ge v3, v1, :cond_49

    .line 953
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v2, :cond_31

    if-le v6, v5, :cond_46

    :cond_31
    const/16 v7, 0x30

    if-lt v6, v7, :cond_39

    const/16 v7, 0x39

    if-le v6, v7, :cond_46

    :cond_39
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_46

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_46

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_46

    return v4

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_49
    return v0

    :cond_4a
    :goto_4a
    return v4

    .line 937
    :cond_4b
    new-instance p0, Ljava/net/MalformedURLException;

    const-string v0, "empty string is not a valid URI"

    invoke-direct {p0, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 934
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null is not a valid URI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isDescendantOfOrSameAs(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 2

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1110
    :cond_8
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0
.end method

.method private static isJarPath(Ljava/lang/String;)Z
    .registers 2

    .line 962
    const-string v0, ".jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static isJarUrl(Ljava/net/URL;)Z
    .registers 2

    .line 966
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    .line 967
    const-string v0, "jar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "zip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "vfszip"

    .line 968
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "wsjar"

    .line 969
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method private static isTldFileNameIgnoreCase(Ljava/lang/String;)Z
    .registers 2

    const/16 v0, 0x2e

    .line 1084
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 1086
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1087
    const-string v0, "tld"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private loadTaglib(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)Lfreemarker/template/TemplateHashModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 857
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading taglib for URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from TLD location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 859
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 861
    :cond_2c
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$Taglib;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    invoke-direct {v0, v1, p1, v2}, Lfreemarker/ext/jsp/TaglibFactory$Taglib;-><init>(Ljavax/servlet/ServletContext;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Lfreemarker/template/ObjectWrapper;)V

    .line 862
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->taglibs:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->tldLocations:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static newFailedToExtractEntryPathException(Ljava/net/URL;)Ljava/net/MalformedURLException;
    .registers 4

    .line 1002
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to extract jar entry path from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static normalizeJarEntryPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 989
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_15
    if-eqz p1, :cond_2e

    .line 994
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method

.method private static parseXml(Ljava/io/InputStream;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 870
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 871
    invoke-static {p0}, Lfreemarker/ext/jsp/TaglibFactory;->toCloseIgnoring(Ljava/io/InputStream;)Ljava/io/FilterInputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 873
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    const/4 p1, 0x0

    .line 874
    invoke-virtual {p0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 875
    invoke-virtual {p0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 878
    :try_start_1a
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0
    :try_end_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a .. :try_end_22} :catch_35

    .line 883
    new-instance p1, Lfreemarker/ext/jsp/TaglibFactory$EmptyContentEntityResolver;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lfreemarker/ext/jsp/TaglibFactory$EmptyContentEntityResolver;-><init>(Lfreemarker/ext/jsp/TaglibFactory$1;)V

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 884
    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 885
    invoke-interface {p0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 887
    invoke-interface {p0, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :catch_35
    move-exception p0

    .line 881
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "XML parser setup failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static resolveRelativeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;
        }
    .end annotation

    .line 893
    :try_start_0
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    const-string v1, "__FreeMarkerServlet.Request__"

    invoke-virtual {v0, v1}, Lfreemarker/core/Environment;->getVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_a
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_a} :catch_82

    .line 898
    instance-of v1, v0, Lfreemarker/ext/servlet/HttpRequestHashModel;

    if-eqz v1, :cond_67

    .line 899
    check-cast v0, Lfreemarker/ext/servlet/HttpRequestHashModel;

    .line 900
    invoke-virtual {v0}, Lfreemarker/ext/servlet/HttpRequestHashModel;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 901
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 903
    const-string v2, ""

    if-nez v0, :cond_21

    move-object v0, v2

    .line 906
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_2d

    move-object v1, v2

    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_57

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 913
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 916
    :cond_67
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t resolve relative URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " as request URL information is unavailable."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_82
    move-exception p0

    .line 896
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    const-string v1, "Failed to get FreemarkerServlet request information"

    invoke-direct {v0, v1, p0}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private servletContextResourceToFileOrNull(Ljava/lang/String;)Ljava/util/jar/JarFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1042
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ServletContext resource URL was null (missing resource?): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;)V

    return-object v1

    .line 1046
    :cond_1e
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory;->urlToFileOrNull(Ljava/net/URL;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_25

    return-object v1

    .line 1052
    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1053
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jar file doesn\'t exist - falling back to stream mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;)V

    return-object v1

    .line 1057
    :cond_40
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static toCloseIgnoring(Ljava/io/InputStream;)Ljava/io/FilterInputStream;
    .registers 2

    .line 924
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$2;

    invoke-direct {v0, p0}, Lfreemarker/ext/jsp/TaglibFactory$2;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static tryCreateServletContextJarEntryUrl(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    const-string v0, "Servlet context resource not found: "

    const-string v1, "jar:"

    .line 1063
    :try_start_4
    invoke-interface {p0, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 1067
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "!/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/"

    .line 1072
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, p2

    :goto_2e
    sget-object v2, Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;

    .line 1071
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1065
    :cond_40
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_53

    :catch_53
    move-exception p0

    .line 1075
    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t get URL for serlvetContext resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " / jar entry "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1077
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-virtual {v0, p1, p0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static tryGetThreadContextClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 1093
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 1097
    sget-object v1, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    const-string v2, "Can\'t access Thread Context ClassLoader"

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method private urlToFileOrNull(Ljava/net/URL;)Ljava/io/File;
    .registers 5

    .line 1009
    iget-boolean v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->test_emulateNoUrlToFileConversions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 1013
    :cond_6
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-object v1

    .line 1020
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_26

    .line 1025
    :catch_1c
    :try_start_1c
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lfreemarker/ext/jsp/TaglibFactory;->PLATFORM_FILE_ENCODING:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_26} :catch_2c

    .line 1030
    :goto_26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_2c
    move-exception p1

    .line 1027
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, " Also note these TLD-s were skipped earlier due to errors; see error in the log: "

    const-string v1, " JSP taglib URI. (TLD-s are searched according the JSP 2.2 specification. In development- and embedded-servlet-container setups you may also need the \"MetaInfTldSources\" and \"ClasspathTlds\" "

    const-string v2, " (Note: These TLD-s were skipped earlier due to errors; see errors in the log: "

    const-string v3, "No TLD was found for the "

    const-string v4, "Error while loading tag library for URI "

    const-string v5, "Malformed taglib URI: "

    const-string v6, "Error while looking for TLD file for "

    const-string v7, "Locating TLD for taglib URI "

    .line 179
    iget-object v8, p0, Lfreemarker/ext/jsp/TaglibFactory;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 181
    :try_start_13
    iget-object v9, p0, Lfreemarker/ext/jsp/TaglibFactory;->taglibs:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfreemarker/ext/jsp/TaglibFactory$Taglib;

    if-eqz v9, :cond_1f

    .line 183
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_162

    return-object v9

    :cond_1f
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 191
    :try_start_21
    sget-object v11, Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v11}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_43

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;)V

    .line 195
    :cond_43
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory;->getExplicitlyMappedTldLocation(Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldLocation;

    move-result-object v7
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_121
    .catchall {:try_start_21 .. :try_end_47} :catchall_162

    if-eqz v7, :cond_4a

    goto :goto_81

    .line 204
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->getUriType(Ljava/lang/String;)I

    move-result v5
    :try_end_4e
    .catch Ljava/net/MalformedURLException; {:try_start_4a .. :try_end_4e} :catch_109
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_121
    .catchall {:try_start_4a .. :try_end_4e} :catchall_162

    const/4 v7, 0x2

    if-ne v5, v7, :cond_56

    .line 209
    :try_start_51
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->resolveRelativeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    :cond_56
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b3

    move-object v0, p1

    .line 233
    :goto_5a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 234
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory;->taglibs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jsp/TaglibFactory$Taglib;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_68} :catch_121
    .catchall {:try_start_51 .. :try_end_68} :catchall_162

    if-eqz v1, :cond_6c

    .line 236
    :try_start_6a
    monitor-exit v8
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_162

    return-object v1

    .line 240
    :cond_6c
    :try_start_6c
    invoke-static {v0}, Lfreemarker/ext/jsp/TaglibFactory;->isJarPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;

    const-string v3, "/META-INF/taglib.tld"

    invoke-direct {v1, p0, v0, v3, v9}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextJarEntryTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$1;)V

    goto :goto_7f

    :cond_7a
    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;

    invoke-direct {v1, p0, v0}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7f} :catch_121
    .catchall {:try_start_6c .. :try_end_7f} :catchall_162

    :goto_7f
    move-object v7, v1

    move-object p1, v0

    .line 258
    :goto_81
    :try_start_81
    invoke-direct {p0, v7, p1}, Lfreemarker/ext/jsp/TaglibFactory;->loadTaglib(Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)Lfreemarker/template/TemplateHashModel;

    move-result-object p1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_87
    .catchall {:try_start_81 .. :try_end_85} :catchall_162

    :try_start_85
    monitor-exit v8

    return-object p1

    :catch_87
    move-exception v0

    .line 260
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " from TLD location "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 262
    invoke-static {v7}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; see cause exception."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_b3
    .catchall {:try_start_85 .. :try_end_b3} :catchall_162

    :cond_b3
    if-nez v5, :cond_103

    .line 214
    :try_start_b5
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->getFailedTLDsList()Ljava/lang/String;

    move-result-object v4
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b9} :catch_121
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_162

    .line 216
    :try_start_b9
    new-instance v5, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lfreemarker/ext/servlet/FreemarkerServlet;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " init-params or the similar system properites."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_e1

    const-string v0, ""

    goto :goto_ee

    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ee
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_100} :catch_100
    .catchall {:try_start_b9 .. :try_end_100} :catchall_162

    :catch_100
    move-exception v0

    move v10, v7

    goto :goto_122

    .line 230
    :cond_103
    :try_start_103
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0}, Lfreemarker/core/BugException;-><init>()V

    throw v0

    :catch_109
    move-exception v0

    .line 206
    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lfreemarker/ext/jsp/TaglibFactory$TaglibGettingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_121} :catch_121
    .catchall {:try_start_103 .. :try_end_121} :catchall_162

    :catch_121
    move-exception v0

    :goto_122
    if-eqz v10, :cond_125

    goto :goto_129

    .line 246
    :cond_125
    :try_start_125
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->getFailedTLDsList()Ljava/lang/String;

    move-result-object v9

    .line 247
    :goto_129
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "; see cause exception."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v9, :cond_143

    const-string v2, ""

    goto :goto_156

    :cond_143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_156
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catchall_162
    move-exception p1

    .line 265
    monitor-exit v8
    :try_end_164
    .catchall {:try_start_125 .. :try_end_164} :catchall_162

    throw p1
.end method

.method public getClasspathTlds()Ljava/util/List;
    .registers 2

    .line 355
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->classpathTlds:Ljava/util/List;

    return-object v0
.end method

.method public getMetaInfTldSources()Ljava/util/List;
    .registers 2

    .line 322
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    return-object v0
.end method

.method public getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 300
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setClasspathTlds(Ljava/util/List;)V
    .registers 3

    .line 375
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->checkNotStarted()V

    .line 376
    const-string v0, "classpathTlds"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->classpathTlds:Ljava/util/List;

    return-void
.end method

.method public setMetaInfTldSources(Ljava/util/List;)V
    .registers 3

    .line 344
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->checkNotStarted()V

    .line 345
    const-string v0, "metaInfTldSources"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->metaInfTldSources:Ljava/util/List;

    return-void
.end method

.method public setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 312
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory;->checkNotStarted()V

    .line 313
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method
