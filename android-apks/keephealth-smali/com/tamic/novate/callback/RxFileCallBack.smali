.class public abstract Lcom/tamic/novate/callback/RxFileCallBack;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "RxFileCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tamic/novate/callback/ResponseCallback<",
        "Ljava/io/File;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;

.field fos:Ljava/io/FileOutputStream;

.field private interval:I

.field is:Ljava/io/InputStream;

.field private progress:I

.field private sum:J

.field private updateCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    .line 47
    sget-object v0, Lcom/tamic/novate/util/FileUtil;->DEFAULT_FILENAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->destFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->fos:Ljava/io/FileOutputStream;

    .line 51
    iput-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->is:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->sum:J

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->updateCount:I

    const/4 v1, 0x1

    .line 54
    iput v1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->interval:I

    .line 55
    iput v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 61
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/tamic/novate/callback/RxFileCallBack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    .line 47
    sget-object v0, Lcom/tamic/novate/util/FileUtil;->DEFAULT_FILENAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->fos:Ljava/io/FileOutputStream;

    .line 51
    iput-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->is:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->sum:J

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->updateCount:I

    const/4 v1, 0x1

    .line 54
    iput v1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->interval:I

    .line 55
    iput v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    .line 66
    iput-object p1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->destFileDir:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->destFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHandleResponse(Lokhttp3/ResponseBody;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxFileCallBack;->transform(Lokhttp3/ResponseBody;)Ljava/io/File;

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

    .line 43
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxFileCallBack;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public abstract onNext(Ljava/lang/Object;Ljava/io/File;)V
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/io/File;)V
    .registers 5

    .line 125
    iget-object p2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/tamic/novate/callback/RxFileCallBack$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/tamic/novate/callback/RxFileCallBack$2;-><init>(Lcom/tamic/novate/callback/RxFileCallBack;Ljava/lang/Object;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 4

    .line 43
    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tamic/novate/callback/RxFileCallBack;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/io/File;)V

    return-void
.end method

.method public onNextFile(Lokhttp3/ResponseBody;)Ljava/io/File;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x800

    .line 80
    new-array v0, v0, [B

    .line 84
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->is:Ljava/io/InputStream;

    .line 85
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    const-wide/16 v1, 0x800

    cmp-long p1, v9, v1

    const/4 v1, 0x0

    if-gez p1, :cond_18

    .line 87
    iput v1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->interval:I

    goto :goto_1b

    :cond_18
    const/4 p1, 0x1

    .line 89
    iput p1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->interval:I

    .line 91
    :goto_1b
    iget-object p1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->destFileDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->destFileName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/tamic/novate/util/FileUtil;->createDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 92
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->is:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_97

    .line 94
    iget-wide v3, p0, Lcom/tamic/novate/callback/RxFileCallBack;->sum:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tamic/novate/callback/RxFileCallBack;->sum:J

    .line 95
    invoke-virtual {v11, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 96
    iget-wide v5, p0, Lcom/tamic/novate/callback/RxFileCallBack;->sum:J

    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_51

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_49

    goto :goto_51

    :cond_49
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v5

    .line 100
    div-long/2addr v2, v9

    long-to-int v2, v2

    iput v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    goto :goto_55

    :cond_51
    :goto_51
    const/16 v2, 0x64

    .line 98
    iput v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    .line 102
    :goto_55
    iget-object v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file download progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->updateCount:I

    if-eqz v2, :cond_77

    iget v3, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    if-lt v3, v2, :cond_28

    .line 104
    :cond_77
    iget v3, p0, Lcom/tamic/novate/callback/RxFileCallBack;->interval:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->updateCount:I

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/tamic/novate/callback/RxFileCallBack;->handler:Landroid/os/Handler;

    .line 106
    iget v4, p0, Lcom/tamic/novate/callback/RxFileCallBack;->progress:I

    .line 107
    iget-object v12, p0, Lcom/tamic/novate/callback/RxFileCallBack;->handler:Landroid/os/Handler;

    new-instance v13, Lcom/tamic/novate/callback/RxFileCallBack$1;

    move-object v2, v13

    move-object v3, p0

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/tamic/novate/callback/RxFileCallBack$1;-><init>(Lcom/tamic/novate/callback/RxFileCallBack;IJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 115
    :cond_97
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9a
    .catchall {:try_start_4 .. :try_end_9a} :catchall_9e

    .line 119
    invoke-virtual {p0}, Lcom/tamic/novate/callback/RxFileCallBack;->onRelease()V

    return-object p1

    :catchall_9e
    move-exception p1

    invoke-virtual {p0}, Lcom/tamic/novate/callback/RxFileCallBack;->onRelease()V

    throw p1
.end method

.method public abstract onProgress(Ljava/lang/Object;FJJ)V
.end method

.method public onRelease()V
    .registers 6

    .line 135
    invoke-super {p0}, Lcom/tamic/novate/callback/ResponseCallback;->onRelease()V

    .line 136
    iget-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    .line 137
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 138
    iget-object v0, p0, Lcom/tamic/novate/callback/RxFileCallBack;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_24

    :catch_12
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    iget-object v1, p0, Lcom/tamic/novate/callback/RxFileCallBack;->tag:Ljava/lang/Object;

    new-instance v2, Lcom/tamic/novate/Throwable;

    const/16 v3, -0x64

    const-string v4, "file write io Exception"

    invoke-direct {v2, v0, v3, v4}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/tamic/novate/callback/RxFileCallBack;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public transform(Lokhttp3/ResponseBody;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxFileCallBack;->onNextFile(Lokhttp3/ResponseBody;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
