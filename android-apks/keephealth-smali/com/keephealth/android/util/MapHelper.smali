.class public Lcom/keephealth/android/util/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistance(Lcom/keephealth/android/model/bean/LatLngBean;Lcom/keephealth/android/model/bean/LatLngBean;)D
    .registers 12

    .line 20
    iget-wide v0, p0, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 21
    iget-wide v4, p1, Lcom/keephealth/android/model/bean/LatLngBean;->longitude:D

    mul-double/2addr v4, v2

    .line 22
    iget-wide v6, p0, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    mul-double/2addr v6, v2

    .line 23
    iget-wide p0, p1, Lcom/keephealth/android/model/bean/LatLngBean;->latitude:D

    mul-double/2addr p0, v2

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v6, p0

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v6, p0

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static getMapSource()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
