.class public Lcom/google/maps/android/collections/PolylineManager;
.super Lcom/google/maps/android/collections/MapObjectManager;
.source "PolylineManager.java"

# interfaces
.implements Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/collections/PolylineManager$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/maps/android/collections/MapObjectManager<",
        "Lcom/google/android/libraries/maps/model/Polyline;",
        "Lcom/google/maps/android/collections/PolylineManager$Collection;",
        ">;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newCollection()Lcom/google/maps/android/collections/MapObjectManager$Collection;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolylineManager;->newCollection()Lcom/google/maps/android/collections/PolylineManager$Collection;

    move-result-object v0

    return-object v0
.end method

.method public newCollection()Lcom/google/maps/android/collections/PolylineManager$Collection;
    .registers 2

    .line 47
    new-instance v0, Lcom/google/maps/android/collections/PolylineManager$Collection;

    invoke-direct {v0, p0}, Lcom/google/maps/android/collections/PolylineManager$Collection;-><init>(Lcom/google/maps/android/collections/PolylineManager;)V

    return-object v0
.end method

.method public onPolylineClick(Lcom/google/android/libraries/maps/model/Polyline;)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/google/maps/android/collections/PolylineManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/PolylineManager$Collection;

    if-eqz v0, :cond_17

    .line 58
    # getter for: Lcom/google/maps/android/collections/PolylineManager$Collection;->mPolylineClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->access$000(Lcom/google/maps/android/collections/PolylineManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 59
    # getter for: Lcom/google/maps/android/collections/PolylineManager$Collection;->mPolylineClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->access$000(Lcom/google/maps/android/collections/PolylineManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;->onPolylineClick(Lcom/google/android/libraries/maps/model/Polyline;)V

    :cond_17
    return-void
.end method

.method protected removeObjectFromMap(Lcom/google/android/libraries/maps/model/Polyline;)V
    .registers 2

    .line 52
    invoke-virtual {p1}, Lcom/google/android/libraries/maps/model/Polyline;->remove()V

    return-void
.end method

.method protected bridge synthetic removeObjectFromMap(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Lcom/google/android/libraries/maps/model/Polyline;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/collections/PolylineManager;->removeObjectFromMap(Lcom/google/android/libraries/maps/model/Polyline;)V

    return-void
.end method

.method setListenersOnUiThread()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/maps/android/collections/PolylineManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/collections/PolylineManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setOnPolylineClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;)V

    :cond_9
    return-void
.end method
