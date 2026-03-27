.class Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$2;
.super Ljava/lang/Object;
.source "ReceivedCookiesInterceptor.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;


# direct methods
.method constructor <init>(Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$2;->this$0:Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/cookie/ReceivedCookiesInterceptor$2;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 43
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    aget-object p1, p1, v0

    return-object p1
.end method
