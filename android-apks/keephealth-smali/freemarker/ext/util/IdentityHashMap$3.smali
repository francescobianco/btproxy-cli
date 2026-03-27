.class Lfreemarker/ext/util/IdentityHashMap$3;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/util/IdentityHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/util/IdentityHashMap;


# direct methods
.method constructor <init>(Lfreemarker/ext/util/IdentityHashMap;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 586
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {v0}, Lfreemarker/ext/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7

    .line 537
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 539
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 540
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 541
    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;
    invoke-static {v2}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-result-object v2

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_1a

    .line 542
    :cond_16
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1a
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 543
    array-length v4, v2

    rem-int/2addr v3, v4

    .line 545
    aget-object v2, v2, v3

    :goto_22
    if-eqz v2, :cond_33

    .line 546
    iget v3, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_30

    invoke-virtual {v2, p1}, Lfreemarker/ext/util/IdentityHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 p1, 0x1

    return p1

    .line 545
    :cond_30
    iget-object v2, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_22

    :cond_33
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .line 532
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    const/4 v1, 0x2

    # invokes: Lfreemarker/ext/util/IdentityHashMap;->getHashIterator(I)Ljava/util/Iterator;
    invoke-static {v0, v1}, Lfreemarker/ext/util/IdentityHashMap;->access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 11

    .line 553
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 555
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 557
    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;
    invoke-static {v2}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-result-object v2

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_1a

    .line 558
    :cond_16
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1a
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 559
    array-length v4, v2

    rem-int/2addr v3, v4

    .line 561
    aget-object v4, v2, v3

    const/4 v5, 0x0

    move-object v6, v5

    :goto_24
    if-eqz v4, :cond_4f

    .line 564
    iget v7, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v7, v0, :cond_49

    invoke-virtual {v4, p1}, Lfreemarker/ext/util/IdentityHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 565
    iget-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # operator++ for: Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$308(Lfreemarker/ext/util/IdentityHashMap;)I

    if-eqz v6, :cond_3c

    .line 567
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object p1, v6, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_40

    .line 569
    :cond_3c
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    aput-object p1, v2, v3

    .line 571
    :goto_40
    iget-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # operator-- for: Lfreemarker/ext/util/IdentityHashMap;->count:I
    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$110(Lfreemarker/ext/util/IdentityHashMap;)I

    .line 572
    iput-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 563
    :cond_49
    iget-object v6, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    goto :goto_24

    :cond_4f
    return v1
.end method

.method public size()I
    .registers 2

    .line 581
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$3;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->count:I
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    return v0
.end method
