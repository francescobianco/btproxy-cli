.class public Lcom/google/maps/android/collections/MarkerManager;
.super Lcom/google/maps/android/collections/MapObjectManager;
.source "MarkerManager.java"

# interfaces
.implements Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/collections/MarkerManager$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/maps/android/collections/MapObjectManager<",
        "Lcom/google/android/libraries/maps/model/Marker;",
        "Lcom/google/maps/android/collections/MarkerManager$Collection;",
        ">;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;",
        "Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/libraries/maps/model/Marker;)Landroid/view/View;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_19

    .line 68
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$000(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 69
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$000(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/libraries/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInfoWindow(Lcom/google/android/libraries/maps/model/Marker;)Landroid/view/View;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_19

    .line 59
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$000(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 60
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$000(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/libraries/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newCollection()Lcom/google/maps/android/collections/MapObjectManager$Collection;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/maps/android/collections/MarkerManager;->newCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;

    move-result-object v0

    return-object v0
.end method

.method public newCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;
    .registers 2

    .line 53
    new-instance v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    invoke-direct {v0, p0}, Lcom/google/maps/android/collections/MarkerManager$Collection;-><init>(Lcom/google/maps/android/collections/MarkerManager;)V

    return-object v0
.end method

.method public onInfoWindowClick(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_17

    .line 77
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$100(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 78
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$100(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/libraries/maps/model/Marker;)V

    :cond_17
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/libraries/maps/model/Marker;)Z
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_19

    .line 85
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$200(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 86
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$200(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/libraries/maps/model/Marker;)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_17

    .line 102
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 103
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/libraries/maps/model/Marker;)V

    :cond_17
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_17

    .line 110
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 111
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/libraries/maps/model/Marker;)V

    :cond_17
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-eqz v0, :cond_17

    .line 94
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 95
    # getter for: Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/libraries/maps/model/Marker;)V

    :cond_17
    return-void
.end method

.method protected removeObjectFromMap(Lcom/google/android/libraries/maps/model/Marker;)V
    .registers 2

    .line 117
    invoke-virtual {p1}, Lcom/google/android/libraries/maps/model/Marker;->remove()V

    return-void
.end method

.method protected bridge synthetic removeObjectFromMap(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Lcom/google/android/libraries/maps/model/Marker;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/collections/MarkerManager;->removeObjectFromMap(Lcom/google/android/libraries/maps/model/Marker;)V

    return-void
.end method

.method setListenersOnUiThread()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    if-eqz v0, :cond_18

    .line 45
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;)V

    .line 48
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;)V

    :cond_18
    return-void
.end method
