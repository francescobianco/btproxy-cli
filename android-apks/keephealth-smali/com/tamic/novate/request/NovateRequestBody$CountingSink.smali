.class public final Lcom/tamic/novate/request/NovateRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "NovateRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/request/NovateRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field contentLength:J

.field final synthetic this$0:Lcom/tamic/novate/request/NovateRequestBody;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/request/NovateRequestBody;Lokio/Sink;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    .line 95
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 91
    iput-wide p1, p0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    .line 92
    iput-wide p1, p0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 100
    invoke-super/range {p0 .. p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 102
    iget-wide v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 103
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    invoke-virtual {v1}, Lcom/tamic/novate/request/NovateRequestBody;->contentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    .line 105
    :cond_15
    iget-wide v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    add-long v1, v1, p2

    iput-wide v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    .line 106
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    iget-object v1, v1, Lcom/tamic/novate/request/NovateRequestBody;->callback:Lcom/tamic/novate/callback/ResponseCallback;

    if-eqz v1, :cond_7d

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    # getter for: Lcom/tamic/novate/request/NovateRequestBody;->previousTime:J
    invoke-static {v5}, Lcom/tamic/novate/request/NovateRequestBody;->access$000(Lcom/tamic/novate/request/NovateRequestBody;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    cmp-long v3, v1, v3

    if-nez v3, :cond_36

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 111
    :cond_36
    iget-wide v3, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    div-long v8, v3, v1

    const-wide/16 v1, 0x64

    mul-long/2addr v3, v1

    .line 112
    iget-wide v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    div-long/2addr v3, v1

    long-to-int v7, v3

    .line 114
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    iget-object v10, v1, Lcom/tamic/novate/request/NovateRequestBody;->callback:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    # getter for: Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tamic/novate/request/NovateRequestBody;->access$100(Lcom/tamic/novate/request/NovateRequestBody;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_51

    move-object v11, v2

    goto :goto_58

    :cond_51
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    # getter for: Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tamic/novate/request/NovateRequestBody;->access$100(Lcom/tamic/novate/request/NovateRequestBody;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    :goto_58
    int-to-float v12, v7

    iget-wide v13, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    iget-wide v3, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    move-wide v15, v3

    invoke-virtual/range {v10 .. v16}, Lcom/tamic/novate/callback/ResponseCallback;->onProgress(Ljava/lang/Object;FJJ)V

    .line 115
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    iget-object v5, v1, Lcom/tamic/novate/request/NovateRequestBody;->callback:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    # getter for: Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tamic/novate/request/NovateRequestBody;->access$100(Lcom/tamic/novate/request/NovateRequestBody;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6f

    move-object v6, v2

    goto :goto_76

    :cond_6f
    iget-object v1, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->this$0:Lcom/tamic/novate/request/NovateRequestBody;

    # getter for: Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;
    invoke-static {v1}, Lcom/tamic/novate/request/NovateRequestBody;->access$100(Lcom/tamic/novate/request/NovateRequestBody;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    :goto_76
    iget-wide v10, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->bytesWritten:J

    iget-wide v12, v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;->contentLength:J

    invoke-virtual/range {v5 .. v13}, Lcom/tamic/novate/callback/ResponseCallback;->onProgress(Ljava/lang/Object;IJJJ)V

    :cond_7d
    return-void
.end method
