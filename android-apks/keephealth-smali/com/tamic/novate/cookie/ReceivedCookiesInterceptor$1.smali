.class Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$1;
.super Ljava/lang/Object;
.source "ReceivedCookiesInterceptor.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
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
.field final synthetic this$0:Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;

.field final synthetic val$cookieBuffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;Ljava/lang/StringBuffer;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$1;->this$0:Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;

    iput-object p2, p0, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$1;->val$cookieBuffer:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$1;->val$cookieBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
