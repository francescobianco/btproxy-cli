.class public abstract Lcom/tamic/novate/callback/RxBitmapCallback;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "RxBitmapCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tamic/novate/callback/ResponseCallback<",
        "Landroid/graphics/Bitmap;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleResponse(Lokhttp3/ResponseBody;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/callback/RxBitmapCallback;->transform(Lokhttp3/ResponseBody;Ljava/lang/Class;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxBitmapCallback;->onHandleResponse(Lokhttp3/ResponseBody;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public abstract onNext(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 49
    invoke-virtual {p0, p1, p3}, Lcom/tamic/novate/callback/RxBitmapCallback;->onNext(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 4

    .line 36
    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tamic/novate/callback/RxBitmapCallback;->onNext(Ljava/lang/Object;Lokhttp3/Call;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public transform(Lokhttp3/ResponseBody;Ljava/lang/Class;)Landroid/graphics/Bitmap;
    .registers 3

    .line 44
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/tamic/novate/callback/RxBitmapCallback;->transform(Lokhttp3/ResponseBody;Ljava/lang/Class;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
