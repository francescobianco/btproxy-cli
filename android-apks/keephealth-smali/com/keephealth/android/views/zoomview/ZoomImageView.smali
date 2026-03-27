.class public Lcom/keephealth/android/views/zoomview/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;,
        Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;,
        Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;,
        Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;,
        Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;,
        Lcom/keephealth/android/views/zoomview/ZoomImageView$ScrollerProxy;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1


# instance fields
.field private allowParentInterceptOnEdge:Z

.field private final baseMatrix:Landroid/graphics/Matrix;

.field private bottom:I

.field private currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

.field private final displayRect:Landroid/graphics/RectF;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private isZoomEnabled:Z

.field private left:I

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private final matrixValues:[F

.field private maxScale:F

.field private midScale:F

.field private minScale:F

.field private multiGestureDetector:Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

.field private photoTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;

.field private right:I

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private scrollEdge:I

.field private final suppMatrix:Landroid/graphics/Matrix;

.field private top:I

.field private viewTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 442
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 446
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 410
    iput p2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    const/high16 p2, 0x3fe00000    # 1.75f

    .line 411
    iput p2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 412
    iput p2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    const/4 p2, 0x1

    .line 414
    iput-boolean p2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->allowParentInterceptOnEdge:Z

    .line 419
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 420
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 421
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    .line 422
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    const/16 p3, 0x9

    .line 423
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->matrixValues:[F

    const/4 p3, 0x2

    .line 432
    iput p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    .line 435
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 448
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 450
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    new-instance p3, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

    invoke-direct {p3, p0, p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->multiGestureDetector:Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

    .line 454
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->setIsZoomEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->viewTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/views/zoomview/ZoomImageView;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->allowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->multiGestureDetector:Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/zoomview/ZoomImageView;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/views/zoomview/ZoomImageView;Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;)Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/zoomview/ZoomImageView;)F
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/zoomview/ZoomImageView;)Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->photoTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;

    return-object p0
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    .line 754
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkMatrixBounds()V

    .line 755
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private checkMatrixBounds()V
    .registers 11

    .line 759
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 764
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 767
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gtz v4, :cond_3c

    .line 769
    sget-object v4, Lcom/keephealth/android/views/zoomview/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v4, v4, v9

    if-eq v4, v7, :cond_39

    if-eq v4, v6, :cond_34

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    .line 777
    iget v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_37

    :cond_34
    sub-float/2addr v3, v1

    .line 774
    iget v1, v0, Landroid/graphics/RectF;->top:F

    :goto_37
    sub-float/2addr v3, v1

    goto :goto_50

    .line 771
    :cond_39
    iget v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_44

    .line 780
    :cond_3c
    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_46

    .line 781
    iget v1, v0, Landroid/graphics/RectF;->top:F

    :goto_44
    neg-float v3, v1

    goto :goto_50

    .line 782
    :cond_46
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4f

    .line 783
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_37

    :cond_4f
    move v3, v8

    .line 786
    :goto_50
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v4, v2, v1

    if-gtz v4, :cond_79

    .line 788
    sget-object v4, Lcom/keephealth/android/views/zoomview/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v4, v4, v8

    if-eq v4, v7, :cond_72

    if-eq v4, v6, :cond_6c

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 796
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_6f

    :cond_6c
    sub-float/2addr v1, v2

    .line 793
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_6f
    sub-float/2addr v1, v0

    move v8, v1

    goto :goto_76

    .line 790
    :cond_72
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v8, v0

    .line 799
    :goto_76
    iput v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    goto :goto_96

    .line 800
    :cond_79
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_86

    const/4 v1, 0x0

    .line 801
    iput v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    .line 802
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v8, v0

    goto :goto_96

    .line 803
    :cond_86
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_93

    .line 804
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v8, v1, v0

    .line 805
    iput v7, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    goto :goto_96

    :cond_93
    const/4 v0, -0x1

    .line 807
    iput v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scrollEdge:I

    .line 811
    :goto_96
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private checkZoomLevels(FFF)V
    .registers 4

    cmpl-float p1, p1, p2

    if-gez p1, :cond_11

    cmpl-float p1, p2, p3

    if-gez p1, :cond_9

    return-void

    .line 920
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MidZoom should be less than MaxZoom"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 918
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MinZoom should be less than MidZoom"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    .line 822
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 824
    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 825
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 826
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->displayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 910
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetMatrix()V
    .registers 2

    .line 836
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 837
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 838
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkMatrixBounds()V

    return-void
.end method

.method private final update()V
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_11

    .line 743
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 744
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    .line 746
    :cond_11
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->resetMatrix()V

    :goto_14
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 852
    :cond_3
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 853
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 854
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 855
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 857
    iget-object v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 862
    iget-object v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_33

    .line 863
    iget-object v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_b0

    .line 866
    :cond_33
    iget-object v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_4e

    .line 867
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 868
    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 869
    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b0

    .line 872
    :cond_4e
    iget-object v5, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_6f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 873
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 874
    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 875
    iget-object v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b0

    .line 879
    :cond_6f
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 880
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 882
    sget-object v0, Lcom/keephealth/android/views/zoomview/ZoomImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_99

    const/4 v1, 0x4

    if-eq v0, v1, :cond_91

    goto :goto_b0

    .line 896
    :cond_91
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_b0

    .line 884
    :cond_99
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_b0

    .line 892
    :cond_a1
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_b0

    .line 888
    :cond_a9
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 904
    :goto_b0
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->resetMatrix()V

    return-void
.end method


# virtual methods
.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 737
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 738
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 465
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkMatrixBounds()V

    .line 466
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .registers 2

    .line 508
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    return v0
.end method

.method public getMidScale()F
    .registers 2

    .line 491
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    return v0
.end method

.method public getMinScale()F
    .registers 2

    .line 474
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    return v0
.end method

.method public final getScale()F
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->suppMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 527
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final isZoomEnabled()Z
    .registers 2

    .line 565
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->isZoomEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 722
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 724
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 730
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 732
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 6

    .line 648
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->isZoomEnabled:Z

    if-eqz v0, :cond_33

    .line 649
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getTop()I

    move-result v0

    .line 650
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getRight()I

    move-result v1

    .line 651
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getBottom()I

    move-result v2

    .line 652
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getLeft()I

    move-result v3

    .line 661
    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->top:I

    if-ne v0, v4, :cond_24

    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->bottom:I

    if-ne v2, v4, :cond_24

    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->left:I

    if-ne v3, v4, :cond_24

    iget v4, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->right:I

    if-eq v1, v4, :cond_33

    .line 664
    :cond_24
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iput v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->top:I

    .line 668
    iput v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->right:I

    .line 669
    iput v2, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->bottom:I

    .line 670
    iput v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->left:I

    :cond_33
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 679
    iget-boolean v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->isZoomEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 680
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    if-eq v0, v2, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    goto :goto_53

    .line 700
    :cond_12
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getScale()F

    move-result v0

    iget v3, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_53

    .line 701
    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 703
    new-instance v1, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->getScale()F

    move-result v5

    iget v6, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 704
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/keephealth/android/views/zoomview/ZoomImageView$AnimatedZoomRunnable;-><init>(Lcom/keephealth/android/views/zoomview/ZoomImageView;FFFF)V

    .line 703
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    goto :goto_53

    .line 684
    :cond_3c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 690
    :cond_49
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    if-eqz p1, :cond_53

    .line 691
    invoke-virtual {p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;->cancelFling()V

    const/4 p1, 0x0

    .line 692
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->currentFlingRunnable:Lcom/keephealth/android/views/zoomview/ZoomImageView$FlingRunnable;

    .line 712
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->multiGestureDetector:Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;

    if-eqz p1, :cond_5e

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/zoomview/ZoomImageView$MultiGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5e

    move v1, v2

    :cond_5e
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 2

    .line 585
    iput-boolean p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->allowParentInterceptOnEdge:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 590
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 596
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 602
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 608
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 609
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    return-void
.end method

.method public final setIsZoomEnabled(Z)V
    .registers 2

    .line 576
    iput-boolean p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->isZoomEnabled:Z

    .line 577
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    return-void
.end method

.method public setMaxScale(F)V
    .registers 4

    .line 516
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    invoke-direct {p0, v0, v1, p1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkZoomLevels(FFF)V

    .line 517
    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    return-void
.end method

.method public setMidScale(F)V
    .registers 4

    .line 499
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    invoke-direct {p0, v0, p1, v1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkZoomLevels(FFF)V

    .line 500
    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    return-void
.end method

.method public setMinScale(F)V
    .registers 4

    .line 482
    iget v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->midScale:F

    iget v1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->maxScale:F

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->checkZoomLevels(FFF)V

    .line 483
    iput p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->minScale:F

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final setOnPhotoTapListener(Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->photoTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnPhotoTapListener;

    return-void
.end method

.method public final setOnViewTapListener(Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->viewTapListener:Lcom/keephealth/android/views/zoomview/ZoomImageView$OnViewTapListener;

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    .line 548
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_e

    .line 553
    iget-object v0, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_d

    .line 554
    iput-object p1, p0, Lcom/keephealth/android/views/zoomview/ZoomImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 555
    invoke-direct {p0}, Lcom/keephealth/android/views/zoomview/ZoomImageView;->update()V

    :cond_d
    return-void

    .line 549
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported in ZoomImageView"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
