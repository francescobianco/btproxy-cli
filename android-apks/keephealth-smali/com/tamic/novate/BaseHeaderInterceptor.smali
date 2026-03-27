.class public Lcom/tamic/novate/BaseHeaderInterceptor;
.super Lcom/tamic/novate/AbsRequestInterceptor;
.source "BaseHeaderInterceptor.java"


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
.field private headers:Ljava/util/Map;
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

    .line 44
    sget-object v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;->ADD:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-direct {p0, p1, v0}, Lcom/tamic/novate/BaseHeaderInterceptor;-><init>(Ljava/util/Map;Lcom/tamic/novate/AbsRequestInterceptor$Type;)V

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

    .line 48
    invoke-direct {p0}, Lcom/tamic/novate/AbsRequestInterceptor;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    .line 50
    iput-object p2, p0, Lcom/tamic/novate/AbsRequestInterceptor;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-void
.end method

.method private static getValueEncoded(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_5

    .line 62
    const-string p0, "null"

    return-object p0

    .line 64
    :cond_5
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2a

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_24

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 68
    :cond_24
    :goto_24
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2a
    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tamic/novate/BaseHeaderInterceptor;->interceptor(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method interceptor(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    if-eqz v0, :cond_83

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 80
    iget-object v0, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/tamic/novate/BaseHeaderInterceptor$1;->$SwitchMap$com$tamic$novate$AbsRequestInterceptor$Type:[I

    iget-object v2, p0, Lcom/tamic/novate/AbsRequestInterceptor;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-virtual {v2}, Lcom/tamic/novate/AbsRequestInterceptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    if-eq v1, v2, :cond_55

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    goto :goto_83

    .line 88
    :cond_27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_41

    move-object v2, v3

    goto :goto_4d

    :cond_41
    iget-object v2, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tamic/novate/BaseHeaderInterceptor;->getValueEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4d
    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    goto :goto_2b

    .line 83
    :cond_55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6f

    move-object v2, v3

    goto :goto_7b

    :cond_6f
    iget-object v2, p0, Lcom/tamic/novate/BaseHeaderInterceptor;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tamic/novate/BaseHeaderInterceptor;->getValueEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7b
    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    goto :goto_59

    .line 95
    :cond_83
    :goto_83
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
