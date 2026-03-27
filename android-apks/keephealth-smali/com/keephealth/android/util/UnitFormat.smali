.class public Lcom/keephealth/android/util/UnitFormat;
.super Ljava/lang/Object;
.source "UnitFormat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cm2inch(I)[I
    .registers 5

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [I

    .line 77
    invoke-static {p0}, Lcom/keephealth/android/util/UnitFormat;->cm2inchs(I)I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    .line 78
    div-int/lit8 v2, p0, 0xc

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 79
    rem-int/lit8 p0, p0, 0xc

    aput p0, v0, v1

    return-object v0
.end method

.method public static cm2inchs(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x40228f5c    # 2.54f

    div-float/2addr p0, v0

    .line 121
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static ft2in(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static inch2cm(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x40228f5c    # 2.54f

    mul-float/2addr p0, v0

    .line 52
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static inch2cm([I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 34
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    aget v2, p0, v1

    add-int/2addr v0, v2

    aput v0, p0, v1

    int-to-float p0, v0

    const v0, 0x40228f5c    # 2.54f

    mul-float/2addr p0, v0

    .line 35
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static inch2cmNew([I)I
    .registers 3

    const/4 v0, 0x0

    .line 43
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    aget p0, p0, v1

    add-int/2addr v0, p0

    int-to-float p0, v0

    const v0, 0x40228f5c    # 2.54f

    mul-float/2addr p0, v0

    .line 44
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static inch2inch([I)I
    .registers 3

    const/4 v0, 0x0

    .line 56
    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x1

    aget p0, p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static inch2inch(I)[I
    .registers 2

    .line 60
    div-int/lit8 v0, p0, 0xc

    rem-int/lit8 p0, p0, 0xc

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static inchs2cm(I)I
    .registers 2

    int-to-float p0, p0

    const v0, 0x40228f5c    # 2.54f

    mul-float/2addr p0, v0

    .line 68
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static kg2lb(F)F
    .registers 2

    const v0, 0x400d1889

    mul-float/2addr p0, v0

    .line 139
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static kg2st(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x3fc4189374bc6a7fL    # 0.157

    mul-double/2addr v0, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static km2mile(F)F
    .registers 2

    const v0, 0x3f1f122f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static lb2kg(F)F
    .registers 2

    const v0, 0x3ee83d43

    mul-float/2addr p0, v0

    .line 143
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static lb2st(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x3fb22d0e56041893L    # 0.071

    mul-double/2addr v0, v2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static mile2km(F)F
    .registers 2

    const v0, 0x3fcdfefc

    mul-float/2addr p0, v0

    return p0
.end method

.method public static newCm2inch([I)I
    .registers 3

    const/4 v0, 0x0

    .line 23
    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    add-int/2addr v0, p0

    int-to-float p0, v0

    const v0, 0x40411a7c

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static newInch2cm([I)I
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/keephealth/android/util/UnitFormat;->inch2cm([I)I

    move-result p0

    return p0
.end method

.method public static st2kg(I)I
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x4019666666666666L    # 6.35

    mul-double/2addr v0, v2

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static st2lb(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0xe

    return p0
.end method
