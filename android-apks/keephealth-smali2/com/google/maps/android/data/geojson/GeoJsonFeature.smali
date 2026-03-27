.class public Lcom/google/maps/android/data/geojson/GeoJsonFeature;
.super Lcom/google/maps/android/data/Feature;
.source "GeoJsonFeature.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

.field private mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

.field private mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

.field private mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/data/Geometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/libraries/maps/model/LatLngBounds;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/Geometry;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/libraries/maps/model/LatLngBounds;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/data/Feature;-><init>(Lcom/google/maps/android/data/Geometry;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    iput-object p2, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    return-void
.end method

.method private checkRedrawFeature(Lcom/google/maps/android/data/geojson/GeoJsonStyle;)V
    .registers 3

    .line 201
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Lcom/google/maps/android/data/geojson/GeoJsonStyle;->getGeometryType()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 204
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setChanged()V

    .line 205
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->notifyObservers()V

    :cond_22
    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/google/android/libraries/maps/model/LatLngBounds;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    return-object v0
.end method

.method public getMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->toMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    return-object v0
.end method

.method public getPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->toPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    return-object v0
.end method

.method public getPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->toPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/google/maps/android/data/Feature;->removeProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setGeometry(Lcom/google/maps/android/data/Geometry;)V
    .registers 2

    .line 215
    invoke-super {p0, p1}, Lcom/google/maps/android/data/Feature;->setGeometry(Lcom/google/maps/android/data/Geometry;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setChanged()V

    .line 217
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->notifyObservers()V

    return-void
.end method

.method public setLineStringStyle(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 128
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v0, p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->deleteObserver(Ljava/util/Observer;)V

    .line 132
    :cond_9
    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    .line 133
    invoke-virtual {p1, p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->addObserver(Ljava/util/Observer;)V

    .line 134
    iget-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->checkRedrawFeature(Lcom/google/maps/android/data/geojson/GeoJsonStyle;)V

    return-void

    .line 125
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Line string style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPointStyle(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 100
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {v0, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->deleteObserver(Ljava/util/Observer;)V

    .line 104
    :cond_9
    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    .line 105
    invoke-virtual {p1, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->addObserver(Ljava/util/Observer;)V

    .line 106
    iget-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->checkRedrawFeature(Lcom/google/maps/android/data/geojson/GeoJsonStyle;)V

    return-void

    .line 97
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Point style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPolygonStyle(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 156
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->deleteObserver(Ljava/util/Observer;)V

    .line 160
    :cond_9
    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    .line 161
    invoke-virtual {p1, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->addObserver(Ljava/util/Observer;)V

    .line 162
    iget-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->checkRedrawFeature(Lcom/google/maps/android/data/geojson/GeoJsonStyle;)V

    return-void

    .line 153
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Polygon style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 67
    invoke-super {p0, p1, p2}, Lcom/google/maps/android/data/Feature;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feature{\n bounding box="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ",\n geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ",\n point style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ",\n line string style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ",\n polygon style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ",\n id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ",\n properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperties()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    .line 252
    instance-of p2, p1, Lcom/google/maps/android/data/geojson/GeoJsonStyle;

    if-eqz p2, :cond_9

    .line 253
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonStyle;

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->checkRedrawFeature(Lcom/google/maps/android/data/geojson/GeoJsonStyle;)V

    :cond_9
    return-void
.end method
