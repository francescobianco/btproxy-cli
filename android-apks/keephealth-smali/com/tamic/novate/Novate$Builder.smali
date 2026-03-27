.class public final Lcom/tamic/novate/Novate$Builder;
.super Ljava/lang/Object;
.source "Novate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;

.field private REWRITE_CACHE_CONTROL_INTERCEPTOR_OFFLINE:Lokhttp3/Interceptor;

.field private adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Ljava/lang/String;

.field private cache:Lokhttp3/Cache;

.field private cacheMaxSize:J

.field private cacheTimeout:I

.field private callAdapterFactory:Lretrofit2/CallAdapter$Factory;

.field private callFactory:Lokhttp3/Call$Factory;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private certificateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private certificatePinner:Lokhttp3/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lokhttp3/ConnectionPool;

.field private context:Landroid/content/Context;

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private converterFactory:Lretrofit2/Converter$Factory;

.field private cookieManager:Lcom/tamic/novate/cookie/NovateCookieManager;

.field private default_keep_aliveduration:J

.field private default_maxidle_connections:I

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpCacheDirectory:Ljava/io/File;

.field private isCache:Ljava/lang/Boolean;

.field private isCookie:Ljava/lang/Boolean;

.field private isLog:Ljava/lang/Boolean;

.field private isSkip:Ljava/lang/Boolean;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private tag:Ljava/lang/Object;

.field private validateEagerly:Z

.field private writeTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 1607
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->connectTimeout:I

    .line 1608
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->writeTimeout:I

    .line 1609
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    const/4 v0, 0x5

    .line 1610
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->default_maxidle_connections:I

    const-wide/16 v0, 0x8

    .line 1611
    iput-wide v0, p0, Lcom/tamic/novate/Novate$Builder;->default_keep_aliveduration:J

    const-wide/32 v0, 0xa00000

    .line 1612
    iput-wide v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheMaxSize:J

    .line 1613
    # getter for: Lcom/tamic/novate/Novate;->DEFAULT_MAX_STALE:I
    invoke-static {}, Lcom/tamic/novate/Novate;->access$100()I

    move-result v0

    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheTimeout:I

    const/4 v0, 0x0

    .line 1616
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isLog:Ljava/lang/Boolean;

    .line 1618
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isCookie:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 1619
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tamic/novate/Novate$Builder;->isCache:Ljava/lang/Boolean;

    .line 1620
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isSkip:Ljava/lang/Boolean;

    .line 1624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->converterFactories:Ljava/util/List;

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->adapterFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 1630
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    .line 1643
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    # setter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {v0}, Lcom/tamic/novate/Novate;->access$202(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    .line 1644
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    # setter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {v0}, Lcom/tamic/novate/Novate;->access$302(Lretrofit2/Retrofit$Builder;)Lretrofit2/Retrofit$Builder;

    .line 1645
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5d

    .line 1646
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    goto :goto_5f

    .line 1648
    :cond_5d
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    :goto_5f
    return-void
.end method

.method public constructor <init>(Lcom/tamic/novate/Novate;)V
    .registers 4

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 1607
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->connectTimeout:I

    .line 1608
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->writeTimeout:I

    .line 1609
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    const/4 v0, 0x5

    .line 1610
    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->default_maxidle_connections:I

    const-wide/16 v0, 0x8

    .line 1611
    iput-wide v0, p0, Lcom/tamic/novate/Novate$Builder;->default_keep_aliveduration:J

    const-wide/32 v0, 0xa00000

    .line 1612
    iput-wide v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheMaxSize:J

    .line 1613
    # getter for: Lcom/tamic/novate/Novate;->DEFAULT_MAX_STALE:I
    invoke-static {}, Lcom/tamic/novate/Novate;->access$100()I

    move-result v0

    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheTimeout:I

    const/4 v0, 0x0

    .line 1616
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isLog:Ljava/lang/Boolean;

    .line 1618
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isCookie:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 1619
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tamic/novate/Novate$Builder;->isCache:Ljava/lang/Boolean;

    .line 1620
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isSkip:Ljava/lang/Boolean;

    .line 1624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->converterFactories:Ljava/util/List;

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->adapterFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 1630
    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    .line 1653
    # getter for: Lcom/tamic/novate/Novate;->callFactory:Lokhttp3/Call$Factory;
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$400(Lcom/tamic/novate/Novate;)Lokhttp3/Call$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 1654
    # getter for: Lcom/tamic/novate/Novate;->baseUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$500(Lcom/tamic/novate/Novate;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->baseUrl:Ljava/lang/String;

    .line 1655
    # getter for: Lcom/tamic/novate/Novate;->converterFactories:Ljava/util/List;
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$600(Lcom/tamic/novate/Novate;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->converterFactories:Ljava/util/List;

    .line 1656
    # getter for: Lcom/tamic/novate/Novate;->adapterFactories:Ljava/util/List;
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$700(Lcom/tamic/novate/Novate;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->adapterFactories:Ljava/util/List;

    .line 1657
    # getter for: Lcom/tamic/novate/Novate;->callbackExecutor:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$800(Lcom/tamic/novate/Novate;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 1658
    # getter for: Lcom/tamic/novate/Novate;->validateEagerly:Z
    invoke-static {p1}, Lcom/tamic/novate/Novate;->access$900(Lcom/tamic/novate/Novate;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tamic/novate/Novate$Builder;->validateEagerly:Z

    .line 1659
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private addCache(Lokhttp3/Cache;Ljava/lang/String;)Lcom/tamic/novate/Novate$Builder;
    .registers 5

    .line 2047
    new-instance v0, Lcom/tamic/novate/CacheInterceptor;

    # getter for: Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1000()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tamic/novate/CacheInterceptor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;

    .line 2048
    new-instance v0, Lcom/tamic/novate/CacheInterceptorOffline;

    # getter for: Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1000()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tamic/novate/CacheInterceptorOffline;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->REWRITE_CACHE_CONTROL_INTERCEPTOR_OFFLINE:Lokhttp3/Interceptor;

    .line 2049
    iget-object p2, p0, Lcom/tamic/novate/Novate$Builder;->REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;

    invoke-virtual {p0, p2}, Lcom/tamic/novate/Novate$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lcom/tamic/novate/Novate$Builder;

    .line 2050
    iget-object p2, p0, Lcom/tamic/novate/Novate$Builder;->REWRITE_CACHE_CONTROL_INTERCEPTOR_OFFLINE:Lokhttp3/Interceptor;

    invoke-virtual {p0, p2}, Lcom/tamic/novate/Novate$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lcom/tamic/novate/Novate$Builder;

    .line 2051
    iget-object p2, p0, Lcom/tamic/novate/Novate$Builder;->REWRITE_CACHE_CONTROL_INTERCEPTOR_OFFLINE:Lokhttp3/Interceptor;

    invoke-virtual {p0, p2}, Lcom/tamic/novate/Novate$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lcom/tamic/novate/Novate$Builder;

    .line 2052
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    return-object p0
.end method


# virtual methods
.method public addCache(Lokhttp3/Cache;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 2027
    iget v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheTimeout:I

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/Novate$Builder;->addCache(Lokhttp3/Cache;I)Lcom/tamic/novate/Novate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addCache(Lokhttp3/Cache;I)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    .line 2036
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "max-age=%d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tamic/novate/Novate$Builder;->addCache(Lokhttp3/Cache;Ljava/lang/String;)Lcom/tamic/novate/Novate$Builder;

    return-object p0
.end method

.method public addCache(Z)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1776
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->isCache:Ljava/lang/Boolean;

    return-object p0
.end method

.method public addCacheMaxSize(I)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    int-to-long v0, p1

    .line 1765
    iput-wide v0, p0, Lcom/tamic/novate/Novate$Builder;->cacheMaxSize:J

    return-object p0
.end method

.method public addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1870
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->callAdapterFactory:Lretrofit2/CallAdapter$Factory;

    return-object p0
.end method

.method public addCertificatePinner(Lokhttp3/CertificatePinner;)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1987
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object p0
.end method

.method public addConverterFactory(Lretrofit2/Converter$Factory;)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1861
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->converterFactory:Lretrofit2/Converter$Factory;

    return-object p0
.end method

.method public addCookie(Z)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1752
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->isCookie:Ljava/lang/Boolean;

    return-object p0
.end method

.method public addHeader(Ljava/util/Map;)Lcom/tamic/novate/Novate$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/tamic/novate/Novate$Builder;"
        }
    .end annotation

    .line 1887
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/BaseHeaderInterceptor;

    const-string v2, "header == null"

    invoke-static {p1, v2}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Lcom/tamic/novate/BaseHeaderInterceptor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public addHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1979
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    .line 1914
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v1, "interceptor == null"

    invoke-static {p1, v1}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public addLog(Z)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1740
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->isLog:Ljava/lang/Boolean;

    return-object p0
.end method

.method public addNetworkInterceptor(Lokhttp3/Interceptor;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    if-eqz p1, :cond_a

    .line 2016
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0

    .line 2014
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameters(Ljava/util/Map;)Lcom/tamic/novate/Novate$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/tamic/novate/Novate$Builder;"
        }
    .end annotation

    .line 1904
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/BaseParameters;

    const-string v2, "parameters == null"

    invoke-static {p1, v2}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Lcom/tamic/novate/BaseParameters;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public addSSL([Ljava/lang/String;[I)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_15

    .line 2007
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tamic/novate/NovateHttpsFactroy;->getSSLSocketFactory(Landroid/content/Context;[I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tamic/novate/Novate$Builder;->addSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/tamic/novate/Novate$Builder;

    .line 2008
    invoke-static {p1}, Lcom/tamic/novate/NovateHttpsFactroy;->getHostnameVerifier([Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tamic/novate/Novate$Builder;->addHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/tamic/novate/Novate$Builder;

    return-object p0

    .line 2003
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ids == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2000
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "hosts == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1968
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0

    .line 1966
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public baseUrl(Ljava/lang/String;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1853
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/tamic/novate/Novate;
    .registers 12

    .line 2064
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_211

    .line 2068
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz v0, :cond_209

    .line 2072
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    if-eqz v0, :cond_201

    .line 2076
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    # setter for: Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tamic/novate/Novate;->access$1002(Landroid/content/Context;)Landroid/content/Context;

    .line 2080
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tamic/novate/config/ConfigLoader;->init(Landroid/content/Context;)V

    .line 2086
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 2089
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->converterFactory:Lretrofit2/Converter$Factory;

    if-nez v0, :cond_2d

    .line 2090
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->converterFactory:Lretrofit2/Converter$Factory;

    .line 2093
    :cond_2d
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->converterFactory:Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 2098
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->callAdapterFactory:Lretrofit2/CallAdapter$Factory;

    if-nez v0, :cond_40

    .line 2099
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->callAdapterFactory:Lretrofit2/CallAdapter$Factory;

    .line 2101
    :cond_40
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->callAdapterFactory:Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 2103
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/tamic/novate/util/LogWraper;->setDebug(Z)V

    .line 2105
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_64

    .line 2106
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/request/RequestInterceptor;

    iget-object v2, p0, Lcom/tamic/novate/Novate$Builder;->tag:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/tamic/novate/request/RequestInterceptor;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2109
    :cond_64
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2110
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 2111
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 2110
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2113
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 2114
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 2113
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2117
    :cond_90
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isSkip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2118
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/tamic/novate/NovateHttpsFactroy;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 2119
    invoke-static {}, Lcom/tamic/novate/NovateHttpsFactroy;->creatX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 2118
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 2121
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/tamic/novate/NovateHttpsFactroy;->creatSkipHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 2124
    :cond_b2
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isSkip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c7

    .line 2125
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 2128
    :cond_c7
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_d4

    .line 2129
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 2132
    :cond_d4
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->httpCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_e9

    .line 2133
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Novate_Http_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->httpCacheDirectory:Ljava/io/File;

    .line 2136
    :cond_e9
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 2138
    :try_start_f1
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    if-nez v0, :cond_100

    .line 2139
    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->httpCacheDirectory:Ljava/io/File;

    iget-wide v2, p0, Lcom/tamic/novate/Novate$Builder;->cacheMaxSize:J

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    .line 2141
    :cond_100
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    invoke-virtual {p0, v0}, Lcom/tamic/novate/Novate$Builder;->addCache(Lokhttp3/Cache;)Lcom/tamic/novate/Novate$Builder;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_105} :catch_106

    goto :goto_10e

    :catch_106
    move-exception v0

    .line 2144
    const-string v1, "OKHttp"

    const-string v2, "Could not create http cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2146
    :goto_10e
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    if-nez v0, :cond_11d

    .line 2147
    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->httpCacheDirectory:Ljava/io/File;

    iget-wide v2, p0, Lcom/tamic/novate/Novate$Builder;->cacheMaxSize:J

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    .line 2151
    :cond_11d
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    if-eqz v0, :cond_12a

    .line 2152
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->cache:Lokhttp3/Cache;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 2176
    :cond_12a
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    if-nez v0, :cond_13b

    .line 2177
    new-instance v0, Lokhttp3/ConnectionPool;

    iget v1, p0, Lcom/tamic/novate/Novate$Builder;->default_maxidle_connections:I

    iget-wide v2, p0, Lcom/tamic/novate/Novate$Builder;->default_keep_aliveduration:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 2179
    :cond_13b
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 2186
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_151

    .line 2187
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 2196
    :cond_151
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isCookie:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cookieManager:Lcom/tamic/novate/cookie/NovateCookieManager;

    if-nez v0, :cond_175

    .line 2197
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/cookie/NovateCookieManager;

    new-instance v2, Lcom/tamic/novate/cache/CookieCacheImpl;

    invoke-direct {v2}, Lcom/tamic/novate/cache/CookieCacheImpl;-><init>()V

    new-instance v3, Lcom/tamic/novate/cookie/SharedPrefsCookiePersistor;

    iget-object v4, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tamic/novate/cookie/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/tamic/novate/cookie/NovateCookieManager;-><init>(Lcom/tamic/novate/cache/CookieCache;Lcom/tamic/novate/cookie/CookiePersistor;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 2201
    :cond_175
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->isCookie:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 2207
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;

    iget-object v2, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2208
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/cookie/AddCookiesInterceptor;

    iget-object v2, p0, Lcom/tamic/novate/Novate$Builder;->context:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/tamic/novate/cookie/AddCookiesInterceptor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 2211
    :cond_19b
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->cookieManager:Lcom/tamic/novate/cookie/NovateCookieManager;

    if-eqz v0, :cond_1a8

    .line 2212
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->cookieManager:Lcom/tamic/novate/cookie/NovateCookieManager;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 2218
    :cond_1a8
    iget-object v0, p0, Lcom/tamic/novate/Novate$Builder;->callFactory:Lokhttp3/Call$Factory;

    if-eqz v0, :cond_1b5

    .line 2219
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$Builder;->callFactory:Lokhttp3/Call$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    .line 2226
    :cond_1b5
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    # setter for: Lcom/tamic/novate/Novate;->okHttpClient:Lokhttp3/OkHttpClient;
    invoke-static {v0}, Lcom/tamic/novate/Novate;->access$1102(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;

    .line 2231
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    # getter for: Lcom/tamic/novate/Novate;->okHttpClient:Lokhttp3/OkHttpClient;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1100()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 2236
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    # setter for: Lcom/tamic/novate/Novate;->retrofit:Lretrofit2/Retrofit;
    invoke-static {v0}, Lcom/tamic/novate/Novate;->access$1202(Lretrofit2/Retrofit;)Lretrofit2/Retrofit;

    .line 2241
    # getter for: Lcom/tamic/novate/Novate;->retrofit:Lretrofit2/Retrofit;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1200()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/tamic/novate/BaseApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tamic/novate/BaseApiService;

    sput-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    .line 2243
    new-instance v0, Lcom/tamic/novate/Novate;

    iget-object v2, p0, Lcom/tamic/novate/Novate$Builder;->callFactory:Lokhttp3/Call$Factory;

    iget-object v3, p0, Lcom/tamic/novate/Novate$Builder;->baseUrl:Ljava/lang/String;

    # getter for: Lcom/tamic/novate/Novate;->headers:Ljava/util/Map;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1300()Ljava/util/Map;

    move-result-object v4

    # getter for: Lcom/tamic/novate/Novate;->parameters:Ljava/util/Map;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$1400()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    iget-object v7, p0, Lcom/tamic/novate/Novate$Builder;->converterFactories:Ljava/util/List;

    iget-object v8, p0, Lcom/tamic/novate/Novate$Builder;->adapterFactories:Ljava/util/List;

    iget-object v9, p0, Lcom/tamic/novate/Novate$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v10, p0, Lcom/tamic/novate/Novate$Builder;->validateEagerly:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/tamic/novate/Novate;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tamic/novate/BaseApiService;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0

    .line 2073
    :cond_201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retrofitBuilder required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2069
    :cond_209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "okhttpBuilder required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2065
    :cond_211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callFactory(Lokhttp3/Call$Factory;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1693
    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Call$Factory;

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->callFactory:Lokhttp3/Call$Factory;

    return-object p0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1926
    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    .line 1673
    # getter for: Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$300()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "client == null"

    invoke-static {p1, v1}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    return-object p0
.end method

.method public connectTimeout(I)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1703
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/Novate$Builder;->connectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public connectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;
    .registers 6

    .line 1838
    const-string v0, "timeout"

    int-to-long v1, p1

    invoke-static {v0, v1, v2, p2}, Lcom/tamic/novate/util/Utils;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    if-ltz p1, :cond_17

    .line 1840
    iput p1, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    .line 1841
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_17
    return-object p0
.end method

.method public connectionPool(Lokhttp3/ConnectionPool;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1827
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-object p0

    .line 1825
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "connectionPool == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cookieManager(Lcom/tamic/novate/cookie/NovateCookieManager;)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1949
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->cookieManager:Lcom/tamic/novate/cookie/NovateCookieManager;

    return-object p0

    .line 1947
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieManager == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public header(Ljava/util/Map;)Lcom/tamic/novate/Novate$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/tamic/novate/Novate$Builder;"
        }
    .end annotation

    .line 1878
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/BaseHeaderInterceptor;

    const-string v2, "header == null"

    invoke-static {p1, v2}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    sget-object v2, Lcom/tamic/novate/AbsRequestInterceptor$Type;->UPDATE:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-direct {v1, p1, v2}, Lcom/tamic/novate/BaseHeaderInterceptor;-><init>(Ljava/util/Map;Lcom/tamic/novate/AbsRequestInterceptor$Type;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public parameters(Ljava/util/Map;)Lcom/tamic/novate/Novate$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/tamic/novate/Novate$Builder;"
        }
    .end annotation

    .line 1895
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/BaseParameters;

    const-string v2, "parameters == null"

    invoke-static {p1, v2}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    sget-object v2, Lcom/tamic/novate/AbsRequestInterceptor$Type;->UPDATE:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-direct {v1, p1, v2}, Lcom/tamic/novate/BaseParameters;-><init>(Ljava/util/Map;Lcom/tamic/novate/AbsRequestInterceptor$Type;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/tamic/novate/Novate$Builder;
    .registers 4

    .line 1781
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->proxy:Ljava/net/Proxy;

    .line 1782
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v1, "proxy == null"

    invoke-static {p1, v1}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Proxy;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public readTimeout(I)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1721
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/Novate$Builder;->readTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;
    .registers 5

    .line 1807
    iget v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    if-lez v0, :cond_10

    .line 1808
    iput p1, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    .line 1809
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget v0, p0, Lcom/tamic/novate/Novate$Builder;->readTimeout:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_10
    return-object p0
.end method

.method public skipSSLSocketFactory(Z)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1957
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->isSkip:Ljava/lang/Boolean;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1729
    iput-object p1, p0, Lcom/tamic/novate/Novate$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public validateEagerly(Z)Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1935
    iput-boolean p1, p0, Lcom/tamic/novate/Novate$Builder;->validateEagerly:Z

    return-object p0
.end method

.method public writeTimeout(I)Lcom/tamic/novate/Novate$Builder;
    .registers 3

    .line 1712
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/Novate$Builder;->writeTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public writeTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/tamic/novate/Novate$Builder;
    .registers 6

    .line 1793
    iput p1, p0, Lcom/tamic/novate/Novate$Builder;->writeTimeout:I

    if-ltz p1, :cond_c

    .line 1795
    # getter for: Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;
    invoke-static {}, Lcom/tamic/novate/Novate;->access$200()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :cond_c
    return-object p0
.end method
