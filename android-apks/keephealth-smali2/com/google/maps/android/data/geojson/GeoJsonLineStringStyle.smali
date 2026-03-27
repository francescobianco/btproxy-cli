.class public Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;
.super Lcom/google/maps/android/data/Style;
.source "GeoJsonLineStringStyle.java"

# interfaces
.implements Lcom/google/maps/android/data/geojson/GeoJsonStyle;


# static fields
.field private static final GEOMETRY_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LineString"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MultiLineString"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GeometryCollection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/google/maps/android/data/Style;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    return-void
.end method

.method private styleChanged()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->setChanged()V

    .line 174
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getColor()I

    move-result v0

    return v0
.end method

.method public getGeometryType()[Ljava/lang/String;
    .registers 2

    .line 49
    sget-object v0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getPattern()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    return v0
.end method

.method public getZIndex()F
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setClickable(Z)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 87
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->color(I)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 68
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setGeodesic(Z)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 106
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 225
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->visible(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 165
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->setLineStringWidth(F)V

    .line 125
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public setZIndex(F)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 144
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->styleChanged()V

    return-void
.end method

.method public toPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;
    .registers 3

    .line 183
    new-instance v0, Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->color(I)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 185
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 186
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 187
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->visible(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 188
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->width(F)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 189
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 190
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->getPattern()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->pattern(Ljava/util/List;)Lcom/google/android/libraries/maps/model/PolylineOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineStringStyle{\n geometry type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ",\n color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ",\n clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ",\n geodesic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->isGeodesic()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ",\n visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ",\n width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ",\n z index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->getZIndex()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ",\n pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->getPattern()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
