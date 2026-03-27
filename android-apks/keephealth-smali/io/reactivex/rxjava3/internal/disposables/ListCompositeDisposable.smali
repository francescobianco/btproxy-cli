.class public final Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lio/reactivex/rxjava3/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "resources is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 46
    const-string v1, "Disposable item is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2a
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/rxjava3/disposables/Disposable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "resources is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_22

    aget-object v2, p1, v1

    .line 37
    const-string v3, "Disposable item is null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 76
    const-string v0, "d is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_24

    .line 78
    monitor-enter p0

    .line 79
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_1f

    .line 80
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v0, :cond_19

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 83
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 85
    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw p1

    .line 90
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public varargs addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 95
    const-string v0, "ds is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 97
    monitor-enter p0

    .line 98
    :try_start_b
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_2d

    .line 99
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 102
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 104
    :cond_1a
    array-length v2, p1

    :goto_1b
    if-ge v1, v2, :cond_2a

    aget-object v3, p1, v1

    .line 105
    const-string v4, "d is null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 108
    :cond_2a
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_2d
    monitor-exit p0

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw p1

    .line 112
    :cond_32
    :goto_32
    array-length v0, p1

    move v2, v1

    :goto_34
    if-ge v2, v0, :cond_3e

    aget-object v3, p1, v2

    .line 113
    invoke-interface {v3}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_3e
    return v1
.end method

.method public clear()V
    .registers 3

    .line 147
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 151
    :cond_5
    monitor-enter p0

    .line 152
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_c

    .line 153
    monitor-exit p0

    return-void

    .line 156
    :cond_c
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 158
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 160
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    :catchall_16
    move-exception v0

    .line 158
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 129
    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 133
    :cond_b
    monitor-enter p0

    .line 134
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_12

    .line 135
    monitor-exit p0

    return v1

    .line 138
    :cond_12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 139
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_20

    .line 142
    :cond_1d
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 140
    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    .line 142
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1
.end method

.method public dispose()V
    .registers 3

    .line 53
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 57
    :cond_5
    monitor-enter p0

    .line 58
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_c

    .line 59
    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    .line 62
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    .line 64
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 66
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    :catchall_19
    move-exception v0

    .line 64
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method dispose(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 168
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 170
    :try_start_14
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_8

    :catchall_18
    move-exception v1

    .line 172
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v0, :cond_23

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_27
    if-eqz v0, :cond_42

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3c

    const/4 p1, 0x0

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 183
    :cond_3c
    new-instance p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_42
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 121
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
