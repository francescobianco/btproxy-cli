.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableUsing.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/rxjava3/core/CompletableObserver;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x95bf75d78cfb0efL


# instance fields
.field final disposer:Lio/reactivex/rxjava3/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

.field final eager:Z

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/CompletableObserver;Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Consumer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "resource",
            "disposer",
            "eager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/CompletableObserver;",
            "TR;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-TR;>;Z)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 103
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposer:Lio/reactivex/rxjava3/functions/Consumer;

    .line 104
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 109
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposeResource()V

    .line 111
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 112
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1d

    .line 114
    :cond_11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 115
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 116
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposeResource()V

    :goto_1d
    return-void
.end method

.method disposeResource()V
    .registers 3

    .line 122
    invoke-virtual {p0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_13

    .line 125
    :try_start_6
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_13

    :catchall_c
    move-exception v0

    .line 127
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 128
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 3

    .line 175
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 176
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1e

    .line 177
    invoke-virtual {p0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1d

    .line 180
    :try_start_e
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_1e

    :catchall_14
    move-exception v0

    .line 182
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 183
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1d
    return-void

    .line 191
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    .line 193
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    if-nez v0, :cond_2a

    .line 194
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposeResource()V

    :cond_2a
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

    .line 150
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 151
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_29

    .line 152
    invoke-virtual {p0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_28

    .line 155
    :try_start_e
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposer:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_29

    :catchall_14
    move-exception v0

    .line 157
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 158
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_29

    :cond_28
    return-void

    .line 165
    :cond_29
    :goto_29
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 167
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->eager:Z

    if-nez p1, :cond_35

    .line 168
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->disposeResource()V

    :cond_35
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

    .line 140
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 143
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableUsing$UsingObserver;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_f
    return-void
.end method
