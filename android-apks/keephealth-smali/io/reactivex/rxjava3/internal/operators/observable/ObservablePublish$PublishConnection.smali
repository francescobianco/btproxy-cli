.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservablePublish.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "[",
        "Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable<",
        "TT;>;>;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

.field static final TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

.field private static final serialVersionUID:J = -0x2d1f6696927d02d4L


# instance fields
.field final connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 144
    new-array v1, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 147
    new-array v0, v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 155
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 209
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 210
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    .line 213
    :cond_c
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 215
    new-array v3, v3, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 216
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aput-object p1, v3, v1

    .line 218
    invoke-virtual {p0, v0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public dispose()V
    .registers 3

    .line 162
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    .line 169
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onComplete()V
    .registers 5

    .line 201
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 202
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 203
    iget-object v3, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v3}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_29

    .line 188
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->error:Ljava/lang/Throwable;

    .line 189
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->TERMINATED:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 191
    iget-object v3, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 194
    :cond_29
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_2c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
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

    .line 179
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 180
    iget-object v3, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
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

    .line 174
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public remove(Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 227
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 228
    array-length v1, v0

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_16

    .line 235
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_13

    goto :goto_17

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    const/4 v3, -0x1

    :goto_17
    if-gez v3, :cond_1a

    return-void

    .line 244
    :cond_1a
    sget-object v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->EMPTY:[Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2d

    add-int/lit8 v4, v1, -0x1

    .line 246
    new-array v4, v4, [Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 247
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    .line 248
    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_2d
    invoke-virtual {p0, v0, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservablePublish$PublishConnection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
