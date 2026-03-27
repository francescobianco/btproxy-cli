.class public Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;
.super Lcom/google/maps/android/data/Style;
.source "GeoJsonPolygonStyle.java"

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

    const-string v2, "Polygon"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MultiPolygon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GeometryCollection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/google/maps/android/data/Style;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 40
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    return-void
.end method

.method private styleChanged()V
    .registers 1

    .line 210
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->setChanged()V

    .line 211
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public getFillColor()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getFillColor()I

    move-result v0

    return v0
.end method

.method public getGeometryType()[Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public getStrokeJointType()I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeJointType()I

    move-result v0

    return v0
.end method

.method public getStrokePattern()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokePattern()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getZIndex()F
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setClickable(Z)V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 257
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setFillColor(I)V
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->setPolygonFillColor(I)V

    .line 67
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setGeodesic(Z)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->geodesic(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 86
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 105
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setStrokeJointType(I)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeJointType(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 124
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setStrokePattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokePattern(Ljava/util/List;)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 143
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->setPolygonStrokeWidth(F)V

    .line 162
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->visible(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 202
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public setZIndex(F)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 181
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->styleChanged()V

    return-void
.end method

.method public toPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;
    .registers 3

    .line 220
    new-instance v0, Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 222
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->geodesic(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 223
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 224
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeJointType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeJointType(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 225
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokePattern()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokePattern(Ljava/util/List;)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 226
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 227
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->visible(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 228
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 229
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolygonStyle{\n geometry type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ",\n fill color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ",\n geodesic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->isGeodesic()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ",\n stroke color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ",\n stroke joint type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getStrokeJointType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ",\n stroke pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getStrokePattern()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ",\n stroke width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ",\n visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ",\n z index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->getZIndex()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ",\n clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
