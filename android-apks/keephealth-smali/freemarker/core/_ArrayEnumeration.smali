.class public Lfreemarker/core/_ArrayEnumeration;
.super Ljava/lang/Object;
.source "_ArrayEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final array:[Ljava/lang/Object;

.field private nextIndex:I

.field private final size:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lfreemarker/core/_ArrayEnumeration;->array:[Ljava/lang/Object;

    .line 34
    iput p2, p0, Lfreemarker/core/_ArrayEnumeration;->size:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lfreemarker/core/_ArrayEnumeration;->nextIndex:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .line 39
    iget v0, p0, Lfreemarker/core/_ArrayEnumeration;->nextIndex:I

    iget v1, p0, Lfreemarker/core/_ArrayEnumeration;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .line 43
    iget v0, p0, Lfreemarker/core/_ArrayEnumeration;->nextIndex:I

    iget v1, p0, Lfreemarker/core/_ArrayEnumeration;->size:I

    if-ge v0, v1, :cond_f

    .line 46
    iget-object v1, p0, Lfreemarker/core/_ArrayEnumeration;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lfreemarker/core/_ArrayEnumeration;->nextIndex:I

    aget-object v0, v1, v0

    return-object v0

    .line 44
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
