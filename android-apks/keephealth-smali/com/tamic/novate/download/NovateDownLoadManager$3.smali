.class Lcom/tamic/novate/download/NovateDownLoadManager$3;
.super Ljava/lang/Object;
.source "NovateDownLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/download/NovateDownLoadManager;->finalonError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/Exception;)V
    .registers 3

    .line 212
    iput-object p1, p0, Lcom/tamic/novate/download/NovateDownLoadManager$3;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    iput-object p2, p0, Lcom/tamic/novate/download/NovateDownLoadManager$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager$3;->this$0:Lcom/tamic/novate/download/NovateDownLoadManager;

    # getter for: Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;
    invoke-static {v0}, Lcom/tamic/novate/download/NovateDownLoadManager;->access$000(Lcom/tamic/novate/download/NovateDownLoadManager;)Lcom/tamic/novate/download/DownLoadCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/download/NovateDownLoadManager$3;->val$e:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tamic/novate/download/DownLoadCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    return-void
.end method
