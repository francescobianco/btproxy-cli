.class final Lfreemarker/core/LocalContextStack;
.super Ljava/lang/Object;
.source "LocalContextStack.java"


# instance fields
.field private buffer:[Lfreemarker/core/LocalContext;

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 28
    new-array v0, v0, [Lfreemarker/core/LocalContext;

    iput-object v0, p0, Lfreemarker/core/LocalContextStack;->buffer:[Lfreemarker/core/LocalContext;

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/core/LocalContext;
    .registers 3

    .line 50
    iget-object v0, p0, Lfreemarker/core/LocalContextStack;->buffer:[Lfreemarker/core/LocalContext;

    aget-object p1, v0, p1

    return-object p1
.end method

.method pop()V
    .registers 4

    .line 46
    iget-object v0, p0, Lfreemarker/core/LocalContextStack;->buffer:[Lfreemarker/core/LocalContext;

    iget v1, p0, Lfreemarker/core/LocalContextStack;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfreemarker/core/LocalContextStack;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method push(Lfreemarker/core/LocalContext;)V
    .registers 7

    .line 32
    iget v0, p0, Lfreemarker/core/LocalContextStack;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/core/LocalContextStack;->size:I

    .line 33
    iget-object v2, p0, Lfreemarker/core/LocalContextStack;->buffer:[Lfreemarker/core/LocalContext;

    .line 34
    array-length v3, v2

    if-ge v3, v1, :cond_1d

    mul-int/lit8 v1, v1, 0x2

    .line 35
    new-array v1, v1, [Lfreemarker/core/LocalContext;

    const/4 v3, 0x0

    .line 36
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_1a

    .line 37
    aget-object v4, v2, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 40
    :cond_1a
    iput-object v1, p0, Lfreemarker/core/LocalContextStack;->buffer:[Lfreemarker/core/LocalContext;

    move-object v2, v1

    .line 42
    :cond_1d
    aput-object p1, v2, v0

    return-void
.end method

.method public size()I
    .registers 2

    .line 54
    iget v0, p0, Lfreemarker/core/LocalContextStack;->size:I

    return v0
.end method
