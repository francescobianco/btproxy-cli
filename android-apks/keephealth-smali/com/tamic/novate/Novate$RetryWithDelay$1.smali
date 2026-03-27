.class Lcom/tamic/novate/Novate$RetryWithDelay$1;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/Novate$RetryWithDelay;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lcom/tamic/novate/Throwable;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tamic/novate/Novate$RetryWithDelay;


# direct methods
.method constructor <init>(Lcom/tamic/novate/Novate$RetryWithDelay;)V
    .registers 2

    .line 2267
    iput-object p1, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2267
    check-cast p1, Lcom/tamic/novate/Throwable;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/Novate$RetryWithDelay$1;->call(Lcom/tamic/novate/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/tamic/novate/Throwable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tamic/novate/Throwable;",
            ")",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 2271
    iget-object v0, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    # ++operator for: Lcom/tamic/novate/Novate$RetryWithDelay;->retryCount:I
    invoke-static {v0}, Lcom/tamic/novate/Novate$RetryWithDelay;->access$1504(Lcom/tamic/novate/Novate$RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    # getter for: Lcom/tamic/novate/Novate$RetryWithDelay;->maxRetries:I
    invoke-static {v1}, Lcom/tamic/novate/Novate$RetryWithDelay;->access$1600(Lcom/tamic/novate/Novate$RetryWithDelay;)I

    move-result v1

    if-gt v0, v1, :cond_46

    .line 2273
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Novate get error, it will try after "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    # getter for: Lcom/tamic/novate/Novate$RetryWithDelay;->retryDelayMillis:I
    invoke-static {v0}, Lcom/tamic/novate/Novate$RetryWithDelay;->access$1700(Lcom/tamic/novate/Novate$RetryWithDelay;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " millisecond, retry count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    .line 2274
    # getter for: Lcom/tamic/novate/Novate$RetryWithDelay;->retryCount:I
    invoke-static {v0}, Lcom/tamic/novate/Novate$RetryWithDelay;->access$1500(Lcom/tamic/novate/Novate$RetryWithDelay;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2273
    const-string v0, "tamic"

    invoke-static {v0, p1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object p1, p0, Lcom/tamic/novate/Novate$RetryWithDelay$1;->this$1:Lcom/tamic/novate/Novate$RetryWithDelay;

    # getter for: Lcom/tamic/novate/Novate$RetryWithDelay;->retryDelayMillis:I
    invoke-static {p1}, Lcom/tamic/novate/Novate$RetryWithDelay;->access$1700(Lcom/tamic/novate/Novate$RetryWithDelay;)I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 2279
    :cond_46
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
