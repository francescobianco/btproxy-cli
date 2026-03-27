.class Lfreemarker/ext/util/IdentityHashMap$HashIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HashIterator"
.end annotation


# instance fields
.field entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

.field private expectedModCount:I

.field index:I

.field lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

.field table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

.field final synthetic this$0:Lfreemarker/ext/util/IdentityHashMap;

.field type:I


# direct methods
.method constructor <init>(Lfreemarker/ext/util/IdentityHashMap;I)V
    .registers 4

    .line 708
    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    # getter for: Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;
    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 696
    array-length v0, v0

    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->index:I

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 698
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 706
    # getter for: Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    invoke-static {p1}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result p1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->expectedModCount:I

    .line 709
    iput p2, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->type:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 713
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 714
    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->index:I

    .line 715
    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    :goto_6
    if-nez v0, :cond_f

    if-lez v1, :cond_f

    add-int/lit8 v1, v1, -0x1

    .line 718
    aget-object v0, v2, v1

    goto :goto_6

    .line 719
    :cond_f
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 720
    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->index:I

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 725
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_38

    .line 728
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 729
    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->index:I

    .line 730
    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    :goto_10
    if-nez v0, :cond_19

    if-lez v1, :cond_19

    add-int/lit8 v1, v1, -0x1

    .line 734
    aget-object v0, v2, v1

    goto :goto_10

    .line 736
    :cond_19
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 737
    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->index:I

    if-eqz v0, :cond_32

    .line 739
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 740
    iget-object v1, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->entry:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 741
    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->type:I

    if-nez v1, :cond_2c

    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    goto :goto_31

    :cond_2c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    :cond_31
    :goto_31
    return-object v0

    .line 743
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 726
    :cond_38
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 8

    .line 747
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    if-eqz v0, :cond_58

    .line 749
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$300(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_52

    .line 752
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iget v1, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 755
    aget-object v2, v0, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_22
    if-eqz v2, :cond_4c

    .line 758
    iget-object v5, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    if-ne v2, v5, :cond_46

    .line 759
    iget-object v5, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # operator++ for: Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    invoke-static {v5}, Lfreemarker/ext/util/IdentityHashMap;->access$308(Lfreemarker/ext/util/IdentityHashMap;)I

    .line 760
    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->expectedModCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->expectedModCount:I

    if-nez v4, :cond_3a

    .line 762
    iget-object v2, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    aput-object v2, v0, v1

    goto :goto_3e

    .line 764
    :cond_3a
    iget-object v0, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object v0, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 765
    :goto_3e
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # operator-- for: Lfreemarker/ext/util/IdentityHashMap;->count:I
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$110(Lfreemarker/ext/util/IdentityHashMap;)I

    .line 766
    iput-object v3, p0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;->lastReturned:Lfreemarker/ext/util/IdentityHashMap$Entry;

    return-void

    .line 757
    :cond_46
    iget-object v4, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_22

    .line 770
    :cond_4c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 750
    :cond_52
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 748
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
