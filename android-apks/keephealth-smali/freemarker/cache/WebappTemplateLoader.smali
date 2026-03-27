.class public Lfreemarker/cache/WebappTemplateLoader;
.super Ljava/lang/Object;
.source "WebappTemplateLoader.java"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private attemptFileAccess:Z

.field private final servletContext:Ljavax/servlet/ServletContext;

.field private final subdirPath:Ljava/lang/String;

.field private urlConnectionUsesCaches:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "freemarker.cache"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/WebappTemplateLoader;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .registers 3

    .line 64
    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Lfreemarker/cache/WebappTemplateLoader;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lfreemarker/cache/WebappTemplateLoader;->attemptFileAccess:Z

    .line 80
    const-string v0, "servletContext"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "subdirPath"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 83
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 84
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_31
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 90
    :cond_44
    iput-object p2, p0, Lfreemarker/cache/WebappTemplateLoader;->subdirPath:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    return-void
.end method

.method private getContextPath()Ljava/lang/String;
    .registers 4

    .line 187
    :try_start_0
    iget-object v0, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getContextPath"

    sget-object v2, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    sget-object v2, Lfreemarker/template/utility/CollectionUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object v0

    .line 190
    :catchall_19
    const-string v0, "[can\'t query before Serlvet 2.5]"

    return-object v0
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_5

    goto :goto_a

    .line 149
    :cond_5
    check-cast p1, Lfreemarker/cache/URLTemplateSource;

    invoke-virtual {p1}, Lfreemarker/cache/URLTemplateSource;->close()V

    :goto_a
    return-void
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/cache/WebappTemplateLoader;->subdirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-boolean v0, p0, Lfreemarker/cache/WebappTemplateLoader;->attemptFileAccess:Z

    if-eqz v0, :cond_31

    .line 100
    :try_start_17
    iget-object v0, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_2e} :catch_31

    if-eqz v0, :cond_31

    return-object v1

    :catch_31
    :cond_31
    const/4 v0, 0x0

    .line 115
    :try_start_32
    iget-object v1, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_32 .. :try_end_38} :catch_45

    if-nez p1, :cond_3b

    goto :goto_44

    .line 121
    :cond_3b
    new-instance v0, Lfreemarker/cache/URLTemplateSource;

    invoke-virtual {p0}, Lfreemarker/cache/WebappTemplateLoader;->getURLConnectionUsesCaches()Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/cache/URLTemplateSource;-><init>(Ljava/net/URL;Ljava/lang/Boolean;)V

    :goto_44
    return-object v0

    :catch_45
    move-exception v1

    .line 117
    sget-object v2, Lfreemarker/cache/WebappTemplateLoader;->LOG:Lfreemarker/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not retrieve resource "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuoteNoXSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getAttemptFileAccess()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lfreemarker/cache/WebappTemplateLoader;->attemptFileAccess:Z

    return v0
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .registers 4

    .line 125
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_b

    .line 126
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_b
    check-cast p1, Lfreemarker/cache/URLTemplateSource;

    invoke-virtual {p1}, Lfreemarker/cache/URLTemplateSource;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_11

    .line 135
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    check-cast p1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 139
    :cond_11
    new-instance v0, Ljava/io/InputStreamReader;

    check-cast p1, Lfreemarker/cache/URLTemplateSource;

    .line 140
    invoke-virtual {p1}, Lfreemarker/cache/URLTemplateSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public getURLConnectionUsesCaches()Ljava/lang/Boolean;
    .registers 2

    .line 159
    iget-object v0, p0, Lfreemarker/cache/WebappTemplateLoader;->urlConnectionUsesCaches:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttemptFileAccess(Z)V
    .registers 2

    .line 215
    iput-boolean p1, p0, Lfreemarker/cache/WebappTemplateLoader;->attemptFileAccess:Z

    return-void
.end method

.method public setURLConnectionUsesCaches(Ljava/lang/Boolean;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lfreemarker/cache/WebappTemplateLoader;->urlConnectionUsesCaches:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/cache/TemplateLoaderUtils;->getClassNameForToString(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(subdirPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/cache/WebappTemplateLoader;->subdirPath:Ljava/lang/String;

    .line 179
    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", servletContext={contextPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-direct {p0}, Lfreemarker/cache/WebappTemplateLoader;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/cache/WebappTemplateLoader;->servletContext:Ljavax/servlet/ServletContext;

    .line 181
    invoke-interface {v1}, Ljavax/servlet/ServletContext;->getServletContextName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
