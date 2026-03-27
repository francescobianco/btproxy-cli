.class public Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 14

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 56
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 59
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_47

    const p2, 0x7f0800f5

    .line 75
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->setBackgroundResource(I)V

    const p2, 0x7f01002c

    const v0, 0x7f010030

    goto :goto_77

    :cond_47
    const p2, 0x7f0800f4

    .line 63
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 66
    iget-object p2, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p2, v3, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const p2, 0x7f01002b

    const v0, 0x7f01002f

    .line 79
    :goto_77
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    .line 80
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 86
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x96

    .line 89
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 92
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 95
    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final isVisible()Z
    .registers 5

    .line 101
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 103
    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 106
    :cond_f
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_f

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    const/16 p1, 0x8

    .line 122
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_17

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_17

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->setVisibility(I)V

    .line 127
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->setVisibility(I)V

    return-void
.end method

.method public pullToRefresh()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public releaseToRefresh()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
