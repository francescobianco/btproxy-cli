.class public Lcom/google/maps/android/PolyUtil;
.super Ljava/lang/Object;
.source "PolyUtil.java"


# static fields
.field public static final DEFAULT_TOLERANCE:D = 0.1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsLocation(DDLjava/util/List;Z)Z
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 104
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 108
    :cond_8
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 109
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, p4

    .line 110
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/LatLng;

    .line 111
    iget-wide v3, v0, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 112
    iget-wide v5, v0, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 114
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v18, v1

    move-wide v2, v3

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/maps/model/LatLng;

    sub-double v7, v15, v5

    const-wide v9, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 115
    invoke-static/range {v7 .. v12}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v10

    cmpl-double v7, v13, v2

    if-nez v7, :cond_56

    const-wide/16 v7, 0x0

    cmpl-double v7, v10, v7

    if-nez v7, :cond_56

    return v17

    .line 120
    :cond_56
    iget-wide v7, v4, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 121
    iget-wide v7, v4, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    sub-double v23, v21, v5

    const-wide v25, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v27, 0x400921fb54442d18L    # Math.PI

    .line 123
    invoke-static/range {v23 .. v28}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v6

    move-wide/from16 v4, v19

    move-wide v8, v13

    move/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lcom/google/maps/android/PolyUtil;->intersects(DDDDDZ)Z

    move-result v2

    if-eqz v2, :cond_7f

    add-int/lit8 v18, v18, 0x1

    :cond_7f
    move-wide/from16 v2, v19

    move-wide/from16 v5, v21

    goto :goto_2f

    :cond_84
    and-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_8a

    move/from16 v1, v17

    :cond_8a
    return v1
.end method

.method public static containsLocation(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 92
    iget-wide v0, p0, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->containsLocation(DDLjava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v3, v0, :cond_61

    const/4 v6, 0x1

    move v8, v2

    move v7, v6

    :goto_12
    add-int/lit8 v9, v3, 0x1

    .line 508
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x40

    shl-int v10, v3, v8

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x5

    const/16 v10, 0x1f

    if-ge v3, v10, :cond_5f

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_2b

    shr-int/lit8 v3, v7, 0x1

    not-int v3, v3

    goto :goto_2d

    :cond_2b
    shr-int/lit8 v3, v7, 0x1

    :goto_2d
    add-int/2addr v3, v4

    move v4, v2

    :goto_2f
    add-int/lit8 v7, v9, 0x1

    .line 517
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x40

    shl-int v9, v8, v4

    add-int/2addr v6, v9

    add-int/lit8 v4, v4, 0x5

    if-ge v8, v10, :cond_5d

    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_46

    shr-int/lit8 v4, v6, 0x1

    not-int v4, v4

    goto :goto_48

    :cond_46
    shr-int/lit8 v4, v6, 0x1

    :goto_48
    add-int/2addr v5, v4

    .line 523
    new-instance v4, Lcom/google/android/libraries/maps/model/LatLng;

    int-to-double v8, v3

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v8, v10

    int-to-double v12, v5

    mul-double/2addr v12, v10

    invoke-direct {v4, v8, v9, v12, v13}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move v3, v7

    goto :goto_d

    :cond_5d
    move v9, v7

    goto :goto_2f

    :cond_5f
    move v3, v9

    goto :goto_12

    :cond_61
    return-object v1
.end method

.method public static distanceToLine(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D
    .registers 15

    .line 465
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 466
    invoke-static {p2, p0}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    .line 469
    :cond_b
    iget-wide v0, p0, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 470
    iget-wide v2, p0, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 471
    iget-wide v4, p1, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 472
    iget-wide v6, p1, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 473
    iget-wide v8, p2, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 474
    iget-wide v10, p2, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v4

    sub-double/2addr v10, v6

    sub-double/2addr v0, v4

    mul-double/2addr v0, v8

    sub-double/2addr v2, v6

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    mul-double/2addr v8, v8

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    div-double/2addr v0, v8

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_45

    .line 481
    invoke-static {p0, p1}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    :cond_45
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_50

    .line 484
    invoke-static {p0, p2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    .line 486
    :cond_50
    new-instance v2, Lcom/google/android/libraries/maps/model/LatLng;

    iget-wide v3, p1, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    iget-wide v5, p2, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    iget-wide v5, p1, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    iget-wide v7, p2, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    iget-wide p1, p1, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    sub-double/2addr v7, p1

    mul-double/2addr v0, v7

    add-double/2addr v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    .line 487
    invoke-static {p0, v2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 538
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/maps/model/LatLng;

    .line 539
    iget-wide v6, v5, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 540
    iget-wide v10, v5, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    sub-long v1, v6, v1

    sub-long v3, v8, v3

    .line 545
    invoke-static {v1, v2, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 546
    invoke-static {v3, v4, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    move-wide v1, v6

    move-wide v3, v8

    goto :goto_c

    .line 551
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encode(JLjava/lang/StringBuffer;)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    if-gez v0, :cond_9

    not-long p0, p0

    :cond_9
    :goto_9
    const-wide/16 v0, 0x20

    cmp-long v2, p0, v0

    const-wide/16 v3, 0x3f

    if-ltz v2, :cond_21

    const-wide/16 v5, 0x1f

    and-long/2addr v5, p0

    or-long/2addr v0, v5

    add-long/2addr v0, v3

    long-to-int v0, v0

    .line 557
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    shr-long/2addr p0, v0

    goto :goto_9

    :cond_21
    add-long/2addr p0, v3

    long-to-int p0, p0

    .line 560
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static intersects(DDDDDZ)Z
    .registers 23

    const-wide/16 v0, 0x0

    cmpl-double v2, p8, v0

    const/4 v8, 0x0

    if-ltz v2, :cond_b

    cmpl-double v2, p8, p4

    if-gez v2, :cond_13

    :cond_b
    cmpg-double v2, p8, v0

    if-gez v2, :cond_14

    cmpg-double v2, p8, p4

    if-gez v2, :cond_14

    :cond_13
    return v8

    :cond_14
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v4, p6, v2

    if-gtz v4, :cond_1e

    return v8

    :cond_1e
    cmpg-double v4, p0, v2

    if-lez v4, :cond_8e

    cmpg-double v2, p2, v2

    if-lez v2, :cond_8e

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v4, p0, v2

    if-gez v4, :cond_8e

    cmpl-double v4, p2, v2

    if-ltz v4, :cond_34

    goto :goto_8e

    :cond_34
    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v4, p4, v4

    if-gtz v4, :cond_3e

    return v8

    :cond_3e
    sub-double v4, p4, p8

    mul-double/2addr v4, p0

    mul-double v6, p2, p8

    add-double/2addr v4, v6

    div-double v4, v4, p4

    cmpl-double v6, p0, v0

    if-ltz v6, :cond_53

    cmpl-double v6, p2, v0

    if-ltz v6, :cond_53

    cmpg-double v6, p6, v4

    if-gez v6, :cond_53

    return v8

    :cond_53
    cmpg-double v6, p0, v0

    const/4 v9, 0x1

    if-gtz v6, :cond_61

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_61

    cmpl-double v0, p6, v4

    if-ltz v0, :cond_61

    return v9

    :cond_61
    cmpl-double v0, p6, v2

    if-ltz v0, :cond_66

    return v9

    :cond_66
    if-eqz p10, :cond_7b

    .line 87
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->tanLatGC(DDDD)D

    move-result-wide v0

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_8e

    goto :goto_8d

    .line 88
    :cond_7b
    invoke-static/range {p6 .. p7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v10

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->mercatorLatRhumb(DDDD)D

    move-result-wide v0

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_8e

    :goto_8d
    move v8, v9

    :cond_8e
    :goto_8e
    return v8
.end method

.method public static isClosedPolygon(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/maps/model/LatLng;

    .line 452
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/maps/model/LatLng;

    .line 453
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLocationOnEdge(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 150
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdge(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result p0

    return p0
.end method

.method public static isLocationOnEdge(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result p0

    return p0
.end method

.method private static isLocationOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;ZZD)Z"
        }
    .end annotation

    .line 176
    invoke-static/range {p0 .. p5}, Lcom/google/maps/android/PolyUtil;->locationIndexOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isLocationOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 171
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result p0

    return p0
.end method

.method public static isLocationOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result p0

    return p0
.end method

.method private static isOnSegmentGC(DDDDDDD)Z
    .registers 31

    sub-double v4, p2, p10

    move-wide/from16 v0, p0

    move-wide/from16 v2, p8

    .line 320
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v0

    cmpg-double v2, v0, p12

    const/4 v3, 0x1

    if-gtz v2, :cond_10

    return v3

    :cond_10
    sub-double v8, p6, p10

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    .line 324
    invoke-static/range {v4 .. v9}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v4

    cmpg-double v2, v4, p12

    if-gtz v2, :cond_1f

    return v3

    .line 328
    :cond_1f
    invoke-static/range {p0 .. p11}, Lcom/google/maps/android/PolyUtil;->sinDeltaBearing(DDDDDD)D

    move-result-wide v6

    .line 329
    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->sinFromHav(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    .line 330
    invoke-static {v8, v9}, Lcom/google/maps/android/MathUtil;->havFromSin(D)D

    move-result-wide v6

    cmpl-double v2, v6, p12

    const/4 v8, 0x0

    if-lez v2, :cond_32

    return v8

    :cond_32
    sub-double v9, p2, p6

    move-wide/from16 p6, p0

    move-wide/from16 p8, p4

    move-wide/from16 p10, v9

    .line 334
    invoke-static/range {p6 .. p11}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v13, v9, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v13, v15, v13

    mul-double/2addr v13, v6

    add-double/2addr v13, v9

    cmpl-double v2, v0, v13

    if-gtz v2, :cond_6e

    cmpl-double v2, v4, v13

    if-lez v2, :cond_51

    goto :goto_6e

    :cond_51
    const-wide v13, 0x3fe7ae147ae147aeL    # 0.74

    cmpg-double v2, v9, v13

    if-gez v2, :cond_5b

    return v3

    :cond_5b
    mul-double/2addr v11, v6

    sub-double/2addr v15, v11

    sub-double/2addr v0, v6

    div-double/2addr v0, v15

    sub-double/2addr v4, v6

    div-double/2addr v4, v15

    .line 345
    invoke-static {v0, v1, v4, v5}, Lcom/google/maps/android/MathUtil;->sinSumFromHav(DD)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v3, v8

    :goto_6d
    return v3

    :cond_6e
    :goto_6e
    return v8
.end method

.method public static locationIndexOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)I
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;ZZD)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 229
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_a

    return v2

    :cond_a
    const-wide v3, 0x41584db040000000L    # 6371009.0

    div-double v3, p4, v3

    .line 234
    invoke-static {v3, v4}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v19

    .line 235
    iget-wide v5, v0, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    .line 236
    iget-wide v5, v0, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    const/4 v0, 0x0

    const/16 v25, 0x1

    if-eqz p2, :cond_2b

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v5, p1

    goto :goto_2e

    :cond_2b
    move-object/from16 v5, p1

    move v1, v0

    .line 237
    :goto_2e
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/maps/model/LatLng;

    .line 238
    iget-wide v6, v1, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 239
    iget-wide v8, v1, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    if-eqz p3, :cond_7f

    .line 242
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    move-wide v5, v6

    move-wide v7, v8

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/maps/model/LatLng;

    .line 243
    iget-wide v9, v4, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    .line 244
    iget-wide v9, v4, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v9, v26

    move-wide/from16 v11, v28

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v19

    .line 245
    invoke-static/range {v5 .. v18}, Lcom/google/maps/android/PolyUtil;->isOnSegmentGC(DDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_78

    add-int/lit8 v3, v3, -0x1

    .line 246
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_78
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v26

    move-wide/from16 v7, v28

    goto :goto_49

    :cond_7f
    sub-double v10, v21, v3

    add-double v3, v21, v3

    .line 260
    invoke-static {v6, v7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v12

    .line 261
    invoke-static/range {v21 .. v22}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v14

    .line 263
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/libraries/maps/model/LatLng;

    move-object/from16 v18, v1

    .line 264
    iget-wide v0, v2, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 265
    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v26

    move-wide/from16 v28, v14

    .line 266
    iget-wide v14, v2, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 267
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    cmpl-double v2, v30, v10

    if-ltz v2, :cond_148

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpg-double v2, v6, v3

    if-gtz v2, :cond_148

    sub-double v6, v14, v8

    const-wide v30, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v32, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 p0, v6

    move-wide/from16 p2, v30

    move-wide/from16 p4, v32

    .line 269
    invoke-static/range {p0 .. p5}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v6

    sub-double v8, v23, v8

    move-wide/from16 p0, v8

    .line 270
    invoke-static/range {p0 .. p5}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v8

    const-wide v30, 0x401921fb54442d18L    # 6.283185307179586

    add-double v32, v8, v30

    sub-double v30, v8, v30

    const/4 v2, 0x3

    move-wide/from16 v34, v0

    .line 274
    new-array v0, v2, [D

    const/4 v1, 0x0

    aput-wide v8, v0, v1

    aput-wide v32, v0, v25

    const/4 v1, 0x2

    aput-wide v30, v0, v1

    const/4 v1, 0x0

    :goto_f7
    if-ge v1, v2, :cond_14a

    .line 275
    aget-wide v8, v0, v1

    sub-double v30, v26, v12

    mul-double v32, v6, v6

    mul-double v36, v30, v30

    add-double v32, v32, v36

    const-wide/16 v36, 0x0

    cmpg-double v38, v32, v36

    if-gtz v38, :cond_10a

    goto :goto_122

    :cond_10a
    mul-double v36, v8, v6

    sub-double v38, v28, v12

    mul-double v38, v38, v30

    add-double v36, v36, v38

    div-double v32, v36, v32

    const-wide/16 v36, 0x0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-wide/from16 p0, v32

    move-wide/from16 p2, v36

    move-wide/from16 p4, v38

    .line 278
    invoke-static/range {p0 .. p5}, Lcom/google/maps/android/MathUtil;->clamp(DDD)D

    move-result-wide v36

    :goto_122
    mul-double v32, v36, v6

    mul-double v36, v36, v30

    add-double v36, v12, v36

    .line 281
    invoke-static/range {v36 .. v37}, Lcom/google/maps/android/MathUtil;->inverseMercator(D)D

    move-result-wide v30

    sub-double v8, v8, v32

    move-wide/from16 p0, v21

    move-wide/from16 p2, v30

    move-wide/from16 p4, v8

    .line 282
    invoke-static/range {p0 .. p5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v8

    cmpg-double v8, v8, v19

    if-gez v8, :cond_144

    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x0

    .line 284
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_144
    const/4 v8, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    :cond_148
    move-wide/from16 v34, v0

    :cond_14a
    const/4 v8, 0x0

    add-int/lit8 v5, v5, 0x1

    move v0, v8

    move-wide v8, v14

    move-object/from16 v1, v18

    move-wide/from16 v12, v26

    move-wide/from16 v14, v28

    move-wide/from16 v6, v34

    const/4 v2, -0x1

    goto/16 :goto_90

    :cond_15a
    move v0, v2

    return v0
.end method

.method public static locationIndexOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;Z)I"
        }
    .end annotation

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 208
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->locationIndexOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)I

    move-result p0

    return p0
.end method

.method public static locationIndexOnPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZD)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;ZD)I"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->locationIndexOnEdgeOrPath(Lcom/google/android/libraries/maps/model/LatLng;Ljava/util/List;ZZD)I

    move-result p0

    return p0
.end method

.method private static mercatorLatRhumb(DDDD)D
    .registers 10

    .line 46
    invoke-static {p0, p1}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide p0

    sub-double v0, p4, p6

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide p2

    mul-double/2addr p2, p6

    add-double/2addr p0, p2

    div-double/2addr p0, p4

    return-wide p0
.end method

.method public static simplify(Ljava/util/List;D)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 368
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_e5

    const-wide/16 v3, 0x0

    cmpg-double v5, p1, v3

    if-lez v5, :cond_dd

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/PolyUtil;->isClosedPolygon(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 383
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/maps/model/LatLng;

    .line 385
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    new-instance v7, Lcom/google/android/libraries/maps/model/LatLng;

    iget-wide v8, v6, Lcom/google/android/libraries/maps/model/LatLng;->latitude:D

    const-wide v10, 0x3da5fd7fe1796495L    # 1.0E-11

    add-double/2addr v8, v10

    iget-wide v12, v6, Lcom/google/android/libraries/maps/model/LatLng;->longitude:D

    add-double/2addr v12, v10

    invoke-direct {v7, v8, v9, v12, v13}, Lcom/google/android/libraries/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    .line 391
    :goto_3d
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 392
    new-array v8, v1, [D

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 393
    aput-wide v10, v8, v9

    add-int/lit8 v12, v1, -0x1

    .line 394
    aput-wide v10, v8, v12

    const/4 v10, 0x2

    if-le v1, v10, :cond_ac

    .line 400
    filled-new-array {v9, v12}, [I

    move-result-object v1

    .line 401
    invoke-virtual {v7, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v9

    .line 402
    :goto_58
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v10

    if-lez v10, :cond_ac

    .line 403
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 405
    aget v11, v10, v9

    add-int/2addr v11, v2

    move-wide v12, v3

    :goto_68
    aget v14, v10, v2

    if-ge v11, v14, :cond_91

    .line 406
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/libraries/maps/model/LatLng;

    aget v15, v10, v9

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/libraries/maps/model/LatLng;

    aget v3, v10, v2

    .line 407
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/maps/model/LatLng;

    .line 406
    invoke-static {v14, v15, v3}, Lcom/google/maps/android/PolyUtil;->distanceToLine(Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;Lcom/google/android/libraries/maps/model/LatLng;)D

    move-result-wide v3

    cmpl-double v14, v3, v12

    if-lez v14, :cond_8c

    move-wide v12, v3

    move v1, v11

    :cond_8c
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0x0

    goto :goto_68

    :cond_91
    cmpl-double v3, v12, p1

    if-lez v3, :cond_a9

    .line 414
    aput-wide v12, v8, v1

    .line 415
    aget v3, v10, v9

    filled-new-array {v3, v1}, [I

    move-result-object v3

    .line 416
    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    aget v3, v10, v2

    filled-new-array {v1, v3}, [I

    move-result-object v3

    .line 418
    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    const-wide/16 v3, 0x0

    goto :goto_58

    :cond_ac
    if-eqz v5, :cond_b9

    .line 425
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_b9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/maps/model/LatLng;

    .line 433
    aget-wide v3, v8, v9

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_d9

    .line 434
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_c2

    :cond_dc
    return-object v1

    .line 373
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polyline must have at least 1 point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sinDeltaBearing(DDDDDD)D
    .registers 32

    .line 303
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 304
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 305
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v6, p8, p0

    sub-double v8, p10, p2

    sub-double v10, p4, p0

    sub-double v12, p6, p2

    .line 310
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    .line 311
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v2

    .line 312
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v18

    mul-double/2addr v4, v0

    invoke-static {v8, v9}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    add-double/2addr v6, v4

    .line 313
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v2

    invoke-static {v12, v13}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v4, v0

    mul-double v0, v14, v14

    mul-double v2, v6, v6

    add-double/2addr v0, v2

    mul-double v2, v16, v16

    mul-double v8, v4, v4

    add-double/2addr v2, v8

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4d

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_57

    :cond_4d
    mul-double/2addr v14, v4

    mul-double v6, v6, v16

    sub-double/2addr v14, v6

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v14, v0

    :goto_57
    return-wide v0
.end method

.method private static tanLatGC(DDDD)D
    .registers 10

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    sub-double v0, p4, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    mul-double/2addr p2, p6

    add-double/2addr p0, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method
