.class public Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;
.super Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
.source "RotateLoadingLayout.java"


# static fields
.field static final ROTATION_ANIMATION_DURATION:I = 0x4b0


# instance fields
.field private final mHeaderImageMatrix:Landroid/graphics/Matrix;

.field private final mRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateDrawableWhilePulling:Z

.field private mRotationPivotX:F

.field private mRotationPivotY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 12

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    const/16 p1, 0xf

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p4, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 47
    iget-object p3, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 49
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 51
    sget-object p3, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x4b0

    .line 52
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p3, -0x1

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method private resetImageRotation()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_e

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .registers 2

    const v0, 0x7f0d0030

    return v0
.end method

.method public onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotationPivotX:F

    .line 60
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotationPivotY:F

    :cond_1e
    return-void
.end method

.method protected onPullImpl(F)V
    .registers 5

    .line 66
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float/2addr p1, v0

    goto :goto_17

    :cond_8
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr p1, v0

    .line 69
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 72
    :goto_17
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotationPivotX:F

    iget v2, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotationPivotY:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected pullToRefreshImpl()V
    .registers 1

    return-void
.end method

.method protected refreshingImpl()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected releaseToRefreshImpl()V
    .registers 1

    return-void
.end method

.method protected resetImpl()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 84
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/internal/RotateLoadingLayout;->resetImageRotation()V

    return-void
.end method
