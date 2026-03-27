.class public Lcom/keephealth/android/util/image/CorpToView;
.super Landroid/widget/ImageView;
.source "CorpToView.java"


# static fields
.field private static final BORDER_CORNER_LENGTH:F = 30.0f

.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final POS_BOTTOM:I = 0x5

.field private static final POS_BOTTOM_LEFT:I = 0x2

.field private static final POS_BOTTOM_RIGHT:I = 0x3

.field private static final POS_CENTER:I = 0x8

.field private static final POS_LEFT:I = 0x6

.field private static final POS_OUT_OF_CLIP_RECT:I = -0x1

.field private static final POS_RIGHT:I = 0x7

.field private static final POS_TOP:I = 0x4

.field private static final POS_TOP_LEFT:I = 0x0

.field private static final POS_TOP_RIGHT:I = 0x1

.field private static final TOUCH_FIELD:F = 10.0f

.field private static final ZOOM:I = 0x2


# instance fields
.field private centerPointForZoom:Landroid/graphics/PointF;

.field private clipRect:Landroid/graphics/RectF;

.field private clipRectBorderPaint:Landroid/graphics/Paint;

.field private clipRectCornerPaint:Landroid/graphics/Paint;

.field private clipRectGuidelinePaint:Landroid/graphics/Paint;

.field private currentMatrix:Landroid/graphics/Matrix;

.field private isClip:Z

.field private isFirstDraw:Z

.field private isFirstDrawBitmap:Z

.field private lastPoint:Landroid/graphics/PointF;

.field private mBmpToCrop:Landroid/graphics/Bitmap;

.field private mDegree:F

.field private maskLayoutPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private mood:I

.field private proportion:D

.field private rotate:F

.field private startPoint:Landroid/graphics/PointF;

.field private touchPosition:I

.field private twoFingerDistanceBeforeZoom:F

.field private viewRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    .line 71
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->startPoint:Landroid/graphics/PointF;

    .line 78
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    .line 127
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDraw:Z

    .line 133
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDrawBitmap:Z

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/keephealth/android/util/image/CorpToView;->rotate:F

    .line 137
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->startPoint:Landroid/graphics/PointF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    .line 127
    iput-boolean p2, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    const/4 p2, 0x1

    .line 132
    iput-boolean p2, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDraw:Z

    .line 133
    iput-boolean p2, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDrawBitmap:Z

    const/4 p2, 0x0

    .line 311
    iput p2, p0, Lcom/keephealth/android/util/image/CorpToView;->rotate:F

    .line 142
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calRotation(Landroid/view/MotionEvent;)F
    .registers 7

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 316
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private calculateCenterPointForZoom(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 6

    const/4 v0, 0x1

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    .line 493
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private calculateFingersSlideDistance(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 504
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private changeClipRectBottom(F)V
    .registers 5

    .line 699
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 700
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 701
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->preventClipRectBottomOverView()V

    return-void
.end method

.method private changeClipRectLeft(F)V
    .registers 5

    .line 632
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 633
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 634
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->preventClipRectLeftOverView()V

    return-void
.end method

.method private changeClipRectRight(F)V
    .registers 5

    .line 688
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 689
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 690
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->preventClipRectRightOverView()V

    return-void
.end method

.method private changeClipRectTop(F)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    sub-float/2addr v0, v1

    const/high16 v1, 0x44700000    # 960.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    .line 676
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p1, v1, p1

    .line 678
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 679
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 680
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->preventClipRectTopOverView()V

    return-void
.end method

.method private detectTouchPosition(FF)I
    .registers 6

    .line 591
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_29

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_29

    const/16 p1, 0x8

    return p1

    .line 595
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_65

    .line 596
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_51

    const/4 p1, 0x4

    return p1

    .line 598
    :cond_51
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_65

    const/4 p1, 0x5

    return p1

    .line 602
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9f

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9f

    .line 603
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8b

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8b

    const/4 p1, 0x6

    return p1

    .line 605
    :cond_8b
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9f

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9f

    const/4 p1, 0x7

    return p1

    .line 610
    :cond_9f
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d9

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d9

    .line 611
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_c5

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c5

    const/4 p1, 0x0

    return p1

    .line 613
    :cond_c5
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_d9

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_d9

    const/4 p1, 0x2

    return p1

    .line 617
    :cond_d9
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_113

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_113

    .line 618
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_ff

    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_ff

    const/4 p1, 0x1

    return p1

    .line 620
    :cond_ff
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_113

    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_113

    const/4 p1, 0x3

    return p1

    :cond_113
    const/4 p1, -0x1

    return p1
.end method

.method private draw4RoundCorner(Landroid/graphics/Canvas;)V
    .registers 6

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectCornerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 581
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGuideLines(Landroid/graphics/Canvas;)V
    .registers 11

    .line 557
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 559
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v6, v2, v0

    .line 560
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 561
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v6, v2, v0

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 565
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    .line 567
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v6, v1, v0

    .line 568
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 569
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    .line 570
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawMaskLayer(Landroid/graphics/Canvas;)V
    .registers 13

    .line 527
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 528
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x0

    .line 531
    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 532
    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 533
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 536
    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 537
    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 538
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 541
    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 542
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 543
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 546
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 547
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 548
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectBorderPaint:Landroid/graphics/Paint;

    .line 155
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectBorderPaint:Landroid/graphics/Paint;

    const-string v0, "#AAFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    .line 161
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectGuidelinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectCornerPaint:Landroid/graphics/Paint;

    .line 166
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    .line 170
    const-string v0, "#AA000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->maskLayoutPaint:Landroid/graphics/Paint;

    const/16 v0, 0x96

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private moveImage(Landroid/view/MotionEvent;)V
    .registers 5

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->startPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->startPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 437
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 438
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private moveOrChangeClipRect(Landroid/view/MotionEvent;)V
    .registers 4

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 484
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/image/CorpToView;->moveWholeClipRect(FF)V

    return-void
.end method

.method private moveWholeClipRect(FF)V
    .registers 7

    .line 644
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 647
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_27

    .line 650
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 653
    :cond_27
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_49

    .line 654
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 657
    :cond_49
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_64

    .line 659
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 662
    :cond_64
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr p2, v2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_86

    .line 663
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr p2, v2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 666
    :cond_86
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 667
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private preventClipRectBottomOverView()V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 747
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 750
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 751
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_27
    return-void
.end method

.method private preventClipRectLeftOverView()V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 709
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 712
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 713
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_27
    return-void
.end method

.method private preventClipRectRightOverView()V
    .registers 4

    .line 734
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 735
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 737
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 738
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_27
    return-void
.end method

.method private preventClipRectTopOverView()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 722
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 725
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 726
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_27
    return-void
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 180
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 181
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    .line 182
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private setClipRectDefaultPosition()V
    .registers 7

    .line 362
    iget-wide v0, p0, Lcom/keephealth/android/util/image/CorpToView;->proportion:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1e

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    iget-wide v4, p0, Lcom/keephealth/android/util/image/CorpToView;->proportion:D

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 364
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v1

    goto :goto_33

    .line 366
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    .line 367
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    float-to-double v1, v2

    iget-wide v3, p0, Lcom/keephealth/android/util/image/CorpToView;->proportion:D

    mul-double/2addr v1, v3

    double-to-float v2, v1

    .line 370
    :goto_33
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    .line 371
    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 372
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 373
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setPictureDefaultPosition()V
    .registers 1

    return-void
.end method

.method private setViewRectF()V
    .registers 3

    .line 348
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 349
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->viewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public cropProportion(D)V
    .registers 3

    .line 331
    iput-wide p1, p0, Lcom/keephealth/android/util/image/CorpToView;->proportion:D

    return-void
.end method

.method public getClipRectImage()Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    .line 401
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->destroyDrawingCache()V

    .line 402
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/image/CorpToView;->setDrawingCacheEnabled(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->buildDrawingCache()V

    .line 404
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 405
    iput-boolean v1, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    .line 406
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 193
    iget-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDraw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 194
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->setViewRectF()V

    .line 195
    invoke-direct {p0}, Lcom/keephealth/android/util/image/CorpToView;->setClipRectDefaultPosition()V

    .line 197
    iput-boolean v1, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDraw:Z

    .line 201
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d5

    .line 202
    iget-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDrawBitmap:Z

    if-eqz v0, :cond_aa

    .line 203
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 204
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 205
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 207
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 209
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0}, Lcom/keephealth/android/util/image/CorpToView;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    .line 210
    new-instance v2, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 212
    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 213
    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    const/4 v5, 0x0

    if-gez v4, :cond_8c

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_a8

    .line 215
    :cond_8c
    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_a8

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 219
    :cond_a8
    :goto_a8
    iput-boolean v1, p0, Lcom/keephealth/android/util/image/CorpToView;->isFirstDrawBitmap:Z

    .line 224
    :cond_aa
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 225
    iget-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    if-nez v0, :cond_d5

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRectBorderPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->draw4RoundCorner(Landroid/graphics/Canvas;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->drawGuideLines(Landroid/graphics/Canvas;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->drawMaskLayer(Landroid/graphics/Canvas;)V

    :cond_d5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_114

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_b6

    const/high16 v4, 0x41200000    # 10.0f

    if-eq v0, v3, :cond_3e

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1d

    const/4 p1, 0x6

    if-eq v0, p1, :cond_19

    goto/16 :goto_14c

    .line 293
    :cond_19
    iput v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    goto/16 :goto_14c

    .line 297
    :cond_1d
    iput v3, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    .line 298
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->calculateFingersSlideDistance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/image/CorpToView;->twoFingerDistanceBeforeZoom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_36

    .line 300
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->calculateCenterPointForZoom(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->centerPointForZoom:Landroid/graphics/PointF;

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 303
    :cond_36
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->calRotation(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/image/CorpToView;->mDegree:F

    goto/16 :goto_14c

    .line 258
    :cond_3e
    iget v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    if-ne v0, v1, :cond_46

    .line 264
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->moveImage(Landroid/view/MotionEvent;)V

    goto :goto_a7

    :cond_46
    if-ne v0, v3, :cond_a7

    .line 266
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->calculateFingersSlideDistance(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v2, v0, v4

    if-lez v2, :cond_8f

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mBmpToCrop:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 270
    iget v2, p0, Lcom/keephealth/android/util/image/CorpToView;->twoFingerDistanceBeforeZoom:F

    div-float/2addr v0, v2

    .line 271
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 272
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->centerPointForZoom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/keephealth/android/util/image/CorpToView;->centerPointForZoom:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 274
    :cond_8f
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/image/CorpToView;->calRotation(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/image/CorpToView;->rotate:F

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 278
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_14c

    .line 282
    :cond_b6
    iput v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_d0

    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_14c

    .line 284
    :cond_d0
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 285
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 286
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 287
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 288
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 289
    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, p1, p1, v3, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_14c

    .line 243
    :cond_114
    iput v1, p0, Lcom/keephealth/android/util/image/CorpToView;->mood:I

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 248
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/image/CorpToView;->detectTouchPosition(FF)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/image/CorpToView;->touchPosition:I

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->currentMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 307
    :cond_14c
    :goto_14c
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->invalidate()V

    return v1
.end method

.method public rotate90()V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 344
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->invalidate()V

    return-void
.end method

.method public showCilpRectImage()V
    .registers 6

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    .line 416
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->destroyDrawingCache()V

    .line 417
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/image/CorpToView;->setDrawingCacheEnabled(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->buildDrawingCache()V

    .line 419
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/CorpToView;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    .line 422
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/CorpToView;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/keephealth/android/util/image/CorpToView;->isClip:Z

    .line 424
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->invalidate()V

    return-void
.end method

.method public showImage(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    .line 336
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->invalidate()V

    return-void
.end method

.method public showImage(Ljava/lang/String;)V
    .registers 2

    .line 326
    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/image/CorpToView;->mBmpToCrop:Landroid/graphics/Bitmap;

    .line 327
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/CorpToView;->invalidate()V

    return-void
.end method
