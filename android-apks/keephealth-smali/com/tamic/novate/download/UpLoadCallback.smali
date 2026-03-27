.class public abstract Lcom/tamic/novate/download/UpLoadCallback;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "UpLoadCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
    .registers 3

    return-void
.end method

.method public onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V
    .registers 3

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

.method public onProgress(Ljava/lang/Object;FJJ)V
    .registers 13

    .line 16
    invoke-super/range {p0 .. p6}, Lcom/tamic/novate/callback/ResponseCallback;->onProgress(Ljava/lang/Object;FJJ)V

    float-to-int v2, p2

    cmp-long p2, p3, p5

    if-nez p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    move v5, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/tamic/novate/download/UpLoadCallback;->onProgress(Ljava/lang/Object;IJZ)V

    return-void
.end method

.method public abstract onProgress(Ljava/lang/Object;IJZ)V
.end method
