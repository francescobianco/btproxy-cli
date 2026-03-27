.class public Lcom/google/maps/android/collections/PolygonManager$Collection;
.super Lcom/google/maps/android/collections/MapObjectManager$Collection;
.source "PolygonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/collections/PolygonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Collection"
.end annotation


# instance fields
.field private mPolygonClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;

.field final synthetic this$0:Lcom/google/maps/android/collections/PolygonManager;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/collections/PolygonManager;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/google/maps/android/collections/PolygonManager$Collection;->this$0:Lcom/google/maps/android/collections/PolygonManager;

    invoke-direct {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;-><init>(Lcom/google/maps/android/collections/MapObjectManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/collections/PolygonManager$Collection;)Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/google/maps/android/collections/PolygonManager$Collection;->mPolygonClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/PolygonOptions;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->addPolygon(Lcom/google/android/libraries/maps/model/PolygonOptions;)Lcom/google/android/libraries/maps/model/Polygon;

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
            "Lcom/google/android/libraries/maps/model/PolygonOptions;",
            ">;Z)V"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->addPolygon(Lcom/google/android/libraries/maps/model/PolygonOptions;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/maps/model/Polygon;->setVisible(Z)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public addPolygon(Lcom/google/android/libraries/maps/model/PolygonOptions;)Lcom/google/android/libraries/maps/model/Polygon;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/google/maps/android/collections/PolygonManager$Collection;->this$0:Lcom/google/maps/android/collections/PolygonManager;

    iget-object v0, v0, Lcom/google/maps/android/collections/PolygonManager;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/GoogleMap;->addPolygon(Lcom/google/android/libraries/maps/model/PolygonOptions;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object p1

    .line 69
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPolygons()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/libraries/maps/model/Polygon;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->getObjects()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hideAll()V
    .registers 4

    .line 92
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->getPolygons()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Polygon;

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Polygon;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public remove(Lcom/google/android/libraries/maps/model/Polygon;)Z
    .registers 2

    .line 98
    invoke-super {p0, p1}, Lcom/google/maps/android/collections/MapObjectManager$Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOnPolygonClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/google/maps/android/collections/PolygonManager$Collection;->mPolygonClickListener:Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;

    return-void
.end method

.method public showAll()V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->getPolygons()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/Polygon;

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/maps/model/Polygon;->setVisible(Z)V

    goto :goto_8

    :cond_19
    return-void
.end method
