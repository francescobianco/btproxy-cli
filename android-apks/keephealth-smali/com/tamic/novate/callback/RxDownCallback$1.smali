.class Lcom/tamic/novate/callback/RxDownCallback$1;
.super Ljava/lang/Object;
.source "RxDownCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/RxDownCallback;->onNextFile(Lokhttp3/ResponseBody;Z)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/RxDownCallback;

.field final synthetic val$fileSize:J

.field final synthetic val$finalSpeed:J

.field final synthetic val$finalTotalRead:J

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxDownCallback;IJJJ)V
    .registers 9

    .line 105
    iput-object p1, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iput p2, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$progress:I

    iput-wide p3, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$finalSpeed:J

    iput-wide p5, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$finalTotalRead:J

    iput-wide p7, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 108
    iget-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iget-object v1, v0, Lcom/tamic/novate/callback/RxDownCallback;->tag:Ljava/lang/Object;

    iget v2, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$progress:I

    iget-wide v3, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$finalSpeed:J

    iget-wide v5, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$finalTotalRead:J

    iget-wide v7, p0, Lcom/tamic/novate/callback/RxDownCallback$1;->val$fileSize:J

    invoke-virtual/range {v0 .. v8}, Lcom/tamic/novate/callback/RxDownCallback;->onProgress(Ljava/lang/Object;IJJJ)V

    return-void
.end method
