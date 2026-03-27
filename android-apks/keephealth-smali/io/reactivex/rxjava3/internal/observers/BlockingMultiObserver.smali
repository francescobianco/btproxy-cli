.class public final Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingMultiObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/core/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/rxjava3/core/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/CompletableObserver;",
        "Lio/reactivex/rxjava3/core/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field error:Ljava/lang/Throwable;

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blockingAwait(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    .line 133
    :try_start_a
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 135
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->dispose()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_16} :catch_18

    const/4 p1, 0x0

    return p1

    :catch_18
    move-exception p1

    .line 139
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->dispose()V

    .line 140
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 143
    :cond_21
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez p1, :cond_27

    const/4 p1, 0x1

    return p1

    .line 145
    :cond_27
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blockingConsume(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "onSuccess",
            "onError",
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/rxjava3/functions/Action;",
            ")V"
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->getCount()J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_2d

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 160
    :try_start_a
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 161
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_11
    .catchall {:try_start_a .. :try_end_10} :catchall_2d

    goto :goto_19

    :catch_11
    move-exception p1

    .line 163
    :try_start_12
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->dispose()V

    .line 164
    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 168
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_21

    .line 170
    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 173
    :cond_21
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    if-eqz p2, :cond_29

    .line 175
    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_34

    .line 177
    :cond_29
    invoke-interface {p3}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_34

    :catchall_2d
    move-exception p1

    .line 180
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 181
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_34
    return-void
.end method

.method public blockingGet()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 85
    :try_start_a
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 86
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    .line 88
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->dispose()V

    .line 89
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 92
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_21

    .line 96
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    return-object v0

    .line 94
    :cond_21
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blockingGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 108
    :try_start_a
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 109
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception p1

    .line 111
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->dispose()V

    .line 112
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 115
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_24

    .line 119
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_23

    move-object p1, v0

    :cond_23
    return-object p1

    .line 117
    :cond_24
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->cancelled:Z

    .line 46
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 48
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method public onComplete()V
    .registers 1

    .line 74
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->error:Ljava/lang/Throwable;

    .line 69
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 55
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->cancelled:Z

    if-eqz v0, :cond_9

    .line 56
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_9
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->value:Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method
