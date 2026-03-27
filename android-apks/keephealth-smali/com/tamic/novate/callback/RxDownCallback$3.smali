.class Lcom/tamic/novate/callback/RxDownCallback$3;
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

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxDownCallback;Ljava/io/File;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/tamic/novate/callback/RxDownCallback$3;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iput-object p2, p0, Lcom/tamic/novate/callback/RxDownCallback$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/tamic/novate/callback/RxDownCallback$3;->this$0:Lcom/tamic/novate/callback/RxDownCallback;

    iget-object v1, v0, Lcom/tamic/novate/callback/RxDownCallback;->tag:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tamic/novate/callback/RxDownCallback$3;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/tamic/novate/callback/RxDownCallback;->onNext(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method
