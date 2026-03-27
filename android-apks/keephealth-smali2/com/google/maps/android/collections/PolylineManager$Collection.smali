.class public Lcom/google/maps/android/collections/PolylineManager$Collection;
.super Lcom/google/maps/android/collections/MapObjectManager$Collection;
.source "PolylineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/collections/PolylineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Collection"
.end annotation


# instance fields
.field private mPolylineClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;

.field final synthetic this$0:Lcom/google/maps/android/collections/PolylineManager;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/collections/PolylineManager;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/google/maps/android/collections/PolylineManager$Collection;->this$0:Lcom/google/maps/android/collections/PolylineManager;

    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;-><init>(Lcom/google/maps/android/collections/MapObjectManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/collections/PolylineManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/google/maps/android/collections/PolylineManager$Collection;->mPolylineClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/PolylineOptions;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->addPolyline(Lcom/google/android/libraries/maps/model/PolylineOptions;)Lcom/google/android/libraries/maps/model/Polyline;

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
            "Lcom/google/android/libraries/maps/model/PolylineOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->addPolyline(Lcom/google/android/libraries/maps/model/PolylineOptions;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/maps/model/Polyline;->setVisible(Z)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public addPolyline(Lcom/google/android/libraries/maps/model/PolylineOptions;)Lcom/google/android/libraries/maps/model/Polyline;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/google/maps/android/collections/PolylineManager$Collection;->this$0:Lcom/google/maps/android/collections/PolylineManager;

    iget-object v0, v0, Lcom/google/maps/android/collections/PolylineManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap;->addPolyline(Lcom/google/android/libraries/maps/model/PolylineOptions;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object p1

    .line 71
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPolylines()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->getObjects()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hideAll()V
    .registers 4

    .line 94
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->getPolylines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Polyline;

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Polyline;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public remove(Lcom/google/android/libraries/maps/model/Polyline;)Z
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOnPolylineClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/google/maps/android/collections/PolylineManager$Collection;->mPolylineClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;

    return-void
.end method

.method public showAll()V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->getPolylines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Polyline;

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Polyline;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method
