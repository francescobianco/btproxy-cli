.class Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;
.super Ljava/lang/Object;
.source "_UnmodifiableCompositeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_UnmodifiableCompositeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompositeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private it1Deplected:Z

.field private it2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfreemarker/core/_UnmodifiableCompositeSet;


# direct methods
.method private constructor <init>(Lfreemarker/core/_UnmodifiableCompositeSet;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->this$0:Lfreemarker/core/_UnmodifiableCompositeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/_UnmodifiableCompositeSet;Lfreemarker/core/_UnmodifiableCompositeSet$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;-><init>(Lfreemarker/core/_UnmodifiableCompositeSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 56
    iget-boolean v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1Deplected:Z

    if-nez v0, :cond_2f

    .line 57
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 58
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->this$0:Lfreemarker/core/_UnmodifiableCompositeSet;

    # getter for: Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;
    invoke-static {v0}, Lfreemarker/core/_UnmodifiableCompositeSet;->access$100(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    .line 60
    :cond_14
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    return v1

    .line 64
    :cond_1e
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->this$0:Lfreemarker/core/_UnmodifiableCompositeSet;

    # getter for: Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;
    invoke-static {v0}, Lfreemarker/core/_UnmodifiableCompositeSet;->access$200(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it2:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    .line 66
    iput-boolean v1, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1Deplected:Z

    .line 69
    :cond_2f
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1Deplected:Z

    if-nez v0, :cond_35

    .line 74
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 75
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->this$0:Lfreemarker/core/_UnmodifiableCompositeSet;

    # getter for: Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;
    invoke-static {v0}, Lfreemarker/core/_UnmodifiableCompositeSet;->access$100(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    .line 77
    :cond_14
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 78
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :cond_23
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->this$0:Lfreemarker/core/_UnmodifiableCompositeSet;

    # getter for: Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;
    invoke-static {v0}, Lfreemarker/core/_UnmodifiableCompositeSet;->access$200(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it2:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1:Ljava/util/Iterator;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it1Deplected:Z

    .line 86
    :cond_35
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
