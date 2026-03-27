.class public Lcom/google/maps/android/data/geojson/GeoJsonLayer;
.super Lcom/google/maps/android/data/Layer;
.source "GeoJsonLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/data/geojson/GeoJsonLayer$GeoJsonOnFeatureClickListener;
    }
.end annotation


# instance fields
.field private mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;ILandroid/content/Context;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Lorg/json/JSONObject;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;ILandroid/content/Context;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Lorg/json/JSONObject;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;Lorg/json/JSONObject;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 115
    invoke-direct/range {v0 .. v6}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Lorg/json/JSONObject;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;Lorg/json/JSONObject;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V
    .registers 16

    .line 69
    invoke-direct {p0}, Lcom/google/maps/android/data/Layer;-><init>()V

    if-eqz p2, :cond_3f

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    .line 74
    new-instance v1, Lcom/google/maps/android/data/geojson/GeoJsonParser;

    invoke-direct {v1, p2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;-><init>(Lorg/json/JSONObject;)V

    .line 76
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->getBoundingBox()Lcom/google/android/libraries/maps/model/LatLngBounds;

    move-result-object p2

    iput-object p2, p0, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->getFeatures()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    .line 79
    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 81
    :cond_30
    new-instance p2, Lcom/google/maps/android/data/geojson/GeoJsonRenderer;

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/maps/android/data/geojson/GeoJsonRenderer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Ljava/util/HashMap;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->storeRenderer(Lcom/google/maps/android/data/Renderer;)V

    return-void

    .line 71
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GeoJSON file cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 151
    :cond_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 154
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public addFeature(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V
    .registers 3

    if-eqz p1, :cond_6

    .line 187
    invoke-super {p0, p1}, Lcom/google/maps/android/data/Layer;->addFeature(Lcom/google/maps/android/data/Feature;)V

    return-void

    .line 185
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Feature cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLayerToMap()V
    .registers 1

    .line 165
    invoke-super {p0}, Lcom/google/maps/android/data/Layer;->addGeoJsonToMap()V

    return-void
.end method

.method public getBoundingBox()Lcom/google/android/libraries/maps/model/LatLngBounds;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-super {p0}, Lcom/google/maps/android/data/Layer;->getFeatures()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public removeFeature(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V
    .registers 3

    if-eqz p1, :cond_6

    .line 199
    invoke-super {p0, p1}, Lcom/google/maps/android/data/Layer;->removeFeature(Lcom/google/maps/android/data/Feature;)V

    return-void

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Feature cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collection{\n Bounding box="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
