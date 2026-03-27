.class Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;
.super Ljava/lang/Object;
.source "TaglibFactory.java"

# interfaces
.implements Lfreemarker/ext/jsp/TaglibFactory$TldLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClasspathTldLocation"
.end annotation


# instance fields
.field private final resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1249
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    return-void

    .line 1247
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"resourcePath\" must start with /"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1258
    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->tryGetThreadContextClassLoader()Ljava/lang/ClassLoader;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$800()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1260
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lfreemarker/template/utility/ClassUtil;->getReasourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 1266
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfreemarker/template/utility/ClassUtil;->getReasourceAsStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getXmlSystemId()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    # invokes: Lfreemarker/ext/jsp/TaglibFactory;->tryGetThreadContextClassLoader()Ljava/lang/ClassLoader;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$800()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1272
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1274
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1278
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_25

    .line 1279
    :cond_21
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "classpath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ClasspathTldLocation;->resourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
