.class public Lcom/google/maps/android/clustering/ClusterManager;
.super Ljava/lang/Object;
.source "ClusterManager.java"

# interfaces
.implements Lcom/google/android/libraries/maps/GoogleMap$OnCameraIdleListener;
.implements Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;,
        Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnCameraIdleListener;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;"
    }
.end annotation


# instance fields
.field private mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mClusterMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

.field private mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager<",
            "TT;>.ClusterTask;"
        }
    .end annotation
.end field

.field private final mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mMap:Lcom/google/android/libraries/maps/GoogleMap;

.field private final mMarkerManager:Lcom/google/maps/android/collections/MarkerManager;

.field private final mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

.field private mOnClusterClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnClusterInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnClusterItemInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPreviousCameraPosition:Lcom/google/android/libraries/maps/model/CameraPosition;

.field private mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/maps/GoogleMap;)V
    .registers 4

    .line 68
    new-instance v0, Lcom/google/maps/android/collections/MarkerManager;

    invoke-direct {v0, p2}, Lcom/google/maps/android/collections/MarkerManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/android/clustering/ClusterManager;-><init>(Landroid/content/Context;Lcom/google/android/libraries/maps/GoogleMap;Lcom/google/maps/android/collections/MarkerManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/maps/GoogleMap;Lcom/google/maps/android/collections/MarkerManager;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 72
    iput-object p2, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    .line 73
    iput-object p3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/collections/MarkerManager;

    .line 74
    invoke-virtual {p3}, Lcom/google/maps/android/collections/MarkerManager;->newCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    .line 75
    invoke-virtual {p3}, Lcom/google/maps/android/collections/MarkerManager;->newCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;

    move-result-object p3

    iput-object p3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    .line 76
    new-instance p3, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;

    invoke-direct {p3, p1, p2, p0}, Lcom/google/maps/android/clustering/view/DefaultClusterRenderer;-><init>(Landroid/content/Context;Lcom/google/android/libraries/maps/GoogleMap;Lcom/google/maps/android/clustering/ClusterManager;)V

    iput-object p3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    .line 77
    new-instance p1, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithmAdapter;

    new-instance p2, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;

    new-instance p3, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;

    invoke-direct {p3}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;-><init>()V

    invoke-direct {p2, p3}, Lcom/google/maps/android/clustering/algo/PreCachingAlgorithmDecorator;-><init>(Lcom/google/maps/android/clustering/algo/Algorithm;)V

    invoke-direct {p1, p2}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithmAdapter;-><init>(Lcom/google/maps/android/clustering/algo/Algorithm;)V

    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    .line 80
    new-instance p1, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;-><init>(Lcom/google/maps/android/clustering/ClusterManager;Lcom/google/maps/android/clustering/ClusterManager$1;)V

    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    .line 81
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onAdd()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/maps/android/clustering/ClusterManager;)Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/maps/android/clustering/ClusterManager;)Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 187
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 189
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return p1

    :catchall_11
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 190
    throw p1
.end method

.method public addItems(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 172
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->addItems(Ljava/util/Collection;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 174
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return p1

    :catchall_11
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 175
    throw p1
.end method

.method public clearItems()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 157
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->clearItems()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 159
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 160
    throw v0
.end method

.method public cluster()V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    :try_start_9
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;->cancel(Z)Z

    .line 248
    new-instance v0, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;-><init>(Lcom/google/maps/android/clustering/ClusterManager;Lcom/google/maps/android/clustering/ClusterManager$1;)V

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTask:Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;

    .line 249
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Float;

    iget-object v3, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/libraries/maps/GoogleMap;->getCameraPosition()Lcom/google/android/libraries/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/google/android/libraries/maps/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/android/clustering/ClusterManager$ClusterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_37

    .line 251
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterTaskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    throw v0
.end method

.method public getAlgorithm()Lcom/google/maps/android/clustering/algo/Algorithm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/maps/android/clustering/algo/Algorithm<",
            "TT;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    return-object v0
.end method

.method public getClusterMarkerCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    return-object v0
.end method

.method public getMarkerCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    return-object v0
.end method

.method public getMarkerManager()Lcom/google/maps/android/collections/MarkerManager;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkerManager:Lcom/google/maps/android/collections/MarkerManager;

    return-object v0
.end method

.method public getRenderer()Lcom/google/maps/android/clustering/view/ClusterRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    return-object v0
.end method

.method public onCameraIdle()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    instance-of v1, v0, Lcom/google/android/libraries/maps/GoogleMap$OnCameraIdleListener;

    if-eqz v1, :cond_b

    .line 261
    check-cast v0, Lcom/google/android/libraries/maps/GoogleMap$OnCameraIdleListener;

    invoke-interface {v0}, Lcom/google/android/libraries/maps/GoogleMap$OnCameraIdleListener;->onCameraIdle()V

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/GoogleMap;->getCameraPosition()Lcom/google/android/libraries/maps/model/CameraPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->onCameraChange(Lcom/google/android/libraries/maps/model/CameraPosition;)V

    .line 267
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->shouldReclusterOnMapMovement()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 268
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    goto :goto_3f

    .line 271
    :cond_22
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mPreviousCameraPosition:Lcom/google/android/libraries/maps/model/CameraPosition;

    if-eqz v0, :cond_34

    iget v0, v0, Lcom/google/android/libraries/maps/model/CameraPosition;->zoom:F

    iget-object v1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/GoogleMap;->getCameraPosition()Lcom/google/android/libraries/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/libraries/maps/model/CameraPosition;->zoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3f

    .line 272
    :cond_34
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/GoogleMap;->getCameraPosition()Lcom/google/android/libraries/maps/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mPreviousCameraPosition:Lcom/google/android/libraries/maps/model/CameraPosition;

    .line 273
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->getMarkerManager()Lcom/google/maps/android/collections/MarkerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/MarkerManager;->onInfoWindowClick(Lcom/google/android/libraries/maps/model/Marker;)V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/libraries/maps/model/Marker;)Z
    .registers 3

    .line 279
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->getMarkerManager()Lcom/google/maps/android/collections/MarkerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/MarkerManager;->onMarkerClick(Lcom/google/android/libraries/maps/model/Marker;)Z

    move-result p1

    return p1
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 217
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->removeItem(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 219
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return p1

    :catchall_11
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 220
    throw p1
.end method

.method public removeItems(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 202
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->removeItems(Ljava/util/Collection;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 204
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return p1

    :catchall_11
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 205
    throw p1
.end method

.method public setAlgorithm(Lcom/google/maps/android/clustering/algo/Algorithm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/algo/Algorithm<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    instance-of v0, p1, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    if-eqz v0, :cond_a

    .line 113
    check-cast p1, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/clustering/ClusterManager;->setAlgorithm(Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;)V

    goto :goto_12

    .line 115
    :cond_a
    new-instance v0, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithmAdapter;

    invoke-direct {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithmAdapter;-><init>(Lcom/google/maps/android/clustering/algo/Algorithm;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/android/clustering/ClusterManager;->setAlgorithm(Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;)V

    :goto_12
    return-void
.end method

.method public setAlgorithm(Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 122
    :try_start_3
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    if-eqz v0, :cond_e

    .line 123
    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->getItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->addItems(Ljava/util/Collection;)Z

    .line 126
    :cond_e
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2a

    .line 128
    invoke-interface {p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 131
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->shouldReclusterOnMapMovement()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 132
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/GoogleMap;->getCameraPosition()Lcom/google/android/libraries/maps/model/CameraPosition;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->onCameraChange(Lcom/google/android/libraries/maps/model/CameraPosition;)V

    .line 135
    :cond_26
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    return-void

    :catchall_2a
    move-exception v0

    .line 128
    invoke-interface {p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 129
    throw v0
.end method

.method public setAnimation(Z)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setAnimation(Z)V

    return-void
.end method

.method public setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;

    .line 313
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V

    return-void
.end method

.method public setOnClusterInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;

    .line 322
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;)V

    return-void
.end method

.method public setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;

    .line 331
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    return-void
.end method

.method public setOnClusterItemInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    .line 340
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)V

    return-void
.end method

.method public setRenderer(Lcom/google/maps/android/clustering/view/ClusterRenderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/clustering/view/ClusterRenderer<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0, v1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mClusterMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    invoke-virtual {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->clear()V

    .line 100
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    invoke-virtual {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->clear()V

    .line 101
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onRemove()V

    .line 102
    iput-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    .line 103
    invoke-interface {p1}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->onAdd()V

    .line 104
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterInfoWindowClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/google/maps/android/clustering/ClusterManager;->mRenderer:Lcom/google/maps/android/clustering/view/ClusterRenderer;

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mOnClusterItemInfoWindowClickListener:Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;

    invoke-interface {p1, v0}, Lcom/google/maps/android/clustering/view/ClusterRenderer;->setOnClusterItemInfoWindowClickListener(Lcom/google/maps/android/clustering/ClusterManager$OnClusterItemInfoWindowClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/ClusterManager;->cluster()V

    return-void
.end method

.method public updateItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->lock()V

    .line 233
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0, p1}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->updateItem(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 235
    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    return p1

    :catchall_11
    move-exception p1

    iget-object v0, p0, Lcom/google/maps/android/clustering/ClusterManager;->mAlgorithm:Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;

    invoke-interface {v0}, Lcom/google/maps/android/clustering/algo/ScreenBasedAlgorithm;->unlock()V

    .line 236
    throw p1
.end method
