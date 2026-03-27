.class public Lcom/tamic/novate/RxSubscriber;
.super Lcom/tamic/novate/BaseSubscriber;
.source "RxSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/BaseSubscriber<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private callBack:Lcom/tamic/novate/callback/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;TE;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/tamic/novate/callback/ResponseCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tamic/novate/callback/ResponseCallback<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/tamic/novate/BaseSubscriber;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    if-nez p2, :cond_d

    .line 40
    sget-object p2, Lcom/tamic/novate/callback/ResponseCallback;->CALLBACK_DEFAULT:Lcom/tamic/novate/callback/ResponseCallback;

    iput-object p2, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    goto :goto_f

    .line 42
    :cond_d
    iput-object p2, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    .line 44
    :goto_f
    iget-object p2, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    invoke-virtual {p2, p1}, Lcom/tamic/novate/callback/ResponseCallback;->setTag(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addContext(Landroid/content/Context;)Lcom/tamic/novate/RxSubscriber;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/tamic/novate/RxSubscriber;->context:Landroid/content/Context;

    return-object p0
.end method

.method public context()Landroid/content/Context;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    if-eqz v0, :cond_e

    .line 68
    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tamic/novate/callback/ResponseCallback;->onCompleted(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    invoke-virtual {v0}, Lcom/tamic/novate/callback/ResponseCallback;->onRelease()V

    :cond_e
    return-void
.end method

.method public onError(Lcom/tamic/novate/Throwable;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    if-eqz v0, :cond_e

    .line 76
    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    .line 77
    iget-object p1, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    invoke-virtual {p1}, Lcom/tamic/novate/callback/ResponseCallback;->onRelease()V

    :cond_e
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/RxSubscriber;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .registers 5

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/tamic/novate/callback/ResponseCallback;->isReponseOk(Ljava/lang/Object;Lokhttp3/ResponseBody;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 85
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_28

    :catch_17
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    if-eqz v0, :cond_28

    .line 90
    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 59
    invoke-super {p0}, Lcom/tamic/novate/BaseSubscriber;->onStart()V

    .line 60
    iget-object v0, p0, Lcom/tamic/novate/RxSubscriber;->callBack:Lcom/tamic/novate/callback/ResponseCallback;

    if-eqz v0, :cond_c

    .line 61
    iget-object v1, p0, Lcom/tamic/novate/RxSubscriber;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tamic/novate/callback/ResponseCallback;->onStart(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method
