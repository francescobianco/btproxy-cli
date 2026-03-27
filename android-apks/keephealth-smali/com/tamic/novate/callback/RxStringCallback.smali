.class public abstract Lcom/tamic/novate/callback/RxStringCallback;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "RxStringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tamic/novate/callback/ResponseCallback<",
        "Ljava/lang/String;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxStringCallback;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 24
    const-string p1, "Novate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public abstract onNext(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 4

    .line 20
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tamic/novate/callback/RxStringCallback;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-virtual {p0, p1, p3}, Lcom/tamic/novate/callback/RxStringCallback;->onNext(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
