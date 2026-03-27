.class public Lcom/keephealth/android/util/baidumap/PathSmoothTool;
.super Ljava/lang/Object;
.source "PathSmoothTool.java"


# instance fields
.field private currentLocation_x:D

.field private currentLocation_y:D

.field private estimate_x:D

.field private estimate_y:D

.field private gauss_x:D

.field private gauss_y:D

.field private kalmanGain_x:D

.field private kalmanGain_y:D

.field private lastLocation_x:D

.field private lastLocation_y:D

.field private mIntensity:I

.field private mNoiseThreshhold:F

.field private mThreshhold:F

.field private m_Q:D

.field private m_R:D

.field private mdelt_x:D

.field private mdelt_y:D

.field private pdelt_x:D

.field private pdelt_y:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mThreshhold:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 23
    iput v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mNoiseThreshhold:F

    const-wide/16 v0, 0x0

    .line 179
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_R:D

    .line 180
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_Q:D

    return-void
.end method

.method private calculateDistanceFromPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 14

    .line 259
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v2

    .line 260
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    .line 261
    iget-wide v4, p3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    .line 262
    iget-wide v6, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    mul-double v2, v4, v4

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_49

    .line 270
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v8, p3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v2, v2, v8

    if-nez v2, :cond_34

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v2, v2, v8

    if-nez v2, :cond_34

    goto :goto_49

    :cond_34
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3f

    .line 276
    iget-wide v0, p3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 277
    iget-wide p2, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    goto :goto_4d

    .line 280
    :cond_3f
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 281
    iget-wide p2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v0, v6

    add-double/2addr p2, v0

    move-wide v0, v2

    goto :goto_4d

    .line 272
    :cond_49
    :goto_49
    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 273
    iget-wide p2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 283
    :goto_4d
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, p1, v2}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->getGoogleDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p1

    return-wide p1
.end method

.method private static getLastLocation(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/LatLng;"
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 242
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 245
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 246
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private initial()V
    .registers 3

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 184
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_x:D

    .line 185
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_y:D

    const-wide v0, 0x3f42ac2ab4f6bc38L    # 5.698402909980532E-4

    .line 188
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_x:D

    .line 189
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_y:D

    return-void
.end method

.method private kalmanFilter(DDDD)Lcom/google/android/gms/maps/model/LatLng;
    .registers 11

    .line 193
    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->lastLocation_x:D

    .line 194
    iput-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->currentLocation_x:D

    .line 195
    iget-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_x:D

    mul-double/2addr p1, p1

    iget-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_x:D

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_Q:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->gauss_x:D

    mul-double p3, p1, p1

    mul-double/2addr p1, p1

    .line 196
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_x:D

    mul-double/2addr v0, v0

    add-double/2addr p1, v0

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_R:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanGain_x:D

    .line 197
    iget-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->currentLocation_x:D

    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->lastLocation_x:D

    sub-double/2addr p3, v0

    mul-double/2addr p3, p1

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->estimate_x:D

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double p1, p3, p1

    .line 198
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->gauss_x:D

    mul-double/2addr p1, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_x:D

    .line 200
    iput-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->lastLocation_y:D

    .line 201
    iput-wide p7, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->currentLocation_y:D

    .line 202
    iget-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_y:D

    mul-double/2addr p1, p1

    iget-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_y:D

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_Q:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->gauss_y:D

    mul-double p5, p1, p1

    mul-double/2addr p1, p1

    .line 203
    iget-wide p7, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_y:D

    mul-double/2addr p7, p7

    add-double/2addr p1, p7

    div-double/2addr p5, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->m_R:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanGain_y:D

    .line 204
    iget-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->currentLocation_y:D

    iget-wide p7, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->lastLocation_y:D

    sub-double/2addr p5, p7

    mul-double/2addr p5, p1

    add-double/2addr p5, p7

    iput-wide p5, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->estimate_y:D

    sub-double/2addr p3, p1

    .line 205
    iget-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->gauss_y:D

    mul-double/2addr p3, p1

    mul-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mdelt_y:D

    .line 207
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide p2, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->estimate_y:D

    iget-wide p4, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->estimate_x:D

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object p1
.end method

.method private kalmanFilterPath(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_39

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_10

    goto :goto_39

    .line 118
    :cond_10
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->initial()V

    const/4 v1, 0x0

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 122
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 124
    invoke-direct {p0, v1, v3, p2}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanFilterPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 130
    :cond_37
    monitor-exit p0

    return-object v0

    .line 117
    :cond_39
    :goto_39
    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception p1

    .line 131
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private kalmanFilterPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/LatLng;
    .registers 15

    .line 143
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->pdelt_y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    .line 144
    :cond_e
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->initial()V

    :cond_11
    const/4 v0, 0x0

    if-eqz p1, :cond_34

    if-nez p2, :cond_17

    goto :goto_34

    :cond_17
    const/4 v1, 0x1

    if-ge p3, v1, :cond_1c

    :goto_1a
    move p3, v1

    goto :goto_20

    :cond_1c
    const/4 v1, 0x5

    if-le p3, v1, :cond_20

    goto :goto_1a

    :cond_20
    :goto_20
    const/4 v1, 0x0

    :goto_21
    if-ge v1, p3, :cond_34

    .line 156
    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v9, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanFilter(DDDD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-object p2, v0

    goto :goto_21

    :cond_34
    :goto_34
    return-object v0
.end method

.method private reduceNoisePoint(Ljava/util/List;F)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 303
    monitor-enter p0

    if-nez p1, :cond_6

    .line 305
    :try_start_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_f

    .line 308
    monitor-exit p0

    return-object p1

    .line 310
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 311
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 312
    invoke-static {v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->getLastLocation(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 313
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v2, :cond_45

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_30

    goto :goto_45

    :cond_30
    add-int/lit8 v4, v1, 0x1

    .line 318
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 319
    invoke-direct {p0, v3, v2, v4}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->calculateDistanceFromPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    float-to-double v6, p2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_48

    .line 321
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 315
    :cond_45
    :goto_45
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 324
    :cond_4b
    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception p1

    .line 325
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method private reducerVerticalThreshold(Ljava/util/List;F)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 216
    monitor-enter p0

    if-nez p1, :cond_6

    .line 218
    :try_start_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 220
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_f

    .line 221
    monitor-exit p0

    return-object p1

    .line 223
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 225
    invoke-static {v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->getLastLocation(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 226
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v2, :cond_45

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_30

    goto :goto_45

    :cond_30
    add-int/lit8 v4, v1, 0x1

    .line 231
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 232
    invoke-direct {p0, v3, v2, v4}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->calculateDistanceFromPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    float-to-double v6, p2

    cmpl-double v2, v4, v6

    if-lez v2, :cond_48

    .line 234
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 228
    :cond_45
    :goto_45
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 237
    :cond_4b
    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception p1

    .line 238
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method


# virtual methods
.method public getGoogleDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 13

    .line 288
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 289
    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v2

    .line 290
    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v6, v2

    .line 291
    iget-wide p1, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr p1, v2

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double/2addr p1, v6

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide v0, 0x40b8ea23126e978dL    # 6378.137

    mul-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method public getIntensity()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    return v0
.end method

.method public getThreshhold()F
    .registers 2

    .line 38
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mThreshhold:F

    return v0
.end method

.method public kalmanFilterPath(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 70
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanFilterPath(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public kalmanFilterPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 4

    .line 92
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanFilterPoint(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public pathOptimize(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->removeNoisePoint(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 58
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->kalmanFilterPath(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 59
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mThreshhold:F

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->reducerVerticalThreshold(Ljava/util/List;F)Ljava/util/List;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 60
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public reducerVerticalThreshold(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mThreshhold:F

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->reducerVerticalThreshold(Ljava/util/List;F)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeNoisePoint(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mNoiseThreshhold:F

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->reduceNoisePoint(Ljava/util/List;F)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setIntensity(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mIntensity:I

    return-void
.end method

.method public setNoiseThreshhold(F)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mNoiseThreshhold:F

    return-void
.end method

.method public setThreshhold(F)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->mThreshhold:F

    return-void
.end method
