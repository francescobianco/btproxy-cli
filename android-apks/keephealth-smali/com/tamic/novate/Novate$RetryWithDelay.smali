.class public Lcom/tamic/novate/Novate$RetryWithDelay;
.super Ljava/lang/Object;
.source "Novate.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/Novate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetryWithDelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Lcom/tamic/novate/Throwable;",
        ">;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final maxRetries:I

.field private retryCount:I

.field private final retryDelayMillis:I

.field final synthetic this$0:Lcom/tamic/novate/Novate;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/Novate;II)V
    .registers 4

    .line 2259
    iput-object p1, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->this$0:Lcom/tamic/novate/Novate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2260
    iput p2, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->maxRetries:I

    .line 2261
    iput p3, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->retryDelayMillis:I

    return-void
.end method

.method static synthetic access$1500(Lcom/tamic/novate/Novate$RetryWithDelay;)I
    .registers 1

    .line 2252
    iget p0, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->retryCount:I

    return p0
.end method

.method static synthetic access$1504(Lcom/tamic/novate/Novate$RetryWithDelay;)I
    .registers 2

    .line 2252
    iget v0, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->retryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tamic/novate/Novate$RetryWithDelay;)I
    .registers 1

    .line 2252
    iget p0, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->maxRetries:I

    return p0
.end method

.method static synthetic access$1700(Lcom/tamic/novate/Novate$RetryWithDelay;)I
    .registers 1

    .line 2252
    iget p0, p0, Lcom/tamic/novate/Novate$RetryWithDelay;->retryDelayMillis:I

    return p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2252
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/Novate$RetryWithDelay;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lcom/tamic/novate/Throwable;",
            ">;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 2266
    new-instance v0, Lcom/tamic/novate/Novate$RetryWithDelay$1;

    invoke-direct {v0, p0}, Lcom/tamic/novate/Novate$RetryWithDelay$1;-><init>(Lcom/tamic/novate/Novate$RetryWithDelay;)V

    .line 2267
    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
