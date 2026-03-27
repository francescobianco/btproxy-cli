.class Lcom/tamic/novate/response/NovateResponseBody$1$1;
.super Ljava/lang/Object;
.source "NovateResponseBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/response/NovateResponseBody$1;->read(Lokio/Buffer;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tamic/novate/response/NovateResponseBody$1;

.field final synthetic val$fbytesRead:J

.field final synthetic val$fnetworkSpeed:J

.field final synthetic val$fprogress:I


# direct methods
.method constructor <init>(Lcom/tamic/novate/response/NovateResponseBody$1;IJJ)V
    .registers 7

    .line 99
    iput-object p1, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->this$1:Lcom/tamic/novate/response/NovateResponseBody$1;

    iput p2, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fprogress:I

    iput-wide p3, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fnetworkSpeed:J

    iput-wide p5, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fbytesRead:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 102
    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->this$1:Lcom/tamic/novate/response/NovateResponseBody$1;

    iget-object v0, v0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;
    invoke-static {v0}, Lcom/tamic/novate/response/NovateResponseBody;->access$200(Lcom/tamic/novate/response/NovateResponseBody;)Lcom/tamic/novate/callback/ResponseCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->this$1:Lcom/tamic/novate/response/NovateResponseBody$1;

    iget-object v0, v0, Lcom/tamic/novate/response/NovateResponseBody$1;->this$0:Lcom/tamic/novate/response/NovateResponseBody;

    # getter for: Lcom/tamic/novate/response/NovateResponseBody;->progressListener:Lcom/tamic/novate/callback/ResponseCallback;
    invoke-static {v0}, Lcom/tamic/novate/response/NovateResponseBody;->access$200(Lcom/tamic/novate/response/NovateResponseBody;)Lcom/tamic/novate/callback/ResponseCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tamic/novate/callback/ResponseCallback;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fprogress:I

    iget-wide v4, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fnetworkSpeed:J

    iget-object v0, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->this$1:Lcom/tamic/novate/response/NovateResponseBody$1;

    iget-wide v6, v0, Lcom/tamic/novate/response/NovateResponseBody$1;->totalBytesRead:J

    iget-wide v8, p0, Lcom/tamic/novate/response/NovateResponseBody$1$1;->val$fbytesRead:J

    invoke-virtual/range {v1 .. v9}, Lcom/tamic/novate/callback/ResponseCallback;->onProgress(Ljava/lang/Object;IJJJ)V

    return-void
.end method
