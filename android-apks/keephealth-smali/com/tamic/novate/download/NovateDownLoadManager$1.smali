.class Lcom/tamic/novate/download/NovateDownLoadManager$1;
.super Ljava/lang/Object;
.source "NovateDownLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/download/NovateDownLoadManager;->writeResponseBodyToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lokhttp3/ResponseBody;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

.field final synthetic val$fileSize:J

.field final synthetic val$finalFileSizeDownloaded:J

.field final synthetic val$finalProgress:I

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/String;IJJ)V
    .registers 8

    .line 160
    iput-object p1, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    iput-object p2, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$finalProgress:I

    iput-wide p4, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$finalFileSizeDownloaded:J

    iput-wide p6, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 163
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    # getter for: Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;
    invoke-static {v0}, Lcom/tamic/novate/download/NovateDownLoadManager;->access$000(Lcom/tamic/novate/download/NovateDownLoadManager;)Lcom/tamic/novate/download/DownLoadCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$key:Ljava/lang/String;

    iget v3, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$finalProgress:I

    iget-wide v4, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$finalFileSizeDownloaded:J

    iget-wide v6, p0, Lcom/tamic/novate/download/NovateDownLoadManager$1;->val$fileSize:J

    invoke-virtual/range {v1 .. v7}, Lcom/tamic/novate/download/DownLoadCallBack;->onProgress(Ljava/lang/String;IJJ)V

    return-void
.end method
