.class Lcom/tamic/novate/download/DownSubscriber$1;
.super Ljava/lang/Object;
.source "DownSubscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/download/DownSubscriber;->onError(Lcom/tamic/novate/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/download/DownSubscriber;

.field final synthetic val$throwable:Lcom/tamic/novate/Throwable;


# direct methods
.method constructor <init>(Lcom/tamic/novate/download/DownSubscriber;Lcom/tamic/novate/Throwable;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/tamic/novate/download/DownSubscriber$1;->this$0:Lcom/tamic/novate/download/DownSubscriber;

    iput-object p2, p0, Lcom/tamic/novate/download/DownSubscriber$1;->val$throwable:Lcom/tamic/novate/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/tamic/novate/download/DownSubscriber$1;->this$0:Lcom/tamic/novate/download/DownSubscriber;

    # getter for: Lcom/tamic/novate/download/DownSubscriber;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;
    invoke-static {v0}, Lcom/tamic/novate/download/DownSubscriber;->access$000(Lcom/tamic/novate/download/DownSubscriber;)Lcom/tamic/novate/download/DownLoadCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/tamic/novate/download/DownSubscriber$1;->val$throwable:Lcom/tamic/novate/Throwable;

    invoke-virtual {v0, v1}, Lcom/tamic/novate/download/DownLoadCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    return-void
.end method
