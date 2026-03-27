.class public Lcom/google/maps/android/collections/PolygonManager;
.super Lcom/google/maps/android/collections/MapObjectManager;
.source "PolygonManager.java"

# interfaces
.implements Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/collections/PolygonManager$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/maps/android/collections/MapObjectManager<",
        "Lcom/google/android/libraries/maps/model/Polygon;",
        "Lcom/google/maps/android/collections/PolygonManager$Collection;",
        ">;",
        "Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newCollection()Lcom/google/maps/android/collections/MapObjectManager$Collection;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolygonManager;->newCollection()Lcom/google/maps/android/collections/PolygonManager$Collection;

    move-result-object v0

    return-object v0
.end method

.method public newCollection()Lcom/google/maps/android/collections/PolygonManager$Collection;
    .registers 2

    .line 45
    new-instance v0, Lcom/google/maps/android/collections/PolygonManager$Collection;

    invoke-direct {v0, p0}, Lcom/google/maps/android/collections/PolygonManager$Collection;-><init>(Lcom/google/maps/android/collections/PolygonManager;)V

    return-object v0
.end method

.method public onPolygonClick(Lcom/google/android/libraries/maps/model/Polygon;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/google/maps/android/collections/PolygonManager;->mAllObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/collections/PolygonManager$Collection;

    if-eqz v0, :cond_17

    .line 56
    # getter for: Lcom/google/maps/android/collections/PolygonManager$Collection;->mPolygonClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->access$000(Lcom/google/maps/android/collections/PolygonManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 57
    # getter for: Lcom/google/maps/android/collections/PolygonManager$Collection;->mPolygonClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;
    invoke-static {v0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->access$000(Lcom/google/maps/android/collections/PolygonManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;->onPolygonClick(Lcom/google/android/libraries/maps/model/Polygon;)V

    :cond_17
    return-void
.end method

.method protected removeObjectFromMap(Lcom/google/android/libraries/maps/model/Polygon;)V
    .registers 2

    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/maps/model/Polygon;->remove()V

    return-void
.end method

.method protected bridge synthetic removeObjectFromMap(Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, Lcom/google/android/libraries/maps/model/Polygon;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/collections/PolygonManager;->removeObjectFromMap(Lcom/google/android/libraries/maps/model/Polygon;)V

    return-void
.end method

.method setListenersOnUiThread()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/maps/android/collections/PolygonManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/google/maps/android/collections/PolygonManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/GoogleMap;->setOnPolygonClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;)V

    :cond_9
    return-void
.end method
