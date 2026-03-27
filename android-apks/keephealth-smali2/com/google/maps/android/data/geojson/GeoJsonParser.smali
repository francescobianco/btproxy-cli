.class public Lcom/google/maps/android/data/geojson/GeoJsonParser;
.super Ljava/lang/Object;
.source "GeoJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;
    }
.end annotation


# static fields
.field private static final BOUNDING_BOX:Ljava/lang/String; = "bbox"

.field private static final FEATURE:Ljava/lang/String; = "Feature"

.field private static final FEATURE_COLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final FEATURE_COLLECTION_ARRAY:Ljava/lang/String; = "features"

.field private static final FEATURE_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final FEATURE_ID:Ljava/lang/String; = "id"

.field private static final GEOMETRY_COLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOMETRY_COLLECTION_ARRAY:Ljava/lang/String; = "geometries"

.field private static final GEOMETRY_COORDINATES_ARRAY:Ljava/lang/String; = "coordinates"

.field private static final LINESTRING:Ljava/lang/String; = "LineString"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoJsonParser"

.field private static final MULTILINESTRING:Ljava/lang/String; = "MultiLineString"

.field private static final MULTIPOINT:Ljava/lang/String; = "MultiPoint"

.field private static final MULTIPOLYGON:Ljava/lang/String; = "MultiPolygon"

.field private static final POINT:Ljava/lang/String; = "Point"

.field private static final POLYGON:Ljava/lang/String; = "Polygon"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"


# instance fields
.field private mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

.field private final mGeoJsonFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeoJsonFile:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    .line 112
    invoke-direct {p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseGeoJson()V

    return-void
.end method

.method private static createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/data/Geometry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_58

    :sswitch_c
    const-string v0, "GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v1, 0x6

    goto :goto_58

    :sswitch_17
    const-string v0, "LineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v1, 0x5

    goto :goto_58

    :sswitch_22
    const-string v0, "Polygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v1, 0x4

    goto :goto_58

    :sswitch_2d
    const-string v0, "Point"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v1, 0x3

    goto :goto_58

    :sswitch_38
    const-string v0, "MultiLineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v1, 0x2

    goto :goto_58

    :sswitch_43
    const-string v0, "MultiPoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v1, 0x1

    goto :goto_58

    :sswitch_4e
    const-string v0, "MultiPolygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    packed-switch v1, :pswitch_data_9e

    const/4 p0, 0x0

    return-object p0

    .line 255
    :pswitch_5d
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_62
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_67
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_6c
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_71
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;

    move-result-object p0

    return-object p0

    .line 245
    :pswitch_76
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_7b
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;

    move-result-object p0

    return-object p0

    :sswitch_data_80
    .sparse-switch
        -0x7e2b361f -> :sswitch_4e
        -0x3f883809 -> :sswitch_43
        -0x2560d4e2 -> :sswitch_38
        0x49b6570 -> :sswitch_2d
        0x4b86ed1a -> :sswitch_22
        0x6bb01145 -> :sswitch_17
        0x7440e8d0 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
    .end packed-switch
.end method

.method private static createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 364
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 365
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 366
    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/data/Geometry;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 369
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 372
    :cond_1c
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;

    invoke-direct {p0, v0}, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonLineString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 295
    invoke-static {p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;

    .line 300
    iget-object v3, v2, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->latLng:Lcom/google/android/libraries/maps/model/LatLng;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v3, v2, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->altitude:Ljava/lang/Double;

    if-eqz v3, :cond_12

    .line 302
    iget-object v2, v2, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->altitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 306
    :cond_2d
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/data/geojson/GeoJsonLineString;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 319
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 320
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 322
    :cond_1a
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;

    invoke-direct {p0, v0}, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 281
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 282
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 284
    :cond_1a
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;

    invoke-direct {p0, v0}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 346
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 347
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 349
    :cond_1a
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;

    invoke-direct {p0, v0}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;

    move-result-object p0

    .line 269
    new-instance v0, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    iget-object v1, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->latLng:Lcom/google/android/libraries/maps/model/LatLng;

    iget-object p0, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->altitude:Ljava/lang/Double;

    invoke-direct {v0, v1, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;-><init>(Lcom/google/android/libraries/maps/model/LatLng;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonPolygon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    invoke-static {p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static isGeometry(Ljava/lang/String;)Z
    .registers 2

    .line 116
    const-string v0, "Point|MultiPoint|LineString|MultiLineString|Polygon|MultiPolygon|GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/libraries/maps/model/LatLngBounds;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/google/android/libraries/maps/model/LatLng;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    .line 166
    new-instance v1, Lcom/google/android/libraries/maps/model/LatLng;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    .line 167
    new-instance p0, Lcom/google/android/libraries/maps/model/LatLngBounds;

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/maps/model/LatLngBounds;-><init>(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)V

    return-object p0
.end method

.method private static parseCoordinate(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/google/android/libraries/maps/model/LatLng;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    .line 385
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_18

    const/4 p0, 0x0

    goto :goto_21

    :cond_18
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 387
    :goto_21
    new-instance v1, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;

    invoke-direct {v1, v0, p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;-><init>(Lcom/google/android/libraries/maps/model/LatLng;Ljava/lang/Double;)V

    return-object v1
.end method

.method private static parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 400
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 401
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method private static parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 417
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 418
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;

    .line 422
    iget-object v4, v4, Lcom/google/maps/android/data/geojson/GeoJsonParser$LatLngAlt;->latLng:Lcom/google/android/libraries/maps/model/LatLng;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 424
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_35
    return-object v0
.end method

.method private static parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonFeature;
    .registers 8

    .line 128
    const-string v0, "bbox"

    const-string v1, "id"

    const-string v2, "properties"

    const-string v3, "geometry"

    .line 131
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 134
    :try_start_e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 135
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v5

    .line 137
    :goto_1a
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 138
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/libraries/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_2a

    :cond_29
    move-object v0, v5

    .line 140
    :goto_2a
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 141
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/data/Geometry;

    move-result-object v3

    goto :goto_40

    :cond_3f
    move-object v3, v5

    .line 143
    :goto_40
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 144
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_54} :catch_5a

    .line 150
    :cond_54
    new-instance p0, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/data/Geometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/libraries/maps/model/LatLngBounds;)V

    return-object p0

    .line 147
    :catch_5a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feature could not be successfully parsed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GeoJsonParser"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 467
    const-string v0, "Index of Feature in Feature Collection that could not be created: "

    const-string v1, "bbox"

    const-string v2, "GeoJsonParser"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    :try_start_b
    const-string v4, "features"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 470
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 472
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 471
    invoke-static {p1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/libraries/maps/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_21} :catch_6d

    :cond_21
    const/4 p1, 0x0

    .line 479
    :goto_22
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6c

    .line 481
    :try_start_28
    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 482
    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 483
    invoke-static {v1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 486
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 488
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_58} :catch_59

    goto :goto_69

    .line 494
    :catch_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_6c
    return-object v3

    .line 475
    :catch_6d
    const-string p1, "Feature Collection could not be created."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private parseGeoJson()V
    .registers 5

    .line 436
    const-string v0, "GeoJSON file could not be parsed."

    const-string v1, "GeoJsonParser"

    :try_start_4
    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    const-string v3, "Feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 438
    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 440
    iget-object v3, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 442
    :cond_22
    const-string v3, "FeatureCollection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 443
    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_51

    .line 444
    :cond_36
    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 445
    iget-object v2, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 448
    iget-object v3, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 451
    :cond_4a
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_51

    .line 454
    :catch_4e
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method

.method public static parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/data/Geometry;
    .registers 4

    const/4 v0, 0x0

    .line 179
    :try_start_1
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v2, "GeometryCollection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 183
    const-string v2, "geometries"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_22

    .line 184
    :cond_16
    invoke-static {v1}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 185
    const-string v2, "coordinates"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 190
    :goto_22
    invoke-static {v1, p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/data/Geometry;

    move-result-object p0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    :cond_27
    return-object v0
.end method

.method private static parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonFeature;
    .registers 4

    .line 204
    invoke-static {p0}, Lcom/google/maps/android/data/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/data/Geometry;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 206
    new-instance v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/data/Geometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/libraries/maps/model/LatLngBounds;)V

    return-object v1

    .line 208
    :cond_12
    const-string p0, "GeoJsonParser"

    const-string v1, "Geometry could not be parsed"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_21
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_25
    return-object v0
.end method


# virtual methods
.method getBoundingBox()Lcom/google/android/libraries/maps/model/LatLngBounds;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/libraries/maps/model/LatLngBounds;

    return-object v0
.end method

.method getFeatures()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/google/maps/android/data/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    return-object v0
.end method
