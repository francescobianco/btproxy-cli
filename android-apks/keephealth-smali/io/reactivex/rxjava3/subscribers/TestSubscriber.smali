.class public Lio/reactivex/rxjava3/subscribers/TestSubscriber;
.super Lio/reactivex/rxjava3/observers/BaseTestConsumer;
.source "TestSubscriber.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/subscribers/TestSubscriber$EmptySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/observers/BaseTestConsumer<",
        "TT;",
        "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
        "TT;>;>;",
        "Lio/reactivex/rxjava3/core/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 86
    sget-object v0, Lio/reactivex/rxjava3/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/rxjava3/subscribers/TestSubscriber$EmptySubscriber;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialRequest"
        }
    .end annotation

    .line 96
    sget-object v0, Lio/reactivex/rxjava3/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/rxjava3/subscribers/TestSubscriber$EmptySubscriber;

    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 104
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "initialRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lio/reactivex/rxjava3/observers/BaseTestConsumer;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1a

    .line 120
    iput-object p1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 121
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 118
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative initial request not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create()Lio/reactivex/rxjava3/subscribers/TestSubscriber;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;

    invoke-direct {v0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>()V

    return-object v0
.end method

.method public static create(J)Lio/reactivex/rxjava3/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialRequested"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>(J)V

    return-object v0
.end method

.method public static create(Lorg/reactivestreams/Subscriber;)Lio/reactivex/rxjava3/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic assertSubscribed()Lio/reactivex/rxjava3/observers/BaseTestConsumer;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->assertSubscribed()Lio/reactivex/rxjava3/subscribers/TestSubscriber;

    move-result-object v0

    return-object v0
.end method

.method protected final assertSubscribed()Lio/reactivex/rxjava3/subscribers/TestSubscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object p0

    .line 268
    :cond_9
    const-string v0, "Not subscribed!"

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->fail(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final cancel()V
    .registers 2

    .line 225
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->cancelled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->cancelled:Z

    .line 227
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_c
    return-void
.end method

.method protected final dispose()V
    .registers 1

    .line 241
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->cancel()V

    return-void
.end method

.method public final hasSubscription()Z
    .registers 2

    .line 256
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isCancelled()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->cancelled:Z

    return v0
.end method

.method protected final isDisposed()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .registers 5

    .line 202
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    .line 204
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 205
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    .line 210
    iget-wide v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->completions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->completions:J

    .line 212
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_33

    .line 214
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_33
    move-exception v0

    iget-object v1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    .line 181
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 182
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    if-nez p1, :cond_30

    .line 189
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 191
    :cond_30
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_35
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_40

    .line 196
    iget-object p1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_40
    move-exception p1

    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 197
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
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

    .line 160
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->checkSubscriptionOnce:Z

    .line 162
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 163
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_34

    .line 171
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_34
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->lastThread:Ljava/lang/Thread;

    if-nez p1, :cond_15

    .line 130
    iget-object p1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 133
    :cond_15
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 134
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 135
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_44

    .line 136
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSubscribe received multiple subscriptions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void

    .line 141
    :cond_45
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 143
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_59

    .line 145
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 148
    :cond_59
    invoke-virtual {p0}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->onStart()V

    return-void
.end method

.method public final request(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public final requestMore(J)Lio/reactivex/rxjava3/subscribers/TestSubscriber;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/subscribers/TestSubscriber<",
            "TT;>;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/subscribers/TestSubscriber;->request(J)V

    return-object p0
.end method
