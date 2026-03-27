.class Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;
.super Ljava/util/AbstractList;
.source "PrimtiveArrayBackedReadOnlyList.java"


# instance fields
.field private final array:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 34
    iput-object p1, p0, Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    .line 39
    iget-object v0, p0, Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;->array:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 44
    iget-object v0, p0, Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;->array:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
