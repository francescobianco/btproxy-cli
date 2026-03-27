.class public Lcom/google/maps/android/data/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/data/Renderer$ImagesCache;
    }
.end annotation


# static fields
.field private static final FEATURE_NOT_ON_MAP:Ljava/lang/Object; = null

.field private static final MARKER_ICON_SIZE:I = 0x20

.field private static final sScaleFormat:Ljava/text/DecimalFormat;


# instance fields
.field private final mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/data/geojson/BiMultiMap<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

.field private final mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

.field private final mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

.field private final mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/data/geojson/BiMultiMap<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mGroundOverlayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/libraries/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

.field private mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

.field private mLayerOnMap:Z

.field private mMap:Lcom/google/android/libraries/maps/GoogleMap;

.field private final mMarkerIconUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

.field private mNumActiveDownloads:I

.field private final mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

.field private final mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

.field private mStyleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mStylesRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/maps/android/data/Renderer;->sScaleFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;Landroid/content/Context;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;Lcom/google/maps/android/data/Renderer$ImagesCache;)V
    .registers 20

    move-object v11, p0

    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-direct {v6}, Lcom/google/maps/android/data/geojson/BiMultiMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/maps/android/data/Renderer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Ljava/util/Set;Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/BiMultiMap;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    move-object v0, p2

    .line 147
    iput-object v0, v11, Lcom/google/maps/android/data/Renderer;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    if-nez p7, :cond_2c

    .line 149
    new-instance v0, Lcom/google/maps/android/data/Renderer$ImagesCache;

    invoke-direct {v0}, Lcom/google/maps/android/data/Renderer$ImagesCache;-><init>()V

    goto :goto_2e

    :cond_2c
    move-object/from16 v0, p7

    :goto_2e
    iput-object v0, v11, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;Ljava/util/HashMap;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/GoogleMap;",
            "Ljava/util/HashMap<",
            "+",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/maps/android/collections/MarkerManager;",
            "Lcom/google/maps/android/collections/PolygonManager;",
            "Lcom/google/maps/android/collections/PolylineManager;",
            "Lcom/google/maps/android/collections/GroundOverlayManager;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    .line 163
    new-instance v3, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-direct {v3}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;-><init>()V

    new-instance v4, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-direct {v4}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;-><init>()V

    new-instance v5, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-direct {v5}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;-><init>()V

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/maps/android/data/Renderer;-><init>(Lcom/google/android/libraries/maps/GoogleMap;Ljava/util/Set;Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/BiMultiMap;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V

    .line 164
    iget-object v0, v11, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    move-object v1, p2

    invoke-virtual {v0, p2}, Lcom/google/maps/android/data/geojson/BiMultiMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, v11, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/maps/GoogleMap;Ljava/util/Set;Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/BiMultiMap;Lcom/google/maps/android/collections/MarkerManager;Lcom/google/maps/android/collections/PolygonManager;Lcom/google/maps/android/collections/PolylineManager;Lcom/google/maps/android/collections/GroundOverlayManager;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/GoogleMap;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;",
            "Lcom/google/maps/android/data/geojson/BiMultiMap<",
            "Lcom/google/maps/android/data/Feature;",
            ">;",
            "Lcom/google/maps/android/collections/MarkerManager;",
            "Lcom/google/maps/android/collections/PolygonManager;",
            "Lcom/google/maps/android/collections/PolylineManager;",
            "Lcom/google/maps/android/collections/GroundOverlayManager;",
            ")V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-direct {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    .line 179
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    .line 180
    iput-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    .line 181
    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/Set;

    .line 182
    iput-object p3, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    .line 183
    iput-object p4, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    .line 184
    iput-object p5, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    .line 185
    iput-object p6, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    if-eqz p1, :cond_52

    if-nez p7, :cond_24

    .line 188
    new-instance p7, Lcom/google/maps/android/collections/MarkerManager;

    invoke-direct {p7, p1}, Lcom/google/maps/android/collections/MarkerManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    .line 190
    :cond_24
    invoke-virtual {p7}, Lcom/google/maps/android/collections/MarkerManager;->newCollection()Lcom/google/maps/android/collections/MarkerManager$Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    if-nez p8, :cond_31

    .line 192
    new-instance p8, Lcom/google/maps/android/collections/PolygonManager;

    invoke-direct {p8, p1}, Lcom/google/maps/android/collections/PolygonManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    .line 194
    :cond_31
    invoke-virtual {p8}, Lcom/google/maps/android/collections/PolygonManager;->newCollection()Lcom/google/maps/android/collections/PolygonManager$Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    if-nez p9, :cond_3e

    .line 196
    new-instance p9, Lcom/google/maps/android/collections/PolylineManager;

    invoke-direct {p9, p1}, Lcom/google/maps/android/collections/PolylineManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    .line 198
    :cond_3e
    invoke-virtual {p9}, Lcom/google/maps/android/collections/PolylineManager;->newCollection()Lcom/google/maps/android/collections/PolylineManager$Collection;

    move-result-object p2

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    if-nez p10, :cond_4b

    .line 200
    new-instance p10, Lcom/google/maps/android/collections/GroundOverlayManager;

    invoke-direct {p10, p1}, Lcom/google/maps/android/collections/GroundOverlayManager;-><init>(Lcom/google/android/libraries/maps/GoogleMap;)V

    .line 202
    :cond_4b
    invoke-virtual {p10}, Lcom/google/maps/android/collections/GroundOverlayManager;->newCollection()Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    goto :goto_5b

    :cond_52
    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    .line 205
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    .line 206
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    .line 207
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    :goto_5b
    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/data/Renderer;)Landroid/content/Context;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/google/maps/android/data/Renderer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/maps/android/data/Renderer;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/maps/android/data/Renderer;->multiObjectHandler(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private addGeometryCollectionToMap(Lcom/google/maps/android/data/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            "Ljava/util/List<",
            "Lcom/google/maps/android/data/Geometry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 980
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/Geometry;

    .line 981
    invoke-virtual {p0, p1, v1}, Lcom/google/maps/android/data/Renderer;->addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method private addLineStringToMap(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/libraries/maps/model/Polyline;
    .registers 3

    .line 899
    invoke-virtual {p2}, Lcom/google/maps/android/data/LineString;->getGeometryObject()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 900
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    invoke-virtual {p2, p1}, Lcom/google/maps/android/collections/PolylineManager$Collection;->addPolyline(Lcom/google/android/libraries/maps/model/PolylineOptions;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object p2

    .line 901
    invoke-virtual {p1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->isClickable()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Polyline;->setClickable(Z)V

    return-object p2
.end method

.method private addMarkerIcons(Ljava/lang/String;DLcom/google/android/libraries/maps/model/MarkerOptions;)V
    .registers 5

    .line 1100
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/android/data/Renderer;->getCachedMarkerImage(Ljava/lang/String;D)Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1102
    invoke-virtual {p4, p2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->icon(Lcom/google/android/libraries/maps/model/BitmapDescriptor;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    goto :goto_f

    .line 1104
    :cond_a
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_f
    return-void
.end method

.method private addMultiGeometryToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/kml/KmlMultiGeometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/kml/KmlPlacemark;",
            "Lcom/google/maps/android/data/kml/KmlMultiGeometry;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlMultiGeometry;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object p2

    .line 1034
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/maps/android/data/Geometry;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 1035
    invoke-virtual/range {v2 .. v7}, Lcom/google/maps/android/data/Renderer;->addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method private addMultiLineStringToMap(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/libraries/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;->getLineStrings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    .line 1069
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->toPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private addMultiPointToMap(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/libraries/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    .line 1052
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->toMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private addMultiPolygonToMap(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/libraries/maps/model/Polygon;",
            ">;"
        }
    .end annotation

    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;->getPolygons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    .line 1085
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->toPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method private addPointToMap(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/libraries/maps/model/Marker;
    .registers 3

    .line 849
    invoke-virtual {p2}, Lcom/google/maps/android/data/Point;->getGeometryObject()Lcom/google/android/libraries/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->position(Lcom/google/android/libraries/maps/model/LatLng;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 850
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    invoke-virtual {p2, p1}, Lcom/google/maps/android/collections/MarkerManager$Collection;->addMarker(Lcom/google/android/libraries/maps/model/MarkerOptions;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object p1

    return-object p1
.end method

.method private addPolygonToMap(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/libraries/maps/model/Polygon;
    .registers 4

    .line 933
    invoke-interface {p2}, Lcom/google/maps/android/data/DataPolygon;->getOuterBoundaryCoordinates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 935
    invoke-interface {p2}, Lcom/google/maps/android/data/DataPolygon;->getInnerBoundaryCoordinates()Ljava/util/List;

    move-result-object p2

    .line 936
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 937
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/libraries/maps/model/PolygonOptions;

    goto :goto_f

    .line 939
    :cond_1f
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    invoke-virtual {p2, p1}, Lcom/google/maps/android/collections/PolygonManager$Collection;->addPolygon(Lcom/google/android/libraries/maps/model/PolygonOptions;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object p2

    .line 940
    invoke-virtual {p1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->isClickable()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Polygon;->setClickable(Z)V

    return-object p2
.end method

.method private createInfoWindow()V
    .registers 3

    .line 1154
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    new-instance v1, Lcom/google/maps/android/data/Renderer$1;

    invoke-direct {v1, p0}, Lcom/google/maps/android/data/Renderer$1;-><init>(Lcom/google/maps/android/data/Renderer;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/android/collections/MarkerManager$Collection;->setInfoWindowAdapter(Lcom/google/android/libraries/maps/GoogleMap$InfoWindowAdapter;)V

    return-void
.end method

.method protected static getPlacemarkVisibility(Lcom/google/maps/android/data/Feature;)Z
    .registers 3

    .line 996
    const-string v0, "visibility"

    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 997
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Feature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 998
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method private multiObjectHandler(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .line 1236
    invoke-virtual {p0}, Lcom/google/maps/android/data/Renderer;->getValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1238
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArrayList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1239
    check-cast v1, Ljava/util/ArrayList;

    .line 1240
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method private putMarkerImagesCache(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/maps/model/BitmapDescriptor;)V
    .registers 6

    .line 516
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v0, v0, Lcom/google/maps/android/data/Renderer$ImagesCache;->markerImagesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_18

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v1, v1, Lcom/google/maps/android/data/Renderer$ImagesCache;->markerImagesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_18
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeFeatures(Ljava/util/Collection;)V
    .registers 4

    .line 584
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 585
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_18

    .line 586
    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/google/maps/android/data/Renderer;->removeFeatures(Ljava/util/Collection;)V

    goto :goto_4

    .line 587
    :cond_18
    instance-of v1, v0, Lcom/google/android/libraries/maps/model/Marker;

    if-eqz v1, :cond_24

    .line 588
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    check-cast v0, Lcom/google/android/libraries/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/collections/MarkerManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Marker;)Z

    goto :goto_4

    .line 589
    :cond_24
    instance-of v1, v0, Lcom/google/android/libraries/maps/model/Polyline;

    if-eqz v1, :cond_30

    .line 590
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    check-cast v0, Lcom/google/android/libraries/maps/model/Polyline;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/collections/PolylineManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Polyline;)Z

    goto :goto_4

    .line 591
    :cond_30
    instance-of v1, v0, Lcom/google/android/libraries/maps/model/Polygon;

    if-eqz v1, :cond_4

    .line 592
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    check-cast v0, Lcom/google/android/libraries/maps/model/Polygon;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/collections/PolygonManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Polygon;)Z

    goto :goto_4

    :cond_3c
    return-void
.end method

.method private scaleIcon(Landroid/graphics/Bitmap;D)Lcom/google/android/libraries/maps/model/BitmapDescriptor;
    .registers 7

    .line 382
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-int p2, v0

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_22

    mul-int/2addr v0, p2

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    float-to-int p3, v0

    goto :goto_2e

    :cond_22
    if-le p3, v0, :cond_2d

    mul-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float v0, v0

    div-float/2addr p3, v0

    float-to-int p3, p3

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_2e

    :cond_2d
    move p3, p2

    :goto_2e
    const/4 v0, 0x0

    .line 401
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 402
    invoke-static {p1}, Lcom/google/android/libraries/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private setFeatureDefaultStyles(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V
    .registers 3

    .line 629
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 630
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setPointStyle(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;)V

    .line 632
    :cond_b
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    if-nez v0, :cond_16

    .line 633
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setLineStringStyle(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;)V

    .line 635
    :cond_16
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    if-nez v0, :cond_21

    .line 636
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setPolygonStyle(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;)V

    :cond_21
    return-void
.end method

.method private setInlineLineStringStyle(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V
    .registers 5

    .line 912
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v0

    .line 913
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 914
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->color(I)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 916
    :cond_13
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 917
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->width(F)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 919
    :cond_22
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 920
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getColor()I

    move-result p2

    invoke-static {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/maps/model/PolylineOptions;->color(I)Lcom/google/android/libraries/maps/model/PolylineOptions;

    :cond_33
    return-void
.end method

.method private setInlinePointStyle(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;)V
    .registers 7

    .line 862
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v0

    .line 863
    const-string v1, "heading"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 864
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 866
    :cond_13
    const-string v1, "hotSpot"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 868
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 870
    :cond_26
    const-string v1, "markerColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 871
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->getIcon()Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/maps/model/MarkerOptions;->icon(Lcom/google/android/libraries/maps/model/BitmapDescriptor;)Lcom/google/android/libraries/maps/model/MarkerOptions;

    .line 874
    :cond_35
    const-string v0, "iconScale"

    invoke-virtual {p2, v0}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 875
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconScale()D

    move-result-wide v0

    goto :goto_4f

    .line 876
    :cond_42
    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 877
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconScale()D

    move-result-wide v0

    goto :goto_4f

    :cond_4d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 881
    :goto_4f
    const-string v2, "iconUrl"

    invoke-virtual {p2, v2}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 882
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;DLcom/google/android/libraries/maps/model/MarkerOptions;)V

    goto :goto_6c

    .line 883
    :cond_5f
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 885
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;DLcom/google/android/libraries/maps/model/MarkerOptions;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private setInlinePolygonStyle(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V
    .registers 5

    .line 951
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v0

    .line 952
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->hasFill()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "fillColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 953
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 955
    :cond_19
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->hasOutline()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 956
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 957
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 959
    :cond_2e
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 960
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 963
    :cond_3d
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 964
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getFillColor()I

    move-result p2

    invoke-static {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    :cond_4e
    return-void
.end method

.method private setMarkerInfoWindow(Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/android/libraries/maps/model/Marker;Lcom/google/maps/android/data/kml/KmlPlacemark;)V
    .registers 11

    .line 1126
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    .line 1127
    const-string v2, "description"

    invoke-virtual {p3, v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    .line 1128
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->hasBalloonStyle()Z

    move-result v4

    .line 1129
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v4, :cond_33

    if-eqz v5, :cond_33

    .line 1131
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/google/maps/android/data/kml/KmlUtil;->substituteProperties(Ljava/lang/String;Lcom/google/maps/android/data/kml/KmlPlacemark;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1132
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_71

    :cond_33
    if-eqz v4, :cond_42

    if-eqz v1, :cond_42

    .line 1134
    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_71

    :cond_42
    if-eqz v1, :cond_58

    if-eqz v3, :cond_58

    .line 1137
    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p3, v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_71

    :cond_58
    if-eqz v3, :cond_65

    .line 1141
    invoke-virtual {p3, v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1142
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_71

    :cond_65
    if-eqz v1, :cond_71

    .line 1144
    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method protected addFeature(Lcom/google/maps/android/data/Feature;)V
    .registers 9

    .line 674
    sget-object v0, Lcom/google/maps/android/data/Renderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    .line 675
    instance-of v1, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v1, :cond_c

    .line 676
    move-object v1, p1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-direct {p0, v1}, Lcom/google/maps/android/data/Renderer;->setFeatureDefaultStyles(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V

    .line 678
    :cond_c
    iget-boolean v1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    if-eqz v1, :cond_50

    .line 679
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 681
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    .line 683
    :cond_21
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->hasGeometry()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 685
    instance-of v0, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v0, :cond_48

    .line 686
    invoke-static {p1}, Lcom/google/maps/android/data/Renderer;->getPlacemarkVisibility(Lcom/google/maps/android/data/Feature;)Z

    move-result v6

    .line 687
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getId()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v3

    .line 689
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Renderer;->getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/data/kml/KmlStyle;

    move-result-object v4

    .line 690
    move-object v2, p1

    check-cast v2, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/data/kml/KmlStyle;

    move-result-object v5

    move-object v1, p0

    .line 691
    invoke-virtual/range {v1 .. v6}, Lcom/google/maps/android/data/Renderer;->addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_50

    .line 693
    :cond_48
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/android/data/Renderer;->addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;
    .registers 6

    .line 729
    invoke-interface {p2}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_ea

    goto :goto_5c

    :sswitch_10
    const-string v1, "GeometryCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5c

    :cond_19
    const/4 v2, 0x6

    goto :goto_5c

    :sswitch_1b
    const-string v1, "LineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_5c

    :cond_24
    const/4 v2, 0x5

    goto :goto_5c

    :sswitch_26
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_5c

    :cond_2f
    const/4 v2, 0x4

    goto :goto_5c

    :sswitch_31
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_5c

    :cond_3a
    const/4 v2, 0x3

    goto :goto_5c

    :sswitch_3c
    const-string v1, "MultiLineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_5c

    :cond_45
    const/4 v2, 0x2

    goto :goto_5c

    :sswitch_47
    const-string v1, "MultiPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_5c

    :cond_50
    const/4 v2, 0x1

    goto :goto_5c

    :sswitch_52
    const-string v1, "MultiPolygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_108

    return-object v0

    .line 765
    :pswitch_61
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;

    .line 766
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;->getGeometries()Ljava/util/List;

    move-result-object p2

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addGeometryCollectionToMap(Lcom/google/maps/android/data/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 741
    :pswitch_6e
    instance-of v1, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v1, :cond_79

    .line 742
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v0

    goto :goto_83

    .line 743
    :cond_79
    instance-of v1, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v1, :cond_83

    .line 744
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v0

    .line 746
    :cond_83
    :goto_83
    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    invoke-direct {p0, v0, p2}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object p1

    return-object p1

    .line 749
    :pswitch_8a
    instance-of v1, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v1, :cond_95

    .line 750
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v0

    goto :goto_9f

    .line 751
    :cond_95
    instance-of v1, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v1, :cond_9f

    .line 752
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v0

    .line 754
    :cond_9f
    :goto_9f
    check-cast p2, Lcom/google/maps/android/data/DataPolygon;

    invoke-direct {p0, v0, p2}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_a6
    instance-of v1, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v1, :cond_b1

    .line 734
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v0

    goto :goto_bb

    .line 735
    :cond_b1
    instance-of v1, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v1, :cond_bb

    .line 736
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v0

    .line 738
    :cond_bb
    :goto_bb
    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    invoke-direct {p0, v0, p2}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object p1

    return-object p1

    .line 759
    :pswitch_c2
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiLineStringToMap(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 756
    :pswitch_cf
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiPointToMap(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 762
    :pswitch_dc
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiPolygonToMap(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_ea
    .sparse-switch
        -0x7e2b361f -> :sswitch_52
        -0x3f883809 -> :sswitch_47
        -0x2560d4e2 -> :sswitch_3c
        0x49b6570 -> :sswitch_31
        0x4b86ed1a -> :sswitch_26
        0x6bb01145 -> :sswitch_1b
        0x7440e8d0 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_cf
        :pswitch_c2
        :pswitch_a6
        :pswitch_8a
        :pswitch_6e
        :pswitch_61
    .end packed-switch
.end method

.method protected addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;
    .registers 18

    move-object v6, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 781
    invoke-interface {p2}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    .line 782
    const-string v2, "drawOrder"

    invoke-virtual {p1, v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_1f

    .line 787
    :try_start_15
    invoke-virtual {p1, v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move v7, v8

    .line 792
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_ee

    :goto_2a
    move v8, v10

    goto :goto_56

    :sswitch_2c
    const-string v2, "LineString"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_2a

    :cond_35
    const/4 v8, 0x3

    goto :goto_56

    :sswitch_37
    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_2a

    :cond_40
    const/4 v8, 0x2

    goto :goto_56

    :sswitch_42
    const-string v2, "MultiGeometry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_2a

    :cond_4b
    const/4 v8, 0x1

    goto :goto_56

    :sswitch_4d
    const-string v2, "Point"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_2a

    :cond_56
    :goto_56
    packed-switch v8, :pswitch_data_100

    const/4 v0, 0x0

    return-object v0

    .line 809
    :pswitch_5b
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/libraries/maps/model/PolylineOptions;

    move-result-object v0

    if-eqz v4, :cond_65

    .line 811
    invoke-direct {p0, v0, v4}, Lcom/google/maps/android/data/Renderer;->setInlineLineStringStyle(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V

    goto :goto_76

    .line 812
    :cond_65
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 813
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolylineOptions;->color(I)Lcom/google/android/libraries/maps/model/PolylineOptions;

    .line 815
    :cond_76
    :goto_76
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/data/LineString;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/libraries/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/libraries/maps/model/Polyline;

    move-result-object v0

    .line 816
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/maps/model/Polyline;->setVisible(Z)V

    if-eqz v7, :cond_85

    .line 818
    invoke-virtual {v0, v9}, Lcom/google/android/libraries/maps/model/Polyline;->setZIndex(F)V

    :cond_85
    return-object v0

    .line 822
    :pswitch_86
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/libraries/maps/model/PolygonOptions;

    move-result-object v0

    if-eqz v4, :cond_90

    .line 824
    invoke-direct {p0, v0, v4}, Lcom/google/maps/android/data/Renderer;->setInlinePolygonStyle(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V

    goto :goto_a1

    .line 825
    :cond_90
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 826
    invoke-virtual {v0}, Lcom/google/android/libraries/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/libraries/maps/model/PolygonOptions;

    .line 828
    :cond_a1
    :goto_a1
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/data/DataPolygon;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/libraries/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/libraries/maps/model/Polygon;

    move-result-object v0

    .line 829
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/maps/model/Polygon;->setVisible(Z)V

    if-eqz v7, :cond_b0

    .line 831
    invoke-virtual {v0, v9}, Lcom/google/android/libraries/maps/model/Polygon;->setZIndex(F)V

    :cond_b0
    return-object v0

    .line 835
    :pswitch_b1
    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/data/kml/KmlMultiGeometry;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/android/data/Renderer;->addMultiGeometryToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/kml/KmlMultiGeometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 794
    :pswitch_c0
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/libraries/maps/model/MarkerOptions;

    move-result-object v0

    if-eqz v4, :cond_ca

    .line 796
    invoke-direct {p0, v0, v4, p3}, Lcom/google/maps/android/data/Renderer;->setInlinePointStyle(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;)V

    goto :goto_db

    .line 797
    :cond_ca
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_db

    .line 799
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconScale()D

    move-result-wide v10

    invoke-direct {p0, v2, v10, v11, v0}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;DLcom/google/android/libraries/maps/model/MarkerOptions;)V

    .line 801
    :cond_db
    :goto_db
    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/data/kml/KmlPoint;

    invoke-direct {p0, v0, v2}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/libraries/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/libraries/maps/model/Marker;

    move-result-object v0

    .line 802
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/maps/model/Marker;->setVisible(Z)V

    .line 803
    invoke-direct {p0, p3, v0, p1}, Lcom/google/maps/android/data/Renderer;->setMarkerInfoWindow(Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/android/libraries/maps/model/Marker;Lcom/google/maps/android/data/kml/KmlPlacemark;)V

    if-eqz v7, :cond_ed

    .line 805
    invoke-virtual {v0, v9}, Lcom/google/android/libraries/maps/model/Marker;->setZIndex(F)V

    :cond_ed
    return-object v0

    :sswitch_data_ee
    .sparse-switch
        0x49b6570 -> :sswitch_4d
        0x55028ab -> :sswitch_42
        0x4b86ed1a -> :sswitch_37
        0x6bb01145 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b1
        :pswitch_86
        :pswitch_5b
    .end packed-switch
.end method

.method public assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .line 1013
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1014
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1015
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1016
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_28
    return-void
.end method

.method protected attachGroundOverlay(Lcom/google/android/libraries/maps/model/GroundOverlayOptions;)Lcom/google/android/libraries/maps/model/GroundOverlay;
    .registers 3

    .line 1115
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/GroundOverlayManager$Collection;->addGroundOverlay(Lcom/google/android/libraries/maps/model/GroundOverlayOptions;)Lcom/google/android/libraries/maps/model/GroundOverlay;

    move-result-object p1

    return-object p1
.end method

.method protected cacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v0, v0, Lcom/google/maps/android/data/Renderer$ImagesCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkClearBitmapCache()V
    .registers 2

    .line 554
    iget v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/google/maps/android/data/Renderer$ImagesCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 555
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v0, v0, Lcom/google/maps/android/data/Renderer$ImagesCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_17
    return-void
.end method

.method protected clearStylesRenderer()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected downloadFinished()V
    .registers 2

    .line 545
    iget v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    .line 546
    invoke-virtual {p0}, Lcom/google/maps/android/data/Renderer;->checkClearBitmapCache()V

    return-void
.end method

.method protected downloadStarted()V
    .registers 2

    .line 538
    iget v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/android/data/Renderer;->mNumActiveDownloads:I

    return-void
.end method

.method protected getAllFeatures()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "+",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    return-object v0
.end method

.method protected getCachedGroundOverlayImage(Ljava/lang/String;)Lcom/google/android/libraries/maps/model/BitmapDescriptor;
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v0, v0, Lcom/google/maps/android/data/Renderer$ImagesCache;->groundOverlayImagesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    if-nez v0, :cond_23

    .line 414
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v1, v1, Lcom/google/maps/android/data/Renderer$ImagesCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_23

    .line 416
    invoke-static {v1}, Lcom/google/android/libraries/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v1, v1, Lcom/google/maps/android/data/Renderer$ImagesCache;->groundOverlayImagesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v0
.end method

.method protected getCachedMarkerImage(Ljava/lang/String;D)Lcom/google/android/libraries/maps/model/BitmapDescriptor;
    .registers 7

    .line 357
    sget-object v0, Lcom/google/maps/android/data/Renderer;->sScaleFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v1, v1, Lcom/google/maps/android/data/Renderer$ImagesCache;->markerImagesCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_19

    .line 361
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_2f

    .line 364
    iget-object v2, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Lcom/google/maps/android/data/Renderer$ImagesCache;

    iget-object v2, v2, Lcom/google/maps/android/data/Renderer$ImagesCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2f

    .line 366
    invoke-direct {p0, v2, p2, p3}, Lcom/google/maps/android/data/Renderer;->scaleIcon(Landroid/graphics/Bitmap;D)Lcom/google/android/libraries/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 367
    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/android/data/Renderer;->putMarkerImagesCache(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/maps/model/BitmapDescriptor;)V

    :cond_2f
    return-object v1
.end method

.method getContainerFeature(Ljava/lang/Object;)Lcom/google/maps/android/data/Feature;
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    if-eqz v0, :cond_b

    .line 296
    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/maps/android/data/Feature;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getContainerList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method getDefaultLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    return-object v0
.end method

.method getDefaultPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    return-object v0
.end method

.method getDefaultPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    return-object v0
.end method

.method getFeature(Ljava/lang/Object;)Lcom/google/maps/android/data/Feature;
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/maps/android/data/Feature;

    return-object p1
.end method

.method public getFeatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGroundOverlayMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/libraries/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMap()Lcom/google/android/libraries/maps/GoogleMap;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    return-object v0
.end method

.method protected getMarkerIconUrls()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/Set;

    return-object v0
.end method

.method protected getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/data/kml/KmlStyle;
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/data/kml/KmlStyle;

    .line 449
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 450
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/data/kml/KmlStyle;

    :cond_1a
    return-object v0
.end method

.method protected getStyleMaps()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStyleMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getStylesRenderer()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected hasFeatures()Z
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isLayerOnMap()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    return v0
.end method

.method protected putContainerFeature(Ljava/lang/Object;Lcom/google/maps/android/data/Feature;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p2, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected putFeatures(Lcom/google/maps/android/data/Feature;Ljava/lang/Object;)V
    .registers 4

    .line 489
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected putStyles()V
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected putStyles(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected removeFeature(Lcom/google/maps/android/data/Feature;)V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 619
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method protected removeFeatures(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "+",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 574
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/maps/android/data/Renderer;->removeFeatures(Ljava/util/Collection;)V

    return-void
.end method

.method protected removeFromMap(Ljava/lang/Object;)V
    .registers 3

    .line 706
    instance-of v0, p1, Lcom/google/android/libraries/maps/model/Marker;

    if-eqz v0, :cond_c

    .line 707
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    check-cast p1, Lcom/google/android/libraries/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/MarkerManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Marker;)Z

    goto :goto_48

    .line 708
    :cond_c
    instance-of v0, p1, Lcom/google/android/libraries/maps/model/Polyline;

    if-eqz v0, :cond_18

    .line 709
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    check-cast p1, Lcom/google/android/libraries/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/PolylineManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Polyline;)Z

    goto :goto_48

    .line 710
    :cond_18
    instance-of v0, p1, Lcom/google/android/libraries/maps/model/Polygon;

    if-eqz v0, :cond_24

    .line 711
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    check-cast p1, Lcom/google/android/libraries/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/PolygonManager$Collection;->remove(Lcom/google/android/libraries/maps/model/Polygon;)Z

    goto :goto_48

    .line 712
    :cond_24
    instance-of v0, p1, Lcom/google/android/libraries/maps/model/GroundOverlay;

    if-eqz v0, :cond_30

    .line 713
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    check-cast p1, Lcom/google/android/libraries/maps/model/GroundOverlay;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/collections/GroundOverlayManager$Collection;->remove(Lcom/google/android/libraries/maps/model/GroundOverlay;)Z

    goto :goto_48

    .line 714
    :cond_30
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 715
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_48
    :goto_48
    return-void
.end method

.method protected removeGroundOverlays(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/libraries/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/GroundOverlay;

    if-eqz v0, :cond_8

    .line 606
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Lcom/google/maps/android/collections/GroundOverlayManager$Collection;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/collections/GroundOverlayManager$Collection;->remove(Lcom/google/android/libraries/maps/model/GroundOverlay;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method protected setLayerVisibility(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    return-void
.end method

.method public setMap(Lcom/google/android/libraries/maps/GoogleMap;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/libraries/maps/GoogleMap;

    return-void
.end method

.method setOnFeatureClickListener(Lcom/google/maps/android/data/Layer$OnFeatureClickListener;)V
    .registers 4

    .line 1186
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mPolygons:Lcom/google/maps/android/collections/PolygonManager$Collection;

    new-instance v1, Lcom/google/maps/android/data/Renderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/android/data/Renderer$2;-><init>(Lcom/google/maps/android/data/Renderer;Lcom/google/maps/android/data/Layer$OnFeatureClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/android/collections/PolygonManager$Collection;->setOnPolygonClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolygonClickListener;)V

    .line 1199
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMarkers:Lcom/google/maps/android/collections/MarkerManager$Collection;

    new-instance v1, Lcom/google/maps/android/data/Renderer$3;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/android/data/Renderer$3;-><init>(Lcom/google/maps/android/data/Renderer;Lcom/google/maps/android/data/Layer$OnFeatureClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/android/collections/MarkerManager$Collection;->setOnMarkerClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnMarkerClickListener;)V

    .line 1213
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mPolylines:Lcom/google/maps/android/collections/PolylineManager$Collection;

    new-instance v1, Lcom/google/maps/android/data/Renderer$4;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/android/data/Renderer$4;-><init>(Lcom/google/maps/android/data/Renderer;Lcom/google/maps/android/data/Layer$OnFeatureClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/android/collections/PolylineManager$Collection;->setOnPolylineClickListener(Lcom/google/android/libraries/maps/GoogleMap$OnPolylineClickListener;)V

    return-void
.end method

.method protected storeData(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/libraries/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 661
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mStyles:Ljava/util/HashMap;

    .line 662
    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mStyleMaps:Ljava/util/HashMap;

    .line 663
    iget-object p1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {p1, p3}, Lcom/google/maps/android/data/geojson/BiMultiMap;->putAll(Ljava/util/Map;)V

    .line 664
    iput-object p4, p0, Lcom/google/maps/android/data/Renderer;->mContainers:Ljava/util/ArrayList;

    .line 665
    iput-object p5, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlayMap:Ljava/util/HashMap;

    return-void
.end method
