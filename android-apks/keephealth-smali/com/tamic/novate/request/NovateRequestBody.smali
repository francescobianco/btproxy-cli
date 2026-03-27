.class public Lcom/tamic/novate/request/NovateRequestBody;
.super Lokhttp3/RequestBody;
.source "NovateRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/request/NovateRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/Object;

.field protected callback:Lcom/tamic/novate/callback/ResponseCallback;

.field protected countingSink:Lcom/tamic/novate/request/NovateRequestBody$CountingSink;

.field private previousTime:J

.field protected requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)V
    .registers 4

    .line 47
    invoke-virtual {p2}, Lcom/tamic/novate/callback/ResponseCallback;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tamic/novate/request/NovateRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;Ljava/lang/Object;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequestBody;->requestBody:Lokhttp3/RequestBody;

    .line 52
    iput-object p2, p0, Lcom/tamic/novate/request/NovateRequestBody;->callback:Lcom/tamic/novate/callback/ResponseCallback;

    .line 53
    iput-object p3, p0, Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/request/NovateRequestBody;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->previousTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tamic/novate/request/NovateRequestBody;)Ljava/lang/Object;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/tamic/novate/request/NovateRequestBody;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/tamic/novate/request/NovateRequestBody;->Tag:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->previousTime:J

    .line 74
    new-instance v0, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/tamic/novate/request/NovateRequestBody$CountingSink;-><init>(Lcom/tamic/novate/request/NovateRequestBody;Lokio/Sink;)V

    iput-object v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->countingSink:Lcom/tamic/novate/request/NovateRequestBody$CountingSink;

    .line 75
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/tamic/novate/request/NovateRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 77
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
