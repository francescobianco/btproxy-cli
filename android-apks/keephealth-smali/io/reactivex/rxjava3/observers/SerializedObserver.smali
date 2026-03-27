.class public final Lio/reactivex/rxjava3/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observer<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final QUEUE_LINK_SIZE:I = 0x4


# instance fields
.field final delayError:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 3
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
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/observers/SerializedObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Z)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/Observer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 64
    iput-boolean p2, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->delayError:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    .line 79
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method emitLoop()V
    .registers 3

    .line 188
    :cond_0
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    .line 192
    monitor-exit p0

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    .line 195
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 197
    iget-object v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->accept(Lio/reactivex/rxjava3/core/Observer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catchall_17
    move-exception v0

    .line 195
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isDisposed()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 3

    .line 161
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    .line 164
    :cond_5
    monitor-enter p0

    .line 165
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    if-eqz v0, :cond_c

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    if-eqz v0, :cond_25

    .line 169
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1c

    .line 171
    new-instance v0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 172
    iput-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    .line 174
    :cond_1c
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 175
    monitor-exit p0

    return-void

    :cond_25
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    .line 178
    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    .line 179
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    .line 181
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return-void

    :catchall_31
    move-exception v0

    .line 179
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    if-eqz v0, :cond_8

    .line 121
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 125
    :cond_8
    monitor-enter p0

    .line 126
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    goto :goto_37

    .line 129
    :cond_f
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    if-eqz v0, :cond_32

    .line 130
    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    .line 131
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_21

    .line 133
    new-instance v0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 134
    iput-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    .line 136
    :cond_21
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 137
    iget-boolean v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->delayError:Z

    if-eqz v1, :cond_2d

    .line 138
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    goto :goto_30

    .line 140
    :cond_2d
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    .line 142
    :goto_30
    monitor-exit p0

    return-void

    .line 144
    :cond_32
    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    .line 145
    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    const/4 v1, 0x0

    .line 148
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    if-eqz v1, :cond_3e

    .line 151
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 155
    :cond_3e
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_44
    move-exception p1

    .line 148
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
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

    .line 89
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_16

    .line 93
    iget-object p1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 94
    const-string p1, "onNext called with a null value."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 97
    :cond_16
    monitor-enter p0

    .line 98
    :try_start_17
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->done:Z

    if-eqz v0, :cond_1d

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_1d
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    if-eqz v0, :cond_36

    .line 102
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2d

    .line 104
    new-instance v0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 105
    iput-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->queue:Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;

    .line 107
    :cond_2d
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 108
    monitor-exit p0

    return-void

    :cond_36
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitting:Z

    .line 111
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_43

    .line 113
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lio/reactivex/rxjava3/observers/SerializedObserver;->emitLoop()V

    return-void

    :catchall_43
    move-exception p1

    .line 111
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
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

    .line 69
    iget-object v0, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    iput-object p1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 72
    iget-object p1, p0, Lio/reactivex/rxjava3/observers/SerializedObserver;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_f
    return-void
.end method
