.class public Lcom/keephealth/android/views/StretchScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "StretchScrollView.java"


# instance fields
.field private innerView:Landroid/view/View;

.field private mLastY:F

.field private normal:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    return-void
.end method

.method private initView()V
    .registers 3

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StretchScrollView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StretchScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 40
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StretchScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    :cond_11
    return-void
.end method


# virtual methods
.method public isNeedTranslate()Z
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/StretchScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 96
    invoke-virtual {p0}, Lcom/keephealth/android/views/StretchScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_16

    if-ne v1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/views/StretchScrollView;->initView()V

    .line 29
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_66

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_78

    .line 56
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 58
    iget v3, p0, Lcom/keephealth/android/views/StretchScrollView;->mLastY:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/views/StretchScrollView;->isNeedTranslate()Z

    move-result v4

    if-eqz v4, :cond_63

    iget v4, p0, Lcom/keephealth/android/views/StretchScrollView;->mLastY:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_63

    .line 63
    iget-object v2, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 65
    iget-object v2, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    :cond_45
    iget-object v2, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    div-int/2addr v3, v1

    sub-int/2addr v5, v3

    iget-object v1, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v3

    .line 68
    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 71
    :cond_63
    iput v0, p0, Lcom/keephealth/android/views/StretchScrollView;->mLastY:F

    goto :goto_78

    .line 49
    :cond_66
    iget-object v0, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 50
    invoke-virtual {p0}, Lcom/keephealth/android/views/StretchScrollView;->planAnimation()V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 52
    iput v2, p0, Lcom/keephealth/android/views/StretchScrollView;->mLastY:F

    .line 74
    :cond_78
    :goto_78
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public planAnimation()V
    .registers 6

    .line 83
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    iget-object v1, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/StretchScrollView;->innerView:Landroid/view/View;

    iget-object v1, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/keephealth/android/views/StretchScrollView;->normal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
