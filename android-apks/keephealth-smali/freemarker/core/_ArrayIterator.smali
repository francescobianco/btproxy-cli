.class public Lfreemarker/core/_ArrayIterator;
.super Ljava/lang/Object;
.source "_ArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final array:[Ljava/lang/Object;

.field private nextIndex:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lfreemarker/core/_ArrayIterator;->array:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lfreemarker/core/_ArrayIterator;->nextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 37
    iget v0, p0, Lfreemarker/core/_ArrayIterator;->nextIndex:I

    iget-object v1, p0, Lfreemarker/core/_ArrayIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 41
    iget v0, p0, Lfreemarker/core/_ArrayIterator;->nextIndex:I

    iget-object v1, p0, Lfreemarker/core/_ArrayIterator;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    .line 44
    iput v2, p0, Lfreemarker/core/_ArrayIterator;->nextIndex:I

    aget-object v0, v1, v0

    return-object v0

    .line 42
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
