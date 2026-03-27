.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;
.super Ljava/lang/Object;
.source "ParallelPeek.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelPeekSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek<",
            "TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 101
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onCancel:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    .line 120
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 123
    :goto_f
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .registers 3

    .line 193
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->done:Z

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->done:Z

    .line 196
    :try_start_7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onComplete:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_23

    .line 202
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 205
    :try_start_13
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onAfterTerminated:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_2c

    :catchall_1b
    move-exception v0

    .line 207
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 208
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    .line 198
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 199
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 170
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->done:Z

    .line 176
    :try_start_b
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_25

    :catchall_13
    move-exception v1

    .line 178
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 179
    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 181
    :goto_25
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 184
    :try_start_2a
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object p1, p1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onAfterTerminated:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {p1}, Lio/reactivex/rxjava3/functions/Action;->run()V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_39

    :catchall_32
    move-exception p1

    .line 186
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 187
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->done:Z

    if-nez v0, :cond_27

    .line 149
    :try_start_4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onNext:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_20

    .line 156
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 159
    :try_start_10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onAfterNext:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_27

    :catchall_18
    move-exception p1

    .line 161
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27

    :catchall_20
    move-exception p1

    .line 151
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 129
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 132
    :try_start_a
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 141
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    goto :goto_28

    :catchall_17
    move-exception v0

    .line 134
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 136
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 137
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public request(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->parent:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek;->onRequest:Lio/reactivex/rxjava3/functions/LongConsumer;

    invoke-interface {v0, p1, p2}, Lio/reactivex/rxjava3/functions/LongConsumer;->accept(J)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    .line 109
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 110
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 112
    :goto_f
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelPeek$ParallelPeekSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
