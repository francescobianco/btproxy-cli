.class Lcom/tamic/novate/callback/RxDownCallback$4;
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


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxDownCallback;J)V
    .registers 4

    .line 142
    iput-object p1, p0, Lcom/tamic/novate/callback/RxDownCallback$4;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iput-wide p2, p0, Lcom/tamic/novate/callback/RxDownCallback$4;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback$4;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iget-object v1, v0, Lcom/tamic/novate/callback/RxDownCallback;->tag:Ljava/lang/Object;

    new-instance v2, Lcom/tamic/novate/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8d85\u8fc7100%\u3002\u603b\u5927\u5c0f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tamic/novate/callback/RxDownCallback$4;->val$fileSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u5df2\u4e0b\u8f7d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tamic/novate/callback/RxDownCallback$4;->val$fileSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, -0x64

    invoke-direct {v2, v4, v5, v3}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/RxDownCallback;->onError(Ljava/lang/Object;Lcom/tamic/novate/Throwable;)V

    return-void
.end method
