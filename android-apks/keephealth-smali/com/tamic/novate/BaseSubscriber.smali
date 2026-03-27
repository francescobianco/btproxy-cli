.class public abstract Lcom/tamic/novate/BaseSubscriber;
.super Lrx/Subscriber;
.source "BaseSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tamic/novate/BaseSubscriber;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 78
    const-string v0, "Novate"

    const-string v1, "-->http is Complete"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onError(Lcom/tamic/novate/Throwable;)V
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 45
    const-string v0, "Novate"

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 49
    :cond_12
    const-string v1, "Throwable  || Message == Null"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_17
    instance-of v1, p1, Lcom/tamic/novate/Throwable;

    const-string v2, "--> "

    if-eqz v1, :cond_40

    .line 53
    const-string v1, "--> e instanceof Throwable"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    check-cast p1, Lcom/tamic/novate/Throwable;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/BaseSubscriber;->onError(Lcom/tamic/novate/Throwable;)V

    goto :goto_6d

    .line 57
    :cond_40
    const-string v1, "e !instanceof Throwable"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_56

    .line 59
    :cond_54
    const-string v1, ""

    .line 62
    :goto_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tamic/novate/BaseSubscriber;->onError(Lcom/tamic/novate/Throwable;)V

    .line 65
    :goto_6d
    invoke-virtual {p0}, Lcom/tamic/novate/BaseSubscriber;->onCompleted()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 70
    invoke-super {p0}, Lrx/Subscriber;->onStart()V

    .line 71
    const-string v0, "Novate"

    const-string v1, "-->http is start"

    invoke-static {v0, v1}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
