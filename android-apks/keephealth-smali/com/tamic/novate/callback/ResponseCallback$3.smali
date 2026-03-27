.class final Lcom/tamic/novate/callback/ResponseCallback$3;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "ResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/callback/ResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
    .registers 3

    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .registers 2

    .line 254
    invoke-super {p0, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onCompleted(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lcom/tamic/novate/callback/ResponseCallback$3;->onRelease()V

    return-void
.end method

.method public onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/tamic/novate/callback/ResponseCallback$3;->onRelease()V

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    .line 213
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tamic/novate/callback/ResponseCallback$3;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    return-void
.end method

.method public onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/ResponseCallback$3;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public transform(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    return-object p1
.end method
