.class Lcom/tamic/novate/callback/RxGenericsCallback$1;
.super Ljava/lang/Object;
.source "RxGenericsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/callback/RxGenericsCallback;->onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tamic/novate/callback/RxGenericsCallback;Ljava/lang/Object;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

    iput-object p2, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

    iget-object v1, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->val$tag:Ljava/lang/Object;

    iget v2, v0, Lcom/tamic/novate/callback/RxGenericsCallback;->code:I

    iget-object v3, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

    iget-object v3, v3, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/tamic/novate/callback/RxGenericsCallback$1;->this$0:Lcom/tamic/novate/callback/RxGenericsCallback;

    iget-object v4, v4, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tamic/novate/callback/RxGenericsCallback;->onNext(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
