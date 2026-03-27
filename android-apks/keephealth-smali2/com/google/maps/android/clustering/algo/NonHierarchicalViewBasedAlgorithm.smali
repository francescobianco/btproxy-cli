.class public Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;
.super Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;
.source "NonHierarchicalViewBasedAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<",
        "TT;>;",
        "Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;


# instance fields
.field private mMapCenter:Lcom/google/android/libraries/maps/model/LatLng;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    sput-object v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewWidth:I

    .line 48
    iput p2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewHeight:I

    return-void
.end method

.method private getVisibleBounds(F)Lcom/google/maps/android/geometry/Bounds;
    .registers 23

    move-object/from16 v0, p0

    .line 95
    iget-object v1, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mMapCenter:Lcom/google/android/libraries/maps/model/LatLng;

    if-nez v1, :cond_15

    .line 96
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v1

    .line 99
    :cond_15
    sget-object v2, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    invoke-virtual {v2, v1}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toPoint(Lcom/google/android/libraries/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;

    move-result-object v1

    .line 101
    iget v2, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewWidth:I

    int-to-double v2, v2

    move/from16 v4, p1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v2, v8

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 102
    iget v10, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewHeight:I

    int-to-double v10, v10

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v10, v4

    div-double/2addr v10, v8

    div-double/2addr v10, v6

    .line 104
    new-instance v4, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v5, v1, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double v13, v5, v2

    iget-wide v5, v1, Lcom/google/maps/android/geometry/Point;->x:D

    add-double v15, v5, v2

    iget-wide v2, v1, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double v17, v2, v10

    iget-wide v1, v1, Lcom/google/maps/android/geometry/Point;->y:D

    add-double v19, v1, v10

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v4
.end method


# virtual methods
.method protected getClusteringItems(Lcom/google/maps/android/quadtree/PointQuadTree;F)Ljava/util/Collection;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/quadtree/PointQuadTree<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<",
            "TT;>;>;F)",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<",
            "TT;>;>;"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->getVisibleBounds(F)Lcom/google/maps/android/geometry/Bounds;

    move-result-object p2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-wide v1, p2, Lcom/google/maps/android/geometry/Bounds;->minX:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_39

    .line 63
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Bounds;->minX:D

    add-double v5, v4, v2

    iget-wide v9, p2, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v11, p2, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    .line 64
    invoke-virtual {p1, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v7, p2, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    iget-wide v9, p2, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v11, p2, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    const-wide/16 v5, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object p2, v1

    .line 67
    :cond_39
    iget-wide v4, p2, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_65

    .line 68
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    sub-double v7, v4, v2

    iget-wide v9, p2, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v11, p2, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    const-wide/16 v5, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v3, p2, Lcom/google/maps/android/geometry/Bounds;->minX:D

    iget-wide v7, p2, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-wide v9, p2, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object p2, v1

    .line 72
    :cond_65
    invoke-virtual {p1, p2}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public onCameraChange(Lcom/google/android/libraries/maps/model/CameraPosition;)V
    .registers 2

    .line 53
    iget-object p1, p1, Lcom/google/android/libraries/maps/model/CameraPosition;->target:Lcom/google/android/libraries/maps/model/LatLng;

    iput-object p1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mMapCenter:Lcom/google/android/libraries/maps/model/LatLng;

    return-void
.end method

.method public shouldReclusterOnMapMovement()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateViewSize(II)V
    .registers 3

    .line 90
    iput p1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewWidth:I

    .line 91
    iput p2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalViewBasedAlgorithm;->mViewHeight:I

    return-void
.end method
