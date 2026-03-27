.class public Lcom/keephealth/android/util/GPSConverterUtils;
.super Ljava/lang/Object;
.source "GPSConverterUtils.java"


# static fields
.field public static final BAIDU_LBS_TYPE:Ljava/lang/String; = "bd09ll"

.field public static a:D = 6378245.0

.field public static ee:D = 0.006693421622965943

.field public static pi:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bd09_To_Gcj02(DD)Lcom/keephealth/android/util/GPS;
    .registers 10

    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p2, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p0, v0

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 63
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p2, v2

    sub-double/2addr p0, p2

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, v0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    .line 66
    new-instance p0, Lcom/keephealth/android/util/GPS;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object p0
.end method

.method public static bd09_To_Gps84(DD)Lcom/keephealth/android/util/GPS;
    .registers 6

    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/keephealth/android/util/GPSConverterUtils;->bd09_To_Gcj02(DD)Lcom/keephealth/android/util/GPS;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/util/GPS;->getLat()D

    move-result-wide p1

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/util/GPS;->getLon()D

    move-result-wide v0

    .line 78
    invoke-static {p1, p2, v0, v1}, Lcom/keephealth/android/util/GPSConverterUtils;->gcj_To_Gps84(DD)Lcom/keephealth/android/util/GPS;

    move-result-object p0

    return-object p0
.end method

.method public static gcj02_To_Bd09(DD)Lcom/keephealth/android/util/GPS;
    .registers 10

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 50
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p2, v2

    add-double/2addr p0, p2

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p2, v2

    .line 52
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    const-wide p0, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p0

    .line 53
    new-instance p0, Lcom/keephealth/android/util/GPS;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object p0
.end method

.method public static gcj_To_Gps84(DD)Lcom/keephealth/android/util/GPS;
    .registers 9

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/keephealth/android/util/GPSConverterUtils;->transform(DD)Lcom/keephealth/android/util/GPS;

    move-result-object v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v1

    .line 36
    invoke-virtual {v0}, Lcom/keephealth/android/util/GPS;->getLon()D

    move-result-wide v3

    sub-double/2addr p2, v3

    mul-double/2addr p0, v1

    .line 37
    invoke-virtual {v0}, Lcom/keephealth/android/util/GPS;->getLat()D

    move-result-wide v0

    sub-double/2addr p0, v0

    .line 38
    new-instance v0, Lcom/keephealth/android/util/GPS;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object v0
.end method

.method public static gps84_To_Gcj02(DD)Lcom/keephealth/android/util/GPS;
    .registers 22

    .line 15
    invoke-static/range {p0 .. p3}, Lcom/keephealth/android/util/GPSConverterUtils;->outOfChina(DD)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-wide v0, 0x405a400000000000L    # 105.0

    sub-double v0, p2, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    sub-double v2, p0, v2

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/GPSConverterUtils;->transformLat(DD)D

    move-result-wide v4

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/GPSConverterUtils;->transformLon(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v6, p0, v2

    .line 20
    sget-wide v8, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v6, v8

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 22
    sget-wide v10, Lcom/keephealth/android/util/GPSConverterUtils;->ee:D

    mul-double/2addr v10, v8

    mul-double/2addr v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, v10

    .line 23
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v4, v2

    .line 24
    sget-wide v14, Lcom/keephealth/android/util/GPSConverterUtils;->a:D

    sget-wide v16, Lcom/keephealth/android/util/GPSConverterUtils;->ee:D

    sub-double v8, v8, v16

    mul-double/2addr v8, v14

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sget-wide v10, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v8, v10

    div-double/2addr v4, v8

    mul-double/2addr v0, v2

    div-double/2addr v14, v12

    .line 25
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v14, v2

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v14, v2

    div-double/2addr v0, v14

    add-double v2, p0, v4

    add-double v0, p2, v0

    .line 28
    new-instance v4, Lcom/keephealth/android/util/GPS;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object v4
.end method

.method public static outOfChina(DD)Z
    .registers 8

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, p2, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_29

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double p2, p2, v2

    if-lez p2, :cond_14

    goto :goto_29

    :cond_14
    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double p2, p0, p2

    if-ltz p2, :cond_29

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double p0, p0, p2

    if-lez p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public static transform(DD)Lcom/keephealth/android/util/GPS;
    .registers 26

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 99
    invoke-static/range {p0 .. p3}, Lcom/keephealth/android/util/GPSConverterUtils;->outOfChina(DD)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 100
    new-instance v4, Lcom/keephealth/android/util/GPS;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object v4

    :cond_10
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, v2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, v0, v6

    .line 102
    invoke-static {v4, v5, v6, v7}, Lcom/keephealth/android/util/GPSConverterUtils;->transformLat(DD)D

    move-result-wide v8

    .line 103
    invoke-static {v4, v5, v6, v7}, Lcom/keephealth/android/util/GPSConverterUtils;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, v0, v6

    .line 104
    sget-wide v12, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v10, v12

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 106
    sget-wide v14, Lcom/keephealth/android/util/GPSConverterUtils;->ee:D

    mul-double/2addr v14, v12

    mul-double/2addr v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 107
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double/2addr v8, v6

    .line 108
    sget-wide v18, Lcom/keephealth/android/util/GPSConverterUtils;->a:D

    sget-wide v20, Lcom/keephealth/android/util/GPSConverterUtils;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v12, v14

    div-double/2addr v8, v12

    mul-double/2addr v4, v6

    div-double v18, v18, v16

    .line 109
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double/2addr v0, v8

    add-double/2addr v2, v4

    .line 112
    new-instance v4, Lcom/keephealth/android/util/GPS;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/keephealth/android/util/GPS;-><init>(DD)V

    return-object v4
.end method

.method public static transformLat(DD)D
    .registers 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double/2addr v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, p0

    mul-double/2addr v10, p2

    add-double/2addr v4, v10

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr p0, v8

    .line 118
    sget-wide v8, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double/2addr p0, v8

    sget-wide v10, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr p0, v2

    mul-double/2addr p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 119
    sget-wide p0, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double/2addr v2, v8

    add-double/2addr p0, v2

    mul-double/2addr p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 120
    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double/2addr p0, v2

    sget-wide v2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double/2addr p2, v2

    add-double/2addr p0, p2

    mul-double/2addr p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public static transformLon(DD)D
    .registers 16

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double/2addr v8, p2

    add-double/2addr v2, v8

    .line 127
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double/2addr p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double/2addr p2, p0

    .line 128
    sget-wide v6, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr p2, v8

    mul-double/2addr p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 129
    sget-wide p2, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double/2addr v6, v10

    add-double/2addr p2, v6

    mul-double/2addr p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 130
    sget-wide v6, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double/2addr p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/keephealth/android/util/GPSConverterUtils;->pi:D

    mul-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    add-double/2addr p2, p0

    mul-double/2addr p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method
