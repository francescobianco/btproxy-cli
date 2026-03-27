.class Lcom/tamic/novate/download/NovateDownLoadManager$2;
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

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 176
    iput-object p1, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    iput-object p2, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$finalPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$finalName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 179
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    # getter for: Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;
    invoke-static {v0}, Lcom/tamic/novate/download/NovateDownLoadManager;->access$000(Lcom/tamic/novate/download/NovateDownLoadManager;)Lcom/tamic/novate/download/DownLoadCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$finalPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$finalName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/tamic/novate/download/NovateDownLoadManager$2;->val$fileSize:J

    invoke-virtual/range {v1 .. v6}, Lcom/tamic/novate/download/DownLoadCallBack;->onSucess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
