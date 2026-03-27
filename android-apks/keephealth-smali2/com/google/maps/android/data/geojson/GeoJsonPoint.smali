.class public Lcom/google/maps/android/data/geojson/GeoJsonPoint;
.super Lcom/google/maps/android/data/Point;
.source "GeoJsonPoint.java"


# instance fields
.field private final mAltitude:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/maps/model/LatLng;)V
    .registers 3

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;-><init>(Lcom/google/android/libraries/maps/model/LatLng;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/model/LatLng;Ljava/lang/Double;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Lcom/google/maps/android/data/Point;-><init>(Lcom/google/android/libraries/maps/model/LatLng;)V

    .line 45
    iput-object p2, p0, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->mAltitude:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getAltitude()Ljava/lang/Double;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->mAltitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getCoordinates()Lcom/google/android/libraries/maps/model/LatLng;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->getGeometryObject()Lcom/google/android/libraries/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
