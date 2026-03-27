.class Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;
.super Ljava/lang/Object;
.source "TaglibFactory.java"

# interfaces
.implements Lfreemarker/ext/jsp/TaglibFactory$TldLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServletContextTldLocation"
.end annotation


# instance fields
.field private final fileResourcePath:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V
    .registers 3

    .line 1209
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->this$0:Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    iput-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->fileResourcePath:Ljava/lang/String;

    return-void
.end method

.method private newResourceNotFoundException()Ljava/io/IOException;
    .registers 4

    .line 1227
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource not found: servletContext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->fileResourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->this$0:Lfreemarker/ext/jsp/TaglibFactory;

    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;
    invoke-static {v0}, Lfreemarker/ext/jsp/TaglibFactory;->access$700(Lfreemarker/ext/jsp/TaglibFactory;)Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->fileResourcePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 1216
    :cond_f
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->newResourceNotFoundException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public getXmlSystemId()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->this$0:Lfreemarker/ext/jsp/TaglibFactory;

    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->servletContext:Ljavax/servlet/ServletContext;
    invoke-static {v0}, Lfreemarker/ext/jsp/TaglibFactory;->access$700(Lfreemarker/ext/jsp/TaglibFactory;)Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->fileResourcePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1223
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "servletContext:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$ServletContextTldLocation;->fileResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
