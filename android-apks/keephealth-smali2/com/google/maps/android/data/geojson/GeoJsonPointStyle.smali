.class public Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;
.super Lcom/google/maps/android/data/Style;
.source "GeoJsonPointStyle.java"

# interfaces
.implements Lcom/google/maps/android/data/geojson/GeoJsonStyle;


# static fields
.field private static final GEOMETRY_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Point"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MultiPoint"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GeometryCollection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/google/maps/android/data/Style;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    return-void
.end method

.method private styleChanged()V
    .registers 1

    .line 285
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setChanged()V

    .line 286
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getAnchorU()F
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    return v0
.end method

.method public getAnchorV()F
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    return v0
.end method

.method public getGeometryType()[Ljava/lang/String;
    .registers 2

    .line 46
    sget-object v0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/google/android/libraries/maps/model/BitmapDescriptor;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getIcon()Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v0

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getRotation()F

    move-result v0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public isFlat()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 67
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setAnchor(FF)V
    .registers 4

    .line 104
    const-string v0, "fraction"

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setMarkerHotSpot(FFLjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setDraggable(Z)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 124
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setFlat(Z)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 143
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setIcon(Lcom/google/android/libraries/maps/model/BitmapDescriptor;)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->icon(Lcom/google/android/libraries/maps/model/BitmapDescriptor;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 162
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 198
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setRotation(F)V
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setMarkerRotation(F)V

    .line 218
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 237
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 256
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->visible(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 277
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public setZIndex(F)V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 347
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->styleChanged()V

    return-void
.end method

.method public toMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;
    .registers 4

    .line 295
    new-instance v0, Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 297
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 298
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 299
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isFlat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 300
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getIcon()Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->icon(Lcom/google/android/libraries/maps/model/BitmapDescriptor;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 301
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 302
    invoke-virtual {v2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v2

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 303
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 304
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 305
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 306
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->visible(Z)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 307
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointStyle{\n geometry type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ",\n alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ",\n anchor U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getAnchorU()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ",\n anchor V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getAnchorV()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ",\n draggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->isDraggable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ",\n flat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->isFlat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ",\n info window anchor U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getInfoWindowAnchorU()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, ",\n info window anchor V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getInfoWindowAnchorV()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ",\n rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getRotation()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ",\n snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ",\n title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ",\n visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ",\n z index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->getZIndex()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
