.class public Lcom/tamic/novate/response/NovateResponseBody;
.super Lokhttp3/ResponseBody;
.source "NovateResponseBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private frequency:J

.field private previousTime:J

.field private final progressListener:Lcom/tamic/novate/callback/ResponseCallback;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/tamic/novate/callback/ResponseCallback;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->frequency:J

    .line 46
    iput-object p1, p0, Lcom/tamic/novate/response/NovateResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 47
    iput-object p2, p0, Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/response/NovateResponseBody;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->frequency:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/tamic/novate/response/NovateResponseBody;J)J
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/tamic/novate/response/NovateResponseBody;->frequency:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/tamic/novate/response/NovateResponseBody;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->previousTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/tamic/novate/response/NovateResponseBody;)Lcom/tamic/novate/callback/ResponseCallback;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .registers 4

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->previousTime:J

    .line 75
    new-instance v0, Lcom/tamic/novate/response/NovateResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/tamic/novate/response/NovateResponseBody$1;-><init>(Lcom/tamic/novate/response/NovateResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_14

    .line 64
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tamic/novate/response/NovateResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 66
    :cond_14
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
