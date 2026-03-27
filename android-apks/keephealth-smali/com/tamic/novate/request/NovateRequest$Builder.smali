.class public Lcom/tamic/novate/request/NovateRequest$Builder;
.super Ljava/lang/Object;
.source "NovateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/request/NovateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private headers:Lokhttp3/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "GET"

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->method:Ljava/lang/String;

    .line 137
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method private constructor <init>(Lcom/tamic/novate/request/NovateRequest;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    # getter for: Lcom/tamic/novate/request/NovateRequest;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest;->access$600(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->url:Ljava/lang/String;

    .line 142
    # getter for: Lcom/tamic/novate/request/NovateRequest;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest;->access$700(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->method:Ljava/lang/String;

    .line 143
    # getter for: Lcom/tamic/novate/request/NovateRequest;->body:Lokhttp3/RequestBody;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest;->access$800(Lcom/tamic/novate/request/NovateRequest;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->body:Lokhttp3/RequestBody;

    .line 144
    # getter for: Lcom/tamic/novate/request/NovateRequest;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest;->access$900(Lcom/tamic/novate/request/NovateRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->tag:Ljava/lang/Object;

    .line 145
    # getter for: Lcom/tamic/novate/request/NovateRequest;->headers:Lokhttp3/Headers;
    invoke-static {p1}, Lcom/tamic/novate/request/NovateRequest;->access$1000(Lcom/tamic/novate/request/NovateRequest;)Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/request/NovateRequest$1;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;-><init>(Lcom/tamic/novate/request/NovateRequest;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tamic/novate/request/NovateRequest$Builder;)Lokhttp3/Headers$Builder;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tamic/novate/request/NovateRequest$Builder;)Lokhttp3/RequestBody;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->body:Lokhttp3/RequestBody;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tamic/novate/request/NovateRequest$Builder;)Ljava/lang/Object;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    return-object p0
.end method

.method public build()Lcom/tamic/novate/request/NovateRequest;
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 338
    new-instance v0, Lcom/tamic/novate/request/NovateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/request/NovateRequest;-><init>(Lcom/tamic/novate/request/NovateRequest$Builder;Lcom/tamic/novate/request/NovateRequest$1;)V

    return-object v0

    .line 336
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 4

    .line 272
    invoke-virtual {p1}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_11

    .line 274
    invoke-virtual {p0, v1}, Lcom/tamic/novate/request/NovateRequest$Builder;->removeHeader(Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1

    .line 276
    :cond_11
    invoke-virtual {p0, v1, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 296
    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tamic/novate/request/NovateRequest$Builder;->delete(Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 292
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 280
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 284
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tamic/novate/request/NovateRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 237
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    const-string v3, ""

    goto :goto_2d

    :cond_27
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2d
    invoke-virtual {v2, v1, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_10

    :cond_31
    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 5

    if-eqz p1, :cond_5b

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_53

    .line 314
    const-string v0, "method "

    if-eqz p2, :cond_2c

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2c

    .line 315
    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must not have a request body."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2c
    :goto_2c
    if-nez p2, :cond_4e

    .line 317
    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_4e

    .line 318
    :cond_35
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must have a request body."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 320
    :cond_4e
    :goto_4e
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->method:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->body:Lokhttp3/RequestBody;

    return-object p0

    .line 312
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_5b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 304
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 288
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 300
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/request/NovateRequest$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 8

    if-eqz p1, :cond_65

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    :cond_45
    :goto_45
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 178
    invoke-virtual {p0, v0}, Lcom/tamic/novate/request/NovateRequest$Builder;->url(Lokhttp3/HttpUrl;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1

    .line 176
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_65
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/net/URL;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 5

    if-eqz p1, :cond_22

    .line 191
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 195
    invoke-virtual {p0, v0}, Lcom/tamic/novate/request/NovateRequest$Builder;->url(Lokhttp3/HttpUrl;)Lcom/tamic/novate/request/NovateRequest$Builder;

    move-result-object p1

    return-object p1

    .line 193
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Lokhttp3/HttpUrl;)Lcom/tamic/novate/request/NovateRequest$Builder;
    .registers 3

    if-eqz p1, :cond_d

    .line 152
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequest$Builder;->url:Ljava/lang/String;

    return-object p0

    .line 150
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
