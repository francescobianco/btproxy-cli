.class public final Lio/reactivex/rxjava3/subjects/CompletableSubject;
.super Lio/reactivex/rxjava3/core/Completable;
.source "CompletableSubject.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

.field static final TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    new-array v1, v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    sput-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    .line 93
    new-array v0, v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    sput-object v0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 108
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/rxjava3/subjects/CompletableSubject;
    .registers 1
    .annotation runtime Lio/reactivex/rxjava3/annotations/CheckReturnValue;
    .end annotation

    .line 105
    new-instance v0, Lio/reactivex/rxjava3/subjects/CompletableSubject;

    invoke-direct {v0}, Lio/reactivex/rxjava3/subjects/CompletableSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .line 162
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    .line 163
    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    return v2

    .line 167
    :cond_e
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 169
    new-array v3, v3, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    .line 170
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    aput-object p1, v3, v1

    .line 172
    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    .line 219
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_d

    .line 220
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .registers 3

    .line 238
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 246
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasThrowable()Z
    .registers 3

    .line 230
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method observerCount()I
    .registers 2

    .line 254
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    array-length v0, v0

    return v0
.end method

.method public onComplete()V
    .registers 5

    .line 135
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 136
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    array-length v1, v0

    :goto_15
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 137
    iget-object v3, v3, Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v3}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_21
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

    .line 122
    const-string v0, "onError called with a null Throwable."

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->nullCheck(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 124
    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    .line 125
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    array-length v1, v0

    :goto_1c
    if-ge v2, v1, :cond_2b

    aget-object v3, v0, v2

    .line 126
    iget-object v3, v3, Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;->downstream:Lio/reactivex/rxjava3/core/CompletableObserver;

    invoke-interface {v3, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 129
    :cond_28
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_d

    .line 116
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_d
    return-void
.end method

.method remove(Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .line 180
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    .line 181
    array-length v1, v0

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_18

    .line 189
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, -0x1

    :goto_19
    if-gez v3, :cond_1c

    return-void

    :cond_1c
    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    .line 200
    sget-object v1, Lio/reactivex/rxjava3/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    goto :goto_31

    :cond_22
    add-int/lit8 v5, v1, -0x1

    .line 202
    new-array v5, v5, [Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    .line 203
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 204
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 207
    :goto_31
    iget-object v2, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 144
    new-instance v0, Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;-><init>(Lio/reactivex/rxjava3/core/CompletableObserver;Lio/reactivex/rxjava3/subjects/CompletableSubject;)V

    .line 145
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 146
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/CompletableSubject;->add(Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 147
    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 148
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/CompletableSubject;->remove(Lio/reactivex/rxjava3/subjects/CompletableSubject$CompletableDisposable;)V

    goto :goto_23

    .line 151
    :cond_18
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_20

    .line 153
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_23

    .line 155
    :cond_20
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    :cond_23
    :goto_23
    return-void
.end method
