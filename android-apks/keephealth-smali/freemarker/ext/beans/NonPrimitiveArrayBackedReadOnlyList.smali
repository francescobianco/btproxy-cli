.class Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;
.super Ljava/util/AbstractList;
.source "NonPrimitiveArrayBackedReadOnlyList.java"


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 29
    iput-object p1, p0, Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    .line 34
    iget-object v0, p0, Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 39
    iget-object v0, p0, Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
