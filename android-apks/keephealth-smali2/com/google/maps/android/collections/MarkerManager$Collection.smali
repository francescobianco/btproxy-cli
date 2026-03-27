.class public Lcom/google/maps/android/collections/MarkerManager$Collection;
.super Lcom/google/maps/android/collections/MapObjectManager$Collection;
.source "MarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/collections/MarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Collection"
.end annotation


# instance fields
.field private mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

.field private mInfoWindowClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;

.field private mMarkerClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;

.field private mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

.field final synthetic this$0:Lcom/google/maps/android/collections/MarkerManager;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/collections/MarkerManager;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->this$0:Lcom/google/maps/android/collections/MarkerManager;

    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;-><init>(Lcom/google/maps/android/collections/MapObjectManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/maps/android/collections/MarkerManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/MarkerOptions;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->addMarker(Lcom/google/android/libraries/maps/model/MarkerOptions;)Lcom/google/android/libraries/maps/model/Marker;

    goto :goto_4

    :cond_14
    return-void
.end method

.method public addAll(Ljava/util/Collection;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/MarkerOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->addMarker(Lcom/google/android/libraries/maps/model/MarkerOptions;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/maps/model/Marker;->setVisible(Z)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public addMarker(Lcom/google/android/libraries/maps/model/MarkerOptions;)Lcom/google/android/libraries/maps/model/Marker;
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->this$0:Lcom/google/maps/android/collections/MarkerManager;

    iget-object v0, v0, Lcom/google/maps/android/collections/MarkerManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap;->addMarker(Lcom/google/android/libraries/maps/model/MarkerOptions;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object p1

    .line 131
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getMarkers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->getObjects()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hideAll()V
    .registers 4

    .line 154
    invoke-virtual {p0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->getMarkers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Marker;

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Marker;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public remove(Lcom/google/android/libraries/maps/model/Marker;)Z
    .registers 2

    .line 160
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setInfoWindowAdapter(Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnInfoWindowClickListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/google/maps/android/collections/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/libraries/maps/GoogleMap$OnMarkerDragListener;

    return-void
.end method

.method public showAll()V
    .registers 4

    .line 148
    invoke-virtual {p0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->getMarkers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Marker;

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Marker;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method
