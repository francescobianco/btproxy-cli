.class public Lcom/keephealth/android/util/SpringScaleInterpolator;
.super Ljava/lang/Object;
.source "SpringScaleInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private factor:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/keephealth/android/util/SpringScaleInterpolator;->factor:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 9

    const/high16 v0, -0x3f000000    # -8.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/keephealth/android/util/SpringScaleInterpolator;->factor:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v2, v3

    sub-float/2addr p1, v3

    float-to-double v3, p1

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v5

    float-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    return p1
.end method
