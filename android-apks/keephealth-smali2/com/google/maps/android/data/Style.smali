.class public abstract Lcom/google/maps/android/data/Style;
.super Ljava/util/Observable;
.source "Style.java"


# instance fields
.field protected mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

.field protected mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

.field protected mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Style;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 45
    new-instance v0, Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Style;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 47
    new-instance v0, Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Style;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->clickable(Z)Lcom/google/android/libraries/maps/model/PolygonOptions;

    return-void
.end method


# virtual methods
.method public getRotation()F
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/maps/android/data/Style;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getRotation()F

    move-result v0

    return v0
.end method

.method public setLineStringWidth(F)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/google/maps/android/data/Style;->mPolylineOptions:Lcom/google/android/libraries/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->width(F)Lcom/google/android/libraries/maps/model/PolylineOptions;

    return-void
.end method

.method public setMarkerHotSpot(FFLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 82
    const-string v0, "fraction"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    const/high16 p1, 0x3f000000    # 0.5f

    .line 85
    :goto_b
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_14

    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 89
    :goto_14
    iget-object p3, p0, Lcom/google/maps/android/data/Style;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/libraries/maps/model/MarkerOptions;

    return-void
.end method

.method public setMarkerRotation(F)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/maps/android/data/Style;->mMarkerOptions:Lcom/google/android/libraries/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    return-void
.end method

.method public setPolygonFillColor(I)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/google/maps/android/data/Style;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    return-void
.end method

.method public setPolygonStrokeWidth(F)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/google/maps/android/data/Style;->mPolygonOptions:Lcom/google/android/libraries/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/libraries/maps/model/PolygonOptions;

    return-void
.end method
