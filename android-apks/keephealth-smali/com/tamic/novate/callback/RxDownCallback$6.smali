.class Lcom/tamic/novate/callback/RxDownCallback$6;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxDownCallback;Ljava/io/IOException;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/tamic/novate/callback/RxDownCallback$6;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iput-object p2, p0, Lcom/tamic/novate/callback/RxDownCallback$6;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback$6;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iget-object v1, v0, Lcom/tamic/novate/callback/RxDownCallback;->tag:Ljava/lang/Object;

    new-instance v2, Lcom/tamic/novate/Throwable;

    iget-object v3, p0, Lcom/tamic/novate/callback/RxDownCallback$6;->val$e:Ljava/io/IOException;

    const/16 v4, -0x64

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/RxDownCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    return-void
.end method
