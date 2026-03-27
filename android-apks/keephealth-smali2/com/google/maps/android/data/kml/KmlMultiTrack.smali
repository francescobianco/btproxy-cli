.class public Lcom/google/maps/android/data/kml/KmlMultiTrack;
.super Lcom/google/maps/android/data/kml/KmlMultiGeometry;
.source "KmlMultiTrack.java"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlTrack;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/google/maps/android/data/kml/KmlMultiTrack;->createGeometries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/kml/KmlMultiGeometry;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static createGeometries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlTrack;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/Geometry;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1c

    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/kml/KmlTrack;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    return-object v0

    .line 40
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tracks cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
