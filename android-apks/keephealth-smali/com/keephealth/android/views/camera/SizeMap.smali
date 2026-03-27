.class public Lcom/keephealth/android/views/camera/SizeMap;
.super Ljava/lang/Object;
.source "SizeMap.java"


# instance fields
.field private final mRatios:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/keephealth/android/views/camera/AspectRatio;",
            "Ljava/util/SortedSet<",
            "Lcom/keephealth/android/views/camera/Size;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/keephealth/android/views/camera/Size;)Z
    .registers 6

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/camera/AspectRatio;

    .line 27
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->matches(Lcom/keephealth/android/views/camera/Size;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 29
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_2d
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return v2

    .line 38
    :cond_31
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 39
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getHeight()I

    move-result p1

    invoke-static {v3, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->of(II)Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method clear()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method

.method isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method ratios()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/keephealth/android/views/camera/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/keephealth/android/views/camera/AspectRatio;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method sizes(Lcom/keephealth/android/views/camera/AspectRatio;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/camera/AspectRatio;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/keephealth/android/views/camera/Size;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SizeMap;->mRatios:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method
