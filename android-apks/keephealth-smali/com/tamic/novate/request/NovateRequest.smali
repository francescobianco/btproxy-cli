.class public final Lcom/tamic/novate/request/NovateRequest;
.super Ljava/lang/Object;
.source "NovateRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/request/NovateRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static builder:Lcom/tamic/novate/request/NovateRequest$Builder;

.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tamic/novate/request/NovateRequest$Builder;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$000(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    .line 56
    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$100(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;

    .line 57
    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$200(Lcom/tamic/novate/request/NovateRequest$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    .line 58
    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->body:Lokhttp3/RequestBody;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$300(Lcom/tamic/novate/request/NovateRequest$Builder;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->body:Lokhttp3/RequestBody;

    .line 59
    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$400(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    # getter for: Lcom/tamic/novate/request/NovateRequest$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->access$400(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2b

    :cond_2a
    move-object p1, p0

    :goto_2b
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tamic/novate/request/NovateRequest$Builder;Lcom/tamic/novate/request/NovateRequest$1;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/tamic/novate/request/NovateRequest;-><init>(Lcom/tamic/novate/request/NovateRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/lang/Object;)V
    .registers 6

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;

    .line 346
    iput-object p3, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    .line 347
    iput-object p4, p0, Lcom/tamic/novate/request/NovateRequest;->body:Lokhttp3/RequestBody;

    .line 348
    iput-object p5, p0, Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/tamic/novate/request/NovateRequest;)Lokhttp3/Headers;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tamic/novate/request/NovateRequest;)Lokhttp3/RequestBody;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest;->body:Lokhttp3/RequestBody;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/Object;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addFilesByUri(Ljava/lang/String;Ljava/util/List;)Lcom/tamic/novate/request/NovateRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/tamic/novate/request/NovateRequest;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 373
    new-instance v1, Ljava/io/File;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    sget-object v2, Lcom/tamic/novate/request/NovateRequest;->params:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/tamic/novate/util/Utils;->createImage(Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_47
    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tamic/novate/request/NovateRequest;
    .registers 5

    .line 354
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 356
    sget-object v0, Lcom/tamic/novate/request/NovateRequest;->params:Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->createText(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 357
    :cond_10
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_40

    .line 358
    sget-object v0, Lcom/tamic/novate/request/NovateRequest;->params:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\"; filename=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->createFile(Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    :goto_40
    return-object p0
.end method

.method public body()Lokhttp3/RequestBody;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v0, :cond_5

    goto :goto_d

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->cacheControl:Lokhttp3/CacheControl;

    :goto_d
    return-object v0
.end method

.method public cleanParams()V
    .registers 2

    .line 381
    sget-object v0, Lcom/tamic/novate/request/NovateRequest;->params:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 382
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    return-void
.end method

.method public create(Lokhttp3/Request;)Lcom/tamic/novate/request/NovateRequest;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public headers()Lokhttp3/Headers;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isHttps()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 100
    new-instance v0, Lcom/tamic/novate/request/NovateRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/request/NovateRequest$Builder;-><init>(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/request/NovateRequest$1;)V

    return-object v0
.end method

.method public params()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/tamic/novate/request/NovateRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;

    if-eq v1, p0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;

    return-object v0
.end method
