.class public Lcom/tamic/novate/download/DownSubscriber;
.super Lcom/tamic/novate/BaseSubscriber;
.source "DownSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseBody:",
        "Lokhttp3/ResponseBody;",
        ">",
        "Lcom/tamic/novate/BaseSubscriber<",
        "TResponseBody;>;"
    }
.end annotation


# instance fields
.field private callBack:Lcom/tamic/novate/download/DownLoadCallBack;

.field private context:Landroid/content/Context;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tamic/novate/download/DownLoadCallBack;Landroid/content/Context;)V
    .registers 6

    .line 42
    invoke-direct {p0, p5}, Lcom/tamic/novate/BaseSubscriber;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/tamic/novate/download/DownSubscriber;->key:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/tamic/novate/download/DownSubscriber;->path:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/tamic/novate/download/DownSubscriber;->name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    .line 47
    iput-object p5, p0, Lcom/tamic/novate/download/DownSubscriber;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/download/DownSubscriber;)Lcom/tamic/novate/download/DownLoadCallBack;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    return-object p0
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Lcom/tamic/novate/download/DownLoadCallBack;->onCompleted()V

    :cond_7
    return-void
.end method

.method public onError(Lcom/tamic/novate/Throwable;)V
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownSubscriber:>>>> onError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tamic/novate/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Novate:DownLoadManager"

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-eqz v0, :cond_44

    .line 72
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, -0x64

    invoke-virtual {p1}, Lcom/tamic/novate/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/tamic/novate/util/Utils;->checkMain()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 74
    iget-object p1, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    invoke-virtual {p1, v0}, Lcom/tamic/novate/download/DownLoadCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    goto :goto_44

    .line 76
    :cond_33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tamic/novate/download/DownSubscriber$1;

    invoke-direct {v1, p0, v0}, Lcom/tamic/novate/download/DownSubscriber$1;-><init>(Lcom/tamic/novate/download/DownSubscriber;Lcom/tamic/novate/Throwable;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    :goto_44
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/download/DownSubscriber;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseBody;)V"
        }
    .end annotation

    .line 88
    const-string v0, "Novate:DownLoadManager"

    const-string v1, "DownSubscriber:>>>> onNext"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/tamic/novate/download/NovateDownLoadManager;

    iget-object v0, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    invoke-direct {v2, v0}, Lcom/tamic/novate/download/NovateDownLoadManager;-><init>(Lcom/tamic/novate/download/DownLoadCallBack;)V

    iget-object v3, p0, Lcom/tamic/novate/download/DownSubscriber;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/tamic/novate/download/DownSubscriber;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/tamic/novate/download/DownSubscriber;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/tamic/novate/download/DownSubscriber;->context:Landroid/content/Context;

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/tamic/novate/download/NovateDownLoadManager;->writeResponseBodyToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lokhttp3/ResponseBody;)Z

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 52
    invoke-super {p0}, Lcom/tamic/novate/BaseSubscriber;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-eqz v0, :cond_c

    .line 57
    iget-object v1, p0, Lcom/tamic/novate/download/DownSubscriber;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tamic/novate/download/DownLoadCallBack;->onStart(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
