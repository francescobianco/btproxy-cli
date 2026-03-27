.class public Lcom/keephealth/android/views/photo/ClipZoomImageView;
.super Landroid/widget/ImageView;
.source "ClipZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/photo/ClipZoomImageView$AutoScaleRunnable;
    }
.end annotation


# static fields
.field public static SCALE_MAX:F = 4.0f

.field private static SCALE_MID:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "ClipZoomImageView"


# instance fields
.field private initScale:F

.field private isAutoScale:Z

.field private isCanDrag:Z

.field private lastPointerCount:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalPadding:I

.field private mLastX:F

.field private mLastY:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mTouchSlop:I

.field private mVerticalPadding:I

.field private final matrixValues:[F

.field private once:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 40
    iput p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->once:Z

    const/16 p2, 0x9

    .line 46
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->matrixValues:[F

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 52
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 77
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView$1;-><init>(Lcom/keephealth/android/views/photo/ClipZoomImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 104
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 105
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/photo/ClipZoomImageView;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100()F
    .registers 1

    .line 27
    sget v0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MID:F

    return v0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/photo/ClipZoomImageView;)F
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/photo/ClipZoomImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/photo/ClipZoomImageView;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .registers 11

    .line 424
    invoke-direct {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v1

    .line 429
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v2

    .line 430
    sget-object v3, Lcom/keephealth/android/views/photo/ClipZoomImageView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rect.width() =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , width - 2 * mHorizontalPadding ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v5

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-double v7, v7

    cmpl-double v3, v3, v7

    const/4 v4, 0x0

    if-ltz v3, :cond_6f

    .line 437
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5c

    .line 439
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    goto :goto_5d

    :cond_5c
    move v3, v4

    .line 441
    :goto_5d
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    sub-int v9, v1, v8

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_70

    sub-int/2addr v1, v8

    int-to-float v1, v1

    .line 443
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v1, v3

    goto :goto_70

    :cond_6f
    move v3, v4

    .line 446
    :cond_70
    :goto_70
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v7, v1

    add-double/2addr v7, v5

    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-double v5, v1

    cmpl-double v1, v7, v5

    if-ltz v1, :cond_a2

    .line 448
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_91

    .line 450
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 452
    :cond_91
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    sub-int v6, v2, v5

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_a2

    sub-int/2addr v2, v5

    int-to-float v1, v2

    .line 454
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v1, v0

    .line 457
    :cond_a2
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 220
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 224
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1e
    return-object v1
.end method

.method private isCanDrag(FF)Z
    .registers 5

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 470
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mTouchSlop:I

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .registers 7

    .line 409
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 413
    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    iget v2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    .line 414
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 415
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 413
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getScale()F
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 324
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 330
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 331
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 338
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 339
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 9

    .line 354
    iget-boolean v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->once:Z

    if-eqz v0, :cond_e3

    .line 356
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 360
    :cond_b
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    .line 362
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v1

    .line 363
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v2

    .line 365
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 366
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_54

    .line 369
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_54

    .line 371
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v3

    div-float/2addr v4, v6

    goto :goto_55

    :cond_54
    move v4, v5

    .line 374
    :goto_55
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_79

    .line 375
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_79

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v0

    div-float/2addr v4, v6

    .line 380
    :cond_79
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_af

    .line 381
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_af

    .line 383
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v3

    div-float/2addr v4, v6

    .line 385
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v6, v5

    int-to-float v5, v0

    div-float/2addr v6, v5

    .line 386
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 389
    :cond_af
    iput v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    .line 390
    sput v5, Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MID:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v4

    .line 391
    sput v5, Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MAX:F

    .line 392
    iget-object v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 394
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 393
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->once:Z

    :cond_e3
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 177
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getScale()F

    move-result v0

    .line 178
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_10

    return v3

    .line 186
    :cond_10
    sget v2, Lcom/keephealth/android/views/photo/ClipZoomImageView;->SCALE_MAX:F

    cmpg-float v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_1c

    cmpl-float v4, v1, v5

    if-gtz v4, :cond_26

    :cond_1c
    iget v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4d

    cmpg-float v4, v1, v5

    if-gez v4, :cond_4d

    :cond_26
    mul-float v4, v1, v0

    .line 192
    iget v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->initScale:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_30

    div-float v1, v5, v0

    :cond_30
    mul-float v4, v1, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_38

    div-float v1, v2, v0

    .line 203
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 204
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 203
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 205
    invoke-direct {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->checkBorder()V

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_4d
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    .line 247
    :cond_a
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_18
    if-ge v3, p1, :cond_27

    .line 255
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 256
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 264
    iget v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->lastPointerCount:I

    if-eq p1, v3, :cond_34

    .line 266
    iput-boolean v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isCanDrag:Z

    .line 267
    iput v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastX:F

    .line 268
    iput v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastY:F

    .line 271
    :cond_34
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->lastPointerCount:I

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_9a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_43

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9a

    goto :goto_9c

    .line 275
    :cond_43
    iget p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastX:F

    sub-float p1, v4, p1

    .line 276
    iget v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastY:F

    sub-float v1, v5, v1

    .line 278
    iget-boolean v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isCanDrag:Z

    if-nez v3, :cond_55

    .line 280
    invoke-direct {p0, p1, v1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isCanDrag(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isCanDrag:Z

    .line 282
    :cond_55
    iget-boolean v3, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->isCanDrag:Z

    if-eqz v3, :cond_95

    .line 284
    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 287
    invoke-direct {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    mul-int/2addr v8, p2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_75

    move p1, v2

    .line 294
    :cond_75
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mVerticalPadding:I

    mul-int/2addr v7, p2

    sub-int/2addr v6, v7

    int-to-float p2, v6

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_87

    goto :goto_88

    :cond_87
    move v2, v1

    .line 298
    :goto_88
    iget-object p2, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 299
    invoke-direct {p0}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->checkBorder()V

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/photo/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 303
    :cond_95
    iput v4, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastX:F

    .line 304
    iput v5, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mLastY:F

    goto :goto_9c

    .line 309
    :cond_9a
    iput v1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->lastPointerCount:I

    :goto_9c
    return v0
.end method

.method public setHorizontalPadding(I)V
    .registers 2

    .line 475
    iput p1, p0, Lcom/keephealth/android/views/photo/ClipZoomImageView;->mHorizontalPadding:I

    return-void
.end method
