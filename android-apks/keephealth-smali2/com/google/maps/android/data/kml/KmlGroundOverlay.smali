.class public Lcom/google/maps/android/data/kml/KmlGroundOverlay;
.super Ljava/lang/Object;
.source "KmlGroundOverlay.java"


# instance fields
.field private final mGroundOverlayOptions:Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

.field private mImageUrl:Ljava/lang/String;

.field private mLatLngBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/maps/model/LatLngBounds;FILjava/util/HashMap;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/maps/model/LatLngBounds;",
            "FI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mGroundOverlayOptions:Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    .line 50
    iput-object p1, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mImageUrl:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mProperties:Ljava/util/Map;

    if-eqz p2, :cond_24

    .line 55
    iput-object p2, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mLatLngBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    .line 56
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;->positionFromBounds(Lcom/google/android/libraries/maps/model/LatLngBounds;)Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    .line 57
    invoke-virtual {v0, p6}, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;->bearing(F)Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    .line 58
    invoke-virtual {v0, p3}, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    if-eqz p4, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 59
    :goto_20
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/GroundOverlayOptions;->visible(Z)Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    return-void

    .line 53
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No LatLonBox given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getGroundOverlayOptions()Lcom/google/android/libraries/maps/model/GroundOverlayOptions;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mGroundOverlayOptions:Lcom/google/android/libraries/maps/model/GroundOverlayOptions;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLngBox()Lcom/google/android/libraries/maps/model/LatLngBounds;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mLatLngBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroundOverlay{\n properties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mProperties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ",\n image url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ",\n LatLngBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/kml/KmlGroundOverlay;->mLatLngBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
