.class public Lcom/tamic/novate/cookie/AddCookiesInterceptor;
.super Ljava/lang/Object;
.source "AddCookiesInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private context:Landroid/content/Context;

.field private lang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->lang:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/cookie/AddCookiesInterceptor;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->lang:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_9

    .line 38
    const-string v0, "novate"

    const-string v1, "Addchain == null"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_9
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "cookie"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    const-string v2, ""

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;

    invoke-direct {v2, p0, v0}, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;-><init>(Lcom/tamic/novate/cookie/AddCookiesInterceptor;Lokhttp3/Request$Builder;)V

    .line 42
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 55
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
