.class public abstract Lcom/tamic/novate/callback/RxDownCallback;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "RxDownCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tamic/novate/callback/ResponseCallback<",
        "Ljava/io/File;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# static fields
.field protected static final REFRESH_INTEVAL:I = 0x3e8


# instance fields
.field private final RANGE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;

.field protected mBytesThistime:J

.field protected mLastRefreshTime:J

.field mStarttime:J

.field protected sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    .line 52
    const-string v0, "Range"

    iput-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback;->RANGE:Ljava/lang/String;

    .line 54
    const-string v0, "DownLoadService"

    iput-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/tamic/novate/callback/RxDownCallback;->mStarttime:J

    return-void
.end method


# virtual methods
.method protected close()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    if-eqz v0, :cond_16

    .line 194
    :try_start_4
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    const-string v0, "DownLoadService"

    const-string v1, "sink  is already closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public onHandleResponse(Lokhttp3/ResponseBody;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxDownCallback;->transform(Lokhttp3/ResponseBody;)Ljava/io/File;

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

    .line 41
    invoke-virtual {p0, p1}, Lcom/tamic/novate/callback/RxDownCallback;->onHandleResponse(Lokhttp3/ResponseBody;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public abstract onNext(Ljava/lang/Object;Ljava/io/File;)V
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/io/File;)V
    .registers 4

    .line 207
    invoke-virtual {p0, p1, p3}, Lcom/tamic/novate/callback/RxDownCallback;->onNext(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 4

    .line 41
    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tamic/novate/callback/RxDownCallback;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/io/File;)V

    return-void
.end method

.method public onNextFile(Lokhttp3/ResponseBody;Z)Ljava/io/File;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 77
    const-string v11, "DownLoadService"

    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->destFileDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tamic/novate/util/FileUtil;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->destFileDir:Ljava/lang/String;

    .line 85
    :cond_14
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    .line 86
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 88
    iget-object v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->destFileDir:Ljava/lang/String;

    iget-object v2, v10, Lcom/tamic/novate/callback/RxDownCallback;->destFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tamic/novate/util/FileUtil;->createDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 89
    invoke-static {v15}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    const-wide/16 v16, 0x0

    move-wide/from16 v1, v16

    .line 91
    :goto_32
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v3

    const-wide/16 v4, 0x800

    invoke-interface {v0, v3, v4, v5}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_cd

    add-long v8, v1, v3

    .line 93
    iget-wide v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->mBytesThistime:J

    add-long/2addr v1, v8

    iput-wide v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->mBytesThistime:J

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 96
    iget-wide v5, v10, Lcom/tamic/novate/callback/RxDownCallback;->mStarttime:J

    cmp-long v7, v1, v5

    const-wide/16 v18, 0x3e8

    if-lez v7, :cond_5d

    mul-long v20, v8, v18

    sub-long/2addr v1, v5

    .line 97
    div-long v20, v20, v1

    goto :goto_5f

    :cond_5d
    move-wide/from16 v20, v16

    .line 99
    :goto_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    mul-long/2addr v3, v1

    .line 100
    div-long/2addr v3, v13

    long-to-int v3, v3

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    iget-wide v4, v10, Lcom/tamic/novate/callback/RxDownCallback;->mLastRefreshTime:J

    sub-long/2addr v1, v4

    cmp-long v1, v1, v18

    if-ltz v1, :cond_9f

    .line 105
    iget-object v6, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/tamic/novate/callback/RxDownCallback$1;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_89} :catch_104
    .catchall {:try_start_14 .. :try_end_89} :catchall_102

    move-object v1, v7

    move-object/from16 v2, p0

    move-wide/from16 v4, v20

    move-object v12, v6

    move-object/from16 v18, v11

    move-object v11, v7

    move-wide v6, v8

    move-wide/from16 v22, v8

    move-wide v8, v13

    :try_start_96
    invoke-direct/range {v1 .. v9}, Lcom/tamic/novate/callback/RxDownCallback$1;-><init>(Lcom/tamic/novate/callback/RxDownCallback;IJJJ)V

    invoke-virtual {v12, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v1, v22

    goto :goto_a2

    :cond_9f
    move-object/from16 v18, v11

    move-wide v1, v8

    :goto_a2
    cmp-long v3, v1, v16

    if-lez v3, :cond_c9

    long-to-double v3, v1

    long-to-double v5, v13

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_c9

    .line 114
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 115
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V

    .line 116
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->close()V

    .line 117
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/tamic/novate/callback/RxDownCallback$2;

    invoke-direct {v4, v10, v13, v14}, Lcom/tamic/novate/callback/RxDownCallback$2;-><init>(Lcom/tamic/novate/callback/RxDownCallback;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cf

    :cond_c9
    move-object/from16 v11, v18

    goto/16 :goto_32

    :cond_cd
    move-object/from16 v18, v11

    .line 127
    :goto_cf
    iget-object v3, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 128
    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 129
    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    cmp-long v0, v1, v13

    if-nez v0, :cond_f1

    .line 132
    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tamic/novate/callback/RxDownCallback$3;

    invoke-direct {v1, v10, v15}, Lcom/tamic/novate/callback/RxDownCallback$3;-><init>(Lcom/tamic/novate/callback/RxDownCallback;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ec} :catch_100
    .catchall {:try_start_96 .. :try_end_ec} :catchall_102

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/tamic/novate/callback/RxDownCallback;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_f1
    :try_start_f1
    iget-object v0, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tamic/novate/callback/RxDownCallback$4;

    invoke-direct {v1, v10, v13, v14}, Lcom/tamic/novate/callback/RxDownCallback$4;-><init>(Lcom/tamic/novate/callback/RxDownCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fb} :catch_100
    .catchall {:try_start_f1 .. :try_end_fb} :catchall_102

    .line 176
    :goto_fb
    invoke-virtual/range {p0 .. p0}, Lcom/tamic/novate/callback/RxDownCallback;->close()V

    const/4 v1, 0x0

    return-object v1

    :catch_100
    move-exception v0

    goto :goto_107

    :catchall_102
    move-exception v0

    goto :goto_133

    :catch_104
    move-exception v0

    move-object/from16 v18, v11

    .line 153
    :goto_107
    :try_start_107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No space left on device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 156
    const-string v1, "SD\u5361\u6ee1\u4e86"

    move-object/from16 v2, v18

    invoke-static {v2, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tamic/novate/callback/RxDownCallback$5;

    invoke-direct {v2, v10, v0}, Lcom/tamic/novate/callback/RxDownCallback$5;-><init>(Lcom/tamic/novate/callback/RxDownCallback;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_fb

    .line 165
    :cond_128
    iget-object v1, v10, Lcom/tamic/novate/callback/RxDownCallback;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tamic/novate/callback/RxDownCallback$6;

    invoke-direct {v2, v10, v0}, Lcom/tamic/novate/callback/RxDownCallback$6;-><init>(Lcom/tamic/novate/callback/RxDownCallback;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_132
    .catchall {:try_start_107 .. :try_end_132} :catchall_102

    goto :goto_fb

    .line 176
    :goto_133
    invoke-virtual/range {p0 .. p0}, Lcom/tamic/novate/callback/RxDownCallback;->close()V

    throw v0
.end method

.method public abstract onProgress(Ljava/lang/Object;IJJJ)V
.end method

.method public onRelease()V
    .registers 1

    .line 184
    invoke-super {p0}, Lcom/tamic/novate/callback/ResponseCallback;->onRelease()V

    .line 185
    invoke-virtual {p0}, Lcom/tamic/novate/callback/RxDownCallback;->close()V

    return-void
.end method

.method public transform(Lokhttp3/ResponseBody;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/tamic/novate/callback/RxDownCallback;->onNextFile(Lokhttp3/ResponseBody;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
