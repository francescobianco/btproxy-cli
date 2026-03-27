.class public final Lcom/tamic/novate/Novate;
.super Ljava/lang/Object;
.source "Novate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/Novate$ResponseCallBack;,
        Lcom/tamic/novate/Novate$RetryWithDelay;,
        Lcom/tamic/novate/Novate$Builder;,
        Lcom/tamic/novate/Novate$HandleFuc;,
        Lcom/tamic/novate/Novate$HttpResponseFunc;,
        Lcom/tamic/novate/Novate$OndoTransformer;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHEMAXSIZE:J = 0xa00000L

.field private static final DEFAULT_KEEP_ALIVEDURATION:J = 0x8L

.field private static final DEFAULT_MAXIDLE_CONNECTIONS:I = 0x5

.field private static DEFAULT_MAX_STALE:I = 0x3f480

.field private static final DEFAULT_TIMEOUT:I = 0xf

.field public static final KEY_CACHE:Ljava/lang/String; = "Novate_Http_cache"

.field public static final TAG:Ljava/lang/String; = "Novate"

.field public static apiManager:Lcom/tamic/novate/BaseApiService;

.field private static headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static okHttpClient:Lokhttp3/OkHttpClient;

.field private static okhttpBuilder:Lokhttp3/OkHttpClient$Builder;

.field private static parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static retrofit:Lretrofit2/Retrofit;

.field private static retrofitBuilder:Lretrofit2/Retrofit$Builder;


# instance fields
.field private final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final baseUrl:Ljava/lang/String;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private downMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;>;"
        }
    .end annotation
.end field

.field private downObservable:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private exceptTransformer:Lrx/Observable$Transformer;

.field final onDdoTransformer:Lrx/Observable$Transformer;

.field final schedulersTransformer:Lrx/Observable$Transformer;

.field final schedulersTransformerDown:Lrx/Observable$Transformer;

.field private final validateEagerly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tamic/novate/BaseApiService;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tamic/novate/BaseApiService;",
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;",
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/tamic/novate/Novate$1;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$1;-><init>(Lcom/tamic/novate/Novate;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/tamic/novate/Novate;->exceptTransformer:Lrx/Observable$Transformer;

    .line 1000
    new-instance v0, Lcom/tamic/novate/Novate$2;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$2;-><init>(Lcom/tamic/novate/Novate;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate;->onDdoTransformer:Lrx/Observable$Transformer;

    .line 1048
    new-instance v0, Lcom/tamic/novate/Novate$3;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$3;-><init>(Lcom/tamic/novate/Novate;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1063
    new-instance v0, Lcom/tamic/novate/Novate$4;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$4;-><init>(Lcom/tamic/novate/Novate;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformerDown:Lrx/Observable$Transformer;

    .line 141
    iput-object p1, p0, Lcom/tamic/novate/Novate;->callFactory:Lokhttp3/Call$Factory;

    .line 142
    iput-object p2, p0, Lcom/tamic/novate/Novate;->baseUrl:Ljava/lang/String;

    .line 143
    sput-object p3, Lcom/tamic/novate/Novate;->headers:Ljava/util/Map;

    .line 144
    sput-object p4, Lcom/tamic/novate/Novate;->parameters:Ljava/util/Map;

    .line 145
    sput-object p5, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    .line 146
    iput-object p6, p0, Lcom/tamic/novate/Novate;->converterFactories:Ljava/util/List;

    .line 147
    iput-object p7, p0, Lcom/tamic/novate/Novate;->adapterFactories:Ljava/util/List;

    .line 148
    iput-object p8, p0, Lcom/tamic/novate/Novate;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 149
    iput-boolean p9, p0, Lcom/tamic/novate/Novate;->validateEagerly:Z

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 104
    sget v0, Lcom/tamic/novate/Novate;->DEFAULT_MAX_STALE:I

    return v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 104
    sput-object p0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100()Lokhttp3/OkHttpClient;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$1102(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 104
    sput-object p0, Lcom/tamic/novate/Novate;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$1200()Lretrofit2/Retrofit;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method static synthetic access$1202(Lretrofit2/Retrofit;)Lretrofit2/Retrofit;
    .registers 1

    .line 104
    sput-object p0, Lcom/tamic/novate/Novate;->retrofit:Lretrofit2/Retrofit;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lokhttp3/OkHttpClient$Builder;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method static synthetic access$202(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .registers 1

    .line 104
    sput-object p0, Lcom/tamic/novate/Novate;->okhttpBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method static synthetic access$300()Lretrofit2/Retrofit$Builder;
    .registers 1

    .line 104
    sget-object v0, Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method static synthetic access$302(Lretrofit2/Retrofit$Builder;)Lretrofit2/Retrofit$Builder;
    .registers 1

    .line 104
    sput-object p0, Lcom/tamic/novate/Novate;->retrofitBuilder:Lretrofit2/Retrofit$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tamic/novate/Novate;)Lokhttp3/Call$Factory;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/tamic/novate/Novate;->callFactory:Lokhttp3/Call$Factory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tamic/novate/Novate;)Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/tamic/novate/Novate;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tamic/novate/Novate;)Ljava/util/List;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/tamic/novate/Novate;->converterFactories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tamic/novate/Novate;)Ljava/util/List;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/tamic/novate/Novate;->adapterFactories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tamic/novate/Novate;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/tamic/novate/Novate;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tamic/novate/Novate;)Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/tamic/novate/Novate;->validateEagerly:Z

    return p0
.end method

.method private call(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tamic/novate/request/NovateRequest;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/tamic/novate/Novate;->createRx(Lcom/tamic/novate/request/NovateRequest;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 236
    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 237
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private createRx(Lcom/tamic/novate/request/NovateRequest;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tamic/novate/request/NovateRequest;",
            ")",
            "Lrx/Observable<",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 249
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->params()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 251
    :cond_1b
    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 252
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->params()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tamic/novate/BaseApiService;->executePost(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 255
    :cond_36
    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 256
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->params()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tamic/novate/BaseApiService;->executePut(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 259
    :cond_51
    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 260
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->params()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tamic/novate/BaseApiService;->executeDelete(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 262
    :cond_6c
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->params()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method private executeDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1575
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2}, Lcom/tamic/novate/BaseApiService;->downloadFile(Ljava/lang/String;)Lrx/Observable;

    move-result-object p2

    iput-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    goto :goto_1b

    .line 1577
    :cond_11
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrx/Observable;

    iput-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    .line 1579
    :goto_1b
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    iget-object v0, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    iget-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformerDown:Lrx/Observable$Transformer;

    invoke-virtual {p2, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 1593
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance v6, Lcom/tamic/novate/download/DownSubscriber;

    sget-object v5, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tamic/novate/download/DownSubscriber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;Landroid/content/Context;)V

    .line 1594
    invoke-virtual {p2, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public body(Ljava/lang/String;Ljava/lang/Object;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 1236
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePostBody(Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1237
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1238
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1239
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method public call(Lrx/Observable;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lcom/tamic/novate/callback/ResponseCallback;",
            ")TT;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/RxSubscriber;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/tamic/novate/Novate;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1297
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executeDelete(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1298
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1299
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1300
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1473
    invoke-static {p1}, Lcom/tamic/novate/util/FileUtil;->getFileNameWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tamic/novate/Novate;->download(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1482
    invoke-static {p1, p2}, Lcom/tamic/novate/util/FileUtil;->generateFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1552
    invoke-static {p2}, Lcom/tamic/novate/util/FileUtil;->getFileNameWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tamic/novate/util/FileUtil;->generateFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1554
    invoke-direct/range {v0 .. v5}, Lcom/tamic/novate/Novate;->executeDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public downloadMin(Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1492
    invoke-static {p1}, Lcom/tamic/novate/util/FileUtil;->getFileNameWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tamic/novate/util/FileUtil;->generateFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tamic/novate/Novate;->downloadMin(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public downloadMin(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1503
    invoke-static {p2}, Lcom/tamic/novate/util/FileUtil;->getFileNameWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tamic/novate/Novate;->downloadMin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public downloadMin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1515
    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->downloadMin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public downloadMin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/download/DownLoadCallBack;",
            ")TT;"
        }
    .end annotation

    .line 1529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1530
    invoke-static {p2}, Lcom/tamic/novate/util/FileUtil;->getFileNameWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tamic/novate/util/FileUtil;->generateFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    move-object v1, p1

    .line 1533
    iget-object p1, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_20

    .line 1534
    sget-object p1, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {p1, p2}, Lcom/tamic/novate/BaseApiService;->downloadSmallFile(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    goto :goto_2a

    .line 1536
    :cond_20
    iget-object p1, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;

    iput-object p1, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    .line 1538
    :goto_2a
    iget-object p1, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    iget-object v0, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1539
    invoke-direct/range {v0 .. v5}, Lcom/tamic/novate/Novate;->executeDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tamic/novate/request/NovateRequest;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/tamic/novate/Novate;->call(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tamic/novate/request/NovateRequest;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/tamic/novate/RxSubscriber;

    invoke-virtual {p1}, Lcom/tamic/novate/request/NovateRequest;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/tamic/novate/Novate;->call(Lcom/tamic/novate/request/NovateRequest;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeBody(Ljava/lang/String;Ljava/lang/Object;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1249
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 1250
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePostBody(Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1251
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1252
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1253
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executeDelete(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1310
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 1312
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executeDelete(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1313
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1314
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1315
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executeForm(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1221
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postForm(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1222
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1223
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1224
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executeGet(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 989
    sget-object p1, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {p1, p2, p3}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 990
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 991
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object p3, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p4}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 992
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executeGet(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 275
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 276
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 277
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executeJson(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->createJson(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1282
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1283
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1284
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executePost(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1193
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePost(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1194
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1195
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1196
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public executePut(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/Novate$ResponseCallBack;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1342
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePut(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1343
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1344
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/NovateSubscriber;

    sget-object v0, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p3}, Lcom/tamic/novate/NovateSubscriber;-><init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V

    .line 1345
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/lang/String;Ljava/util/Map;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1207
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postForm(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1208
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1209
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1210
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1139
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1140
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1141
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1142
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public handleErrTransformer()Lrx/Observable$Transformer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable$Transformer<",
            "Lcom/tamic/novate/NovateResponse<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/tamic/novate/Novate;->exceptTransformer:Lrx/Observable$Transformer;

    if-eqz v0, :cond_5

    return-object v0

    .line 1085
    :cond_5
    new-instance v0, Lcom/tamic/novate/Novate$5;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$5;-><init>(Lcom/tamic/novate/Novate;)V

    iput-object v0, p0, Lcom/tamic/novate/Novate;->exceptTransformer:Lrx/Observable$Transformer;

    return-object v0
.end method

.method public json(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1266
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->createJson(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1267
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1268
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1269
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lcom/tamic/novate/Novate$Builder;
    .registers 2

    .line 1599
    new-instance v0, Lcom/tamic/novate/Novate$Builder;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$Builder;-><init>(Lcom/tamic/novate/Novate;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1179
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePost(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1180
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1181
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1182
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/BaseSubscriber;)Ljava/lang/Object;
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/BaseSubscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1328
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executePut(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1329
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1330
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1331
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxBody(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->executePostBody(Ljava/lang/String;Ljava/lang/Object;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 944
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 945
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 946
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxBody(Ljava/lang/String;Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 929
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxBody(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->executeDelete(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 429
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 430
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxDelete(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxDelete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxDownload(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/callback/ResponseCallback;",
            ")TT;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 878
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2}, Lcom/tamic/novate/BaseApiService;->downloadFile(Ljava/lang/String;)Lrx/Observable;

    move-result-object p2

    iput-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    goto :goto_1b

    .line 880
    :cond_11
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrx/Observable;

    iput-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    .line 882
    :goto_1b
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downMaps:Ljava/util/Map;

    iget-object v0, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object p2, p0, Lcom/tamic/novate/Novate;->downObservable:Lrx/Observable;

    iget-object v0, p0, Lcom/tamic/novate/Novate;->schedulersTransformerDown:Lrx/Observable$Transformer;

    invoke-virtual {p2, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 884
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {v0, p1, p3}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    .line 885
    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxDownload(Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/callback/ResponseCallback;",
            ")TT;"
        }
    .end annotation

    .line 854
    invoke-virtual {p0, p1, p1, p2}, Lcom/tamic/novate/Novate;->rxDownload(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxForm(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 913
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->postForm(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 914
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 915
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    .line 916
    invoke-virtual {p2, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxForm(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 899
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxForm(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxGet(Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, p1, v0, p2}, Lcom/tamic/novate/Novate;->rxGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_2f

    .line 334
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/Novate$OndoTransformer;

    invoke-direct {p3, p0, p1, p4}, Lcom/tamic/novate/Novate$OndoTransformer;-><init>(Lcom/tamic/novate/Novate;Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    .line 335
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 336
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 337
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 332
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, " maps is not null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rxGet(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->executeGet(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public rxJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 974
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-static {p3}, Lcom/tamic/novate/util/Utils;->createJson(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 975
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 976
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 977
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxJson(Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 960
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->executePost(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 366
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 367
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxPost(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 351
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->executePut(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 398
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 399
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 400
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxPut(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
            encoded = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxPut(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUpload(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3, p4}, Lcom/tamic/novate/BaseApiService;->uploadFlie(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 547
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 548
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p5}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUpload(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 531
    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUpload(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/ContentType;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 596
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p5, :cond_a

    .line 601
    sget-object p5, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    .line 603
    :cond_a
    invoke-virtual {p5, p1}, Lcom/tamic/novate/callback/ResponseCallback;->setTag(Ljava/lang/Object;)V

    .line 604
    invoke-static {p4, p3, p5}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/tamic/novate/Novate;->rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 597
    :cond_16
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "file \u8def\u5f84\u65e0\u6cd5\u627e\u5230"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 582
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 633
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 634
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 635
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBody(Ljava/lang/String;Lcom/tamic/novate/request/NovateRequestBody;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/request/NovateRequestBody;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 618
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBody(Ljava/lang/String;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 565
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithBody(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBodyMap(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 812
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFiles(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 813
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 814
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 815
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBodyMap(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxUploadWithBodyMap(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBodyMapByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/ContentType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 773
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p5, :cond_9

    .line 776
    sget-object p5, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    :cond_9
    if-eqz p4, :cond_56

    .line 779
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 780
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 782
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 784
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 785
    invoke-static {v3}, Lcom/tamic/novate/util/FileUtil;->exists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 788
    invoke-static {v3, p3, p5}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object v3

    .line 789
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 786
    :cond_39
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "file \u8def\u5f84\u65e0\u6cd5\u627e\u5230"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 794
    :cond_56
    sget-object p3, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {p3, p2, v0}, Lcom/tamic/novate/BaseApiService;->uploadFiles(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 795
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 796
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p5}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBodyMapByFile(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 759
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithBodyMapByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithBodyMapByFile(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 745
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithBodyMapByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/ContentType;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 476
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p5, :cond_a

    .line 480
    sget-object p5, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    .line 482
    :cond_a
    invoke-static {p4, p3, p5}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object p3

    .line 483
    const-string v0, "image"

    .line 484
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4, p3}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    .line 486
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/tamic/novate/Novate;->rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 477
    :cond_1d
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "file \u8def\u5f84\u65e0\u6cd5\u627e\u5230"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 514
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFlieWithPart(Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 515
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 516
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPart(Ljava/lang/String;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 462
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 447
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/io/File;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPart(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxUploadWithPart(Ljava/lang/Object;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartListByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/List;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/ContentType;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    if-nez p5, :cond_4

    .line 727
    sget-object p5, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    .line 729
    :cond_4
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    const-string v1, "image"

    invoke-static {v1, p4, p3, p5}, Lcom/tamic/novate/util/Utils;->createPartLists(Ljava/lang/String;Ljava/util/List;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFlieWithPartList(Ljava/lang/String;Ljava/util/List;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 730
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 731
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p5}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 732
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartListByFile(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 711
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithPartListByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/List;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartListByFile(Ljava/lang/String;Ljava/util/List;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 697
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithPartListByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/List;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartMap(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 842
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFlieWithPartMap(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 843
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 844
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p4}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 845
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartMap(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 828
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/tamic/novate/Novate;->rxUploadWithPartMap(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartMapByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/tamic/novate/ContentType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    if-nez p5, :cond_4

    .line 679
    sget-object p5, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    .line 681
    :cond_4
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    const-string v1, "image"

    invoke-static {v1, p4, p3, p5}, Lcom/tamic/novate/util/Utils;->createParts(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFlieWithPartMap(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 682
    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    .line 683
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p2

    new-instance p3, Lcom/tamic/novate/RxSubscriber;

    invoke-direct {p3, p1, p5}, Lcom/tamic/novate/RxSubscriber;-><init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V

    sget-object p1, Lcom/tamic/novate/Novate;->mContext:Landroid/content/Context;

    .line 684
    invoke-virtual {p3, p1}, Lcom/tamic/novate/RxSubscriber;->addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;

    move-result-object p1

    invoke-virtual {p2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public rxUploadWithPartMapByFile(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 648
    sget-object v3, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/Novate;->rxUploadWithPartMapByFile(Ljava/lang/Object;Ljava/lang/String;Lcom/tamic/novate/ContentType;Ljava/util/Map;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public schedulersIo(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 196
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 197
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 198
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public schedulersMain(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 207
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 208
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 209
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public test(Ljava/lang/String;Ljava/util/Map;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1359
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->getTest(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1360
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1361
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/tamic/novate/Novate$RetryWithDelay;

    const/4 v0, 0x3

    const/16 v1, 0xbb8

    invoke-direct {p2, p0, v0, v1}, Lcom/tamic/novate/Novate$RetryWithDelay;-><init>(Lcom/tamic/novate/Novate;II)V

    .line 1362
    invoke-virtual {p1, p2}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 1363
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Lokhttp3/RequestBody;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1376
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1377
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1378
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1379
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public uploadFileWithPartMap(Ljava/lang/String;Ljava/util/Map;Lokhttp3/MultipartBody$Part;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 6
    .param p3    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
            value = "file"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Lokhttp3/MultipartBody$Part;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1458
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFileWithPartMap(Ljava/lang/String;Ljava/util/Map;Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1459
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1460
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1461
    invoke-virtual {p1, p4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public uploadFlie(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1424
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/tamic/novate/BaseApiService;->uploadFlie(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1425
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1426
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1427
    invoke-virtual {p1, p4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public uploadFlie(Ljava/lang/String;Lokhttp3/RequestBody;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1408
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->postRequestBody(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1409
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1410
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1411
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public uploadFlies(Ljava/lang/String;Ljava/util/Map;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1439
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->uploadFiles(Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1440
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1441
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1442
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public uploadImage(Ljava/lang/String;Ljava/io/File;Lrx/Subscriber;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lrx/Subscriber<",
            "Lokhttp3/ResponseBody;",
            ">;)TT;"
        }
    .end annotation

    .line 1392
    sget-object v0, Lcom/tamic/novate/Novate;->apiManager:Lcom/tamic/novate/BaseApiService;

    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->createImage(Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/tamic/novate/BaseApiService;->upLoadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/tamic/novate/Novate;->schedulersTransformer:Lrx/Observable$Transformer;

    .line 1393
    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1394
    invoke-virtual {p0}, Lcom/tamic/novate/Novate;->handleErrTransformer()Lrx/Observable$Transformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    .line 1395
    invoke-virtual {p1, p3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method
