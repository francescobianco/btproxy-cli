.class Lcom/tamic/novate/callback/ResponseCallback$2;
.super Ljava/lang/Object;
.source "ResponseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/ResponseCallback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/ResponseCallback;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/ResponseCallback;Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 168
    iput-object p1, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->this$0:Lcom/tamic/novate/callback/ResponseCallback;

    iput-object p2, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->val$call:Lokhttp3/Call;

    iput-object p3, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->this$0:Lcom/tamic/novate/callback/ResponseCallback;

    iget-object v1, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->val$call:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/tamic/novate/callback/ResponseCallback$2;->val$e:Ljava/io/IOException;

    invoke-static {v2}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/ResponseCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    return-void
.end method
