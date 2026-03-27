.class public Lfreemarker/core/_UnmodifiableCompositeSet;
.super Lfreemarker/core/_UnmodifiableSet;
.source "_UnmodifiableCompositeSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfreemarker/core/_UnmodifiableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final set1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final set2:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lfreemarker/core/_UnmodifiableSet;-><init>()V

    .line 31
    iput-object p1, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;

    .line 32
    iput-object p2, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;
    .registers 1

    .line 26
    iget-object p0, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/core/_UnmodifiableCompositeSet;)Ljava/util/Set;
    .registers 1

    .line 26
    iget-object p0, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 42
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_UnmodifiableCompositeSet$CompositeIterator;-><init>(Lfreemarker/core/_UnmodifiableCompositeSet;Lfreemarker/core/_UnmodifiableCompositeSet$1;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 47
    iget-object v0, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/_UnmodifiableCompositeSet;->set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
