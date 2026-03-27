.class Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;
.super Ljava/lang/Object;
.source "AddCookiesInterceptor.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/cookie/AddCookiesInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/cookie/AddCookiesInterceptor;

.field final synthetic val$builder:Lokhttp3/Request$Builder;


# direct methods
.method constructor <init>(Lcom/tamic/novate/cookie/AddCookiesInterceptor;Lokhttp3/Request$Builder;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->this$0:Lcom/tamic/novate/cookie/AddCookiesInterceptor;

    iput-object p2, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->val$builder:Lokhttp3/Request$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .registers 6

    .line 45
    const-string v0, "lang=ch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "lang="

    if-eqz v1, :cond_21

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->this$0:Lcom/tamic/novate/cookie/AddCookiesInterceptor;

    # getter for: Lcom/tamic/novate/cookie/AddCookiesInterceptor;->lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->access$000(Lcom/tamic/novate/cookie/AddCookiesInterceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_21
    const-string v0, "lang=en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->this$0:Lcom/tamic/novate/cookie/AddCookiesInterceptor;

    # getter for: Lcom/tamic/novate/cookie/AddCookiesInterceptor;->lang:Ljava/lang/String;
    invoke-static {v2}, Lcom/tamic/novate/cookie/AddCookiesInterceptor;->access$000(Lcom/tamic/novate/cookie/AddCookiesInterceptor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddCookiesInterceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "novate"

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/tamic/novate/cookie/AddCookiesInterceptor$1;->val$builder:Lokhttp3/Request$Builder;

    const-string v1, "cookie"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method
