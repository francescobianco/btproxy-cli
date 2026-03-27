.class public Lcom/keephealth/android/views/gallery/view/ImagePreviewView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;,
        Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;,
        Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;
    }
.end annotation


# static fields
.field private static final mMaxScale:F = 4.0f

.field private static final mMinScale:F = 0.4f


# instance fields
.field private isAutoScale:Z

.field private mAccInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mFlatDetector:Landroid/view/GestureDetector;

.field private mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private onReachBorderListener:Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;

.field private onScaleAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private onTranslateXAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private onTranslateYAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private resetScaleAnimator:Landroid/animation/ValueAnimator;

.field private resetXAnimator:Landroid/animation/ValueAnimator;

.field private resetYAnimator:Landroid/animation/ValueAnimator;

.field private scale:F

.field private translateLeft:F

.field private translateTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    .line 30
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    .line 32
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    .line 33
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->isAutoScale:Z

    .line 42
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 43
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mAccInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 44
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 66
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$ScaleListener;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 67
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;

    invoke-direct {p3, p0, v0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$FlatGestureListener;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFlatDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateLeft(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onReachBorderListener:Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/view/animation/DecelerateInterpolator;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1502(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetScaleAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;II)F
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDefaultTranslateTop(II)F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetDefaultState()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    return p1
.end method

.method static synthetic access$326(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;D)F
    .registers 5

    .line 21
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    float-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    return p1
.end method

.method static synthetic access$426(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;D)F
    .registers 5

    .line 21
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    float-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffX()F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)F
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffY()F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getExplicitTranslateTop(F)F

    move-result p0

    return p0
.end method

.method private adjustBounds(II)V
    .registers 7

    .line 303
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 305
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    .line 306
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 308
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 310
    iput v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    .line 311
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    const/4 v2, 0x0

    .line 313
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    .line 316
    iget p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDefaultTranslateTop(II)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 169
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2d
    return-void
.end method

.method private getDefaultTranslateTop(II)F
    .registers 4

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_b

    goto :goto_c

    :cond_b
    move p1, p2

    :goto_c
    return p1
.end method

.method private getDiffX()F
    .registers 5

    .line 178
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    mul-float/2addr v0, v1

    .line 179
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_e

    goto :goto_27

    .line 181
    :cond_e
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_26

    .line 182
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method private getDiffY()F
    .registers 5

    .line 190
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    mul-float/2addr v0, v1

    .line 191
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_e

    goto :goto_27

    .line 193
    :cond_e
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_26

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method private getExplicitTranslateLeft(F)F
    .registers 5

    .line 404
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_c

    move p1, v1

    :cond_c
    neg-float v1, p1

    .line 408
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1d

    .line 409
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    :cond_1d
    return p1
.end method

.method private getExplicitTranslateTop(F)F
    .registers 5

    .line 415
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_c

    move p1, v1

    :cond_c
    neg-float v1, p1

    .line 419
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1d

    .line 420
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    :cond_1d
    return p1
.end method

.method private getResetScaleAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_11

    :cond_8
    const/4 v0, 0x0

    .line 124
    new-array v0, v0, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    .line 126
    :goto_11
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mAccInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getResetXAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_11

    :cond_8
    const/4 v0, 0x0

    .line 139
    new-array v0, v0, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    .line 141
    :goto_11
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mAccInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetXAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getResetYAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_11

    :cond_8
    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    .line 156
    :goto_11
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mAccInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetYAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private resetDefaultState()V
    .registers 8

    .line 269
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_23

    .line 270
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 271
    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    new-array v6, v4, [F

    aput v5, v6, v3

    aput v1, v6, v2

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 272
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    :cond_23
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 277
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    invoke-direct {p0, v5, v6}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDefaultTranslateTop(II)F

    move-result v5

    new-array v4, v4, [F

    aput v1, v4, v3

    aput v5, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 278
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getOnScaleAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onScaleAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_5

    return-object v0

    .line 75
    :cond_5
    new-instance v0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$1;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onScaleAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method public getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onTranslateXAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_5

    return-object v0

    .line 90
    :cond_5
    new-instance v0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onTranslateXAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method public getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onTranslateYAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_5

    return-object v0

    .line 105
    :cond_5
    new-instance v0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$3;-><init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onTranslateYAnimationUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 326
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 329
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 330
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eqz v1, :cond_2d

    if-nez v2, :cond_14

    goto :goto_2d

    .line 336
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->adjustBounds(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 205
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->cancelAnimation()V

    .line 208
    :cond_9
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mFlatDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    if-eq v0, p1, :cond_19

    const/4 v1, 0x3

    if-ne v0, v1, :cond_123

    .line 212
    :cond_19
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->isAutoScale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 213
    iput-boolean v1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->isAutoScale:Z

    goto/16 :goto_123

    .line 215
    :cond_22
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    const/4 v3, 0x2

    if-gez v0, :cond_44

    .line 216
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetScaleAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 217
    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    new-array v5, v3, [F

    aput v4, v5, v1

    aput v2, v5, p1

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 218
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnScaleAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    :cond_44
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    mul-float/2addr v0, v2

    .line 222
    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 224
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffX()F

    move-result v2

    .line 225
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDiffY()F

    move-result v5

    .line 228
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    const/4 v7, 0x0

    if-ltz v6, :cond_7f

    cmpl-float v6, v2, v7

    if-eqz v6, :cond_7f

    .line 229
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 230
    iget v8, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    sub-float v9, v8, v2

    new-array v10, v3, [F

    aput v8, v10, v1

    aput v9, v10, p1

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 231
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    :cond_7f
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_a7

    cmpl-float v6, v5, v7

    if-eqz v6, :cond_a7

    .line 237
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 238
    iget v8, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    sub-float v9, v8, v5

    new-array v10, v3, [F

    aput v8, v10, v1

    aput v9, v10, p1

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 239
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    :cond_a7
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_d6

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_d6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_d6

    .line 245
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetXAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 246
    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F

    new-array v8, v3, [F

    aput v6, v8, v1

    aput v7, v8, p1

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 247
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 252
    :cond_d6
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_10e

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_10e

    cmpl-float v2, v5, v7

    if-eqz v2, :cond_10e

    .line 253
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getResetYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 254
    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateTop:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    new-array v3, v3, [F

    aput v5, v3, v1

    aput v6, v3, p1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 255
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateYAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 259
    :cond_10e
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_123

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_123

    .line 260
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->resetDefaultState()V

    :cond_123
    :goto_123
    return p1
.end method

.method protected setFrame(IIII)Z
    .registers 5

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    .line 287
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_b

    return p2

    .line 289
    :cond_b
    iget p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundWidth:I

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->mBoundHeight:I

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->scale:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_1c

    return p2

    .line 291
    :cond_1c
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->adjustBounds(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnReachBorderListener(Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->onReachBorderListener:Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;

    return-void
.end method
