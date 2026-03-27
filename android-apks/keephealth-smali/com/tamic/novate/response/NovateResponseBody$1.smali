.class Lcom/tamic/novate/response/NovateResponseBody$1;
.super Lokio/ForwardingSource;
.source "NovateResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/response/NovateResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/response/NovateResponseBody;

.field totalBytesRead:J

.field updateCount:I


# direct methods
.method constructor <init>(Lcom/tamic/novate/response/NovateResponseBody;Lokio/Source;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 76
    iput-wide p1, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->totalBytesRead:J

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->updateCount:I

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 81
    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    invoke-virtual {p3}, Lcom/tamic/novate/response/NovateResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v0, 0x800

    cmp-long p3, v5, v0

    const-wide/16 v0, 0x1

    if-lez p3, :cond_17

    .line 83
    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # setter for: Lcom/tamic/novate/response/NovateResponseBody;->frequency:J
    invoke-static {p3, v0, v1}, Lcom/tamic/novate/response/NovateResponseBody;->access$002(Lcom/tamic/novate/response/NovateResponseBody;J)J

    .line 85
    :cond_17
    iget-wide v2, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->totalBytesRead:J

    const-wide/16 v7, -0x1

    cmp-long p3, p1, v7

    const-wide/16 v7, 0x0

    if-eqz p3, :cond_23

    move-wide v9, p1

    goto :goto_24

    :cond_23
    move-wide v9, v7

    :goto_24
    add-long/2addr v2, v9

    iput-wide v2, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->totalBytesRead:J

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->previousTime:J
    invoke-static {p3}, Lcom/tamic/novate/response/NovateResponseBody;->access$100(Lcom/tamic/novate/response/NovateResponseBody;)J

    move-result-wide v9

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    cmp-long p3, v2, v7

    if-nez p3, :cond_3a

    add-long/2addr v2, v0

    .line 91
    :cond_3a
    iget-wide v0, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->totalBytesRead:J

    div-long v3, v0, v2

    const-wide/16 v7, 0x64

    mul-long/2addr v0, v7

    .line 92
    div-long/2addr v0, v5

    long-to-int v2, v0

    .line 96
    iget p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->updateCount:I

    if-eqz p3, :cond_49

    if-lt v2, p3, :cond_70

    :cond_49
    int-to-long v0, p3

    .line 97
    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->frequency:J
    invoke-static {p3}, Lcom/tamic/novate/response/NovateResponseBody;->access$000(Lcom/tamic/novate/response/NovateResponseBody;)J

    move-result-wide v7

    add-long/2addr v0, v7

    long-to-int p3, v0

    iput p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->updateCount:I

    .line 98
    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;
    invoke-static {p3}, Lcom/tamic/novate/response/NovateResponseBody;->access$200(Lcom/tamic/novate/response/NovateResponseBody;)Lcom/tamic/novate/callback/ResponseCallback;

    move-result-object p3

    if-eqz p3, :cond_70

    .line 99
    iget-object p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;
    invoke-static {p3}, Lcom/tamic/novate/response/NovateResponseBody;->access$200(Lcom/tamic/novate/response/NovateResponseBody;)Lcom/tamic/novate/callback/ResponseCallback;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tamic/novate/callback/ResponseCallback;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v7, Lcom/tamic/novate/response/NovateResponseBody$1$1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tamic/novate/response/NovateResponseBody$1$1;-><init>(Lcom/tamic/novate/response/NovateResponseBody$1;IJJ)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_70
    return-wide p1
.end method
