.class public abstract Lcom/tamic/novate/callback/ResponseCallback;
.super Ljava/lang/Object;
.source "ResponseCallback.java"

# interfaces
.implements Lokhttp3/Callback;
.implements Lcom/tamic/novate/callback/IGenericsConvert;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/Callback;",
        "Lcom/tamic/novate/callback/IGenericsConvert<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;


# instance fields
.field protected TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Lcom/tamic/novate/callback/ResponseCallback$3;

    invoke-direct {v0}, Lcom/tamic/novate/callback/ResponseCallback$3;-><init>()V

    sput-object v0, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "novateCallback"

    iput-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->TAG:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_16

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    :cond_16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "novateCallback"

    iput-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->TAG:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected finalOnError(Ljava/lang/Exception;)V
    .registers 4

    .line 151
    invoke-static {}, Lcom/tamic/novate/util/Utils;->checkMain()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 152
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    goto :goto_1a

    .line 154
    :cond_10
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tamic/novate/callback/ResponseCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/tamic/novate/callback/ResponseCallback$1;-><init>(Lcom/tamic/novate/callback/ResponseCallback;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public isReponseOk(Ljava/lang/Object;Lokhttp3/ResponseBody;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onCancel(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public abstract onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 165
    invoke-static {}, Lcom/tamic/novate/util/Utils;->checkMain()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 166
    iget-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    invoke-static {p2}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    goto :goto_1a

    .line 168
    :cond_10
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tamic/novate/callback/ResponseCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tamic/novate/callback/ResponseCallback$2;-><init>(Lcom/tamic/novate/callback/ResponseCallback;Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public abstract onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lokhttp3/Call;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onProgress(Ljava/lang/Object;FJJ)V
    .registers 7

    return-void
.end method

.method public onProgress(Ljava/lang/Object;IJJJ)V
    .registers 9

    return-void
.end method

.method public onRelease()V
    .registers 1

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 182
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/tamic/novate/Throwable;

    const/16 v2, -0xc8

    const-string v3, "\u5df2\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tamic/novate/callback/ResponseCallback;->onCancel(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    .line 184
    :cond_1b
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    .line 185
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/callback/ResponseCallback;->isReponseOk(Ljava/lang/Object;Lokhttp3/ResponseBody;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 187
    :try_start_2f
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_44

    :catch_37
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    iget-object p2, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onStart(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    return-void
.end method

.method public transform(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method
