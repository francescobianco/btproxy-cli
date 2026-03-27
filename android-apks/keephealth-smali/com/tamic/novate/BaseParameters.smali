.class public Lcom/tamic/novate/BaseParameters;
.super Lcom/tamic/novate/AbsRequestInterceptor;
.source "BaseParameters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/AbsRequestInterceptor;"
    }
.end annotation


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;->ADD:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-direct {p0, p1, v0}, Lcom/tamic/novate/BaseParameters;-><init>(Ljava/util/Map;Lcom/tamic/novate/AbsRequestInterceptor$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/tamic/novate/AbsRequestInterceptor$Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/AbsRequestInterceptor$Type;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/tamic/novate/AbsRequestInterceptor;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    .line 46
    iput-object p2, p0, Lcom/tamic/novate/BaseParameters;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tamic/novate/BaseParameters;->interceptor(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method interceptor(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 59
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    if-eqz v1, :cond_9e

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9e

    .line 63
    iget-object v1, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/tamic/novate/BaseParameters$1;->$SwitchMap$com$tamic$novate$AbsRequestInterceptor$Type:[I

    iget-object v3, p0, Lcom/tamic/novate/AbsRequestInterceptor;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-virtual {v3}, Lcom/tamic/novate/AbsRequestInterceptor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    if-eq v2, v3, :cond_74

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5c

    goto/16 :goto_9e

    .line 71
    :cond_32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    iget-object v5, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4c

    move-object v5, v4

    goto :goto_54

    :cond_4c
    iget-object v5, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_54
    invoke-virtual {v0, v3, v5}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    goto :goto_36

    .line 75
    :cond_5c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    goto :goto_60

    .line 66
    :cond_74
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8e

    move-object v3, v4

    goto :goto_96

    :cond_8e
    iget-object v3, p0, Lcom/tamic/novate/BaseParameters;->parameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_96
    invoke-virtual {v0, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    goto :goto_78

    .line 82
    :cond_9e
    :goto_9e
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
