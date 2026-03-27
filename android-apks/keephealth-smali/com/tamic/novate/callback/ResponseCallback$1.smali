.class Lcom/tamic/novate/callback/ResponseCallback$1;
.super Ljava/lang/Object;
.source "ResponseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/ResponseCallback;->finalOnError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/ResponseCallback;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/ResponseCallback;Ljava/lang/Exception;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback$1;->this$0:Lcom/tamic/novate/callback/ResponseCallback;

    iput-object p2, p0, Lcom/tamic/novate/callback/ResponseCallback$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback$1;->this$0:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, v0, Lcom/tamic/novate/callback/ResponseCallback;->tag:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tamic/novate/callback/ResponseCallback$1;->val$e:Ljava/lang/Exception;

    invoke-static {v2}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    return-void
.end method
