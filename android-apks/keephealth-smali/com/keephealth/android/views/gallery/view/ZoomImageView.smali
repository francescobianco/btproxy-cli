.class public Lcom/keephealth/android/views/gallery/view/ZoomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;
    }
.end annotation


# instance fields
.field private SCALE_MAX:F

.field private SCALE_MID:F

.field private SCALE_MIN:F

.field private isAutoScale:Z

.field private isCanDrag:Z

.field private isFirst:Z

.field private isInit:Z

.field private lastPointerCount:I

.field private mCropHeight:I

.field private mCropWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastX:F

.field private mLastY:F

.field private final mMatrixValues:[F

.field private mOffset:I

.field private mScale:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mVOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    .line 32
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 34
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MAX:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 35
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MID:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    .line 38
    iput p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isFirst:Z

    const/16 p2, 0x9

    .line 41
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mMatrixValues:[F

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 44
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 63
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView$1;-><init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 83
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/gallery/view/ZoomImageView;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)F
    .registers 1

    .line 24
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MID:F

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)F
    .registers 1

    .line 24
    iget p0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/gallery/view/ZoomImageView;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .registers 11

    .line 328
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v1

    .line 333
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v2

    .line 335
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v3, v5

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-double v7, v7

    cmpl-double v3, v3, v7

    const/4 v4, 0x0

    if-ltz v3, :cond_47

    .line 336
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_34

    .line 337
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    goto :goto_35

    :cond_34
    move v3, v4

    .line 339
    :goto_35
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    sub-int v9, v1, v8

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_48

    sub-int/2addr v1, v8

    int-to-float v1, v1

    .line 340
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v1, v3

    goto :goto_48

    :cond_47
    move v3, v4

    .line 343
    :cond_48
    :goto_48
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v7, v1

    add-double/2addr v7, v5

    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-double v5, v1

    cmpl-double v1, v7, v5

    if-ltz v1, :cond_7a

    .line 344
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_69

    .line 345
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 347
    :cond_69
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    sub-int v6, v2, v5

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7a

    sub-int/2addr v2, v5

    int-to-float v1, v2

    .line 348
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v1, v0

    .line 351
    :cond_7a
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 152
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 155
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 156
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

    .line 356
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method public cropBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .line 318
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 321
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->draw(Landroid/graphics/Canvas;)V

    .line 322
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    .line 323
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 324
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 322
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getScale()F
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mMatrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 236
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 237
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 243
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 245
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 10

    .line 269
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isFirst:Z

    if-eqz v0, :cond_101

    .line 270
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 273
    :cond_b
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    .line 275
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v2

    .line 278
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 281
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_54

    .line 282
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    if-le v0, v4, :cond_54

    .line 283
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v3

    div-float/2addr v4, v6

    goto :goto_55

    :cond_54
    move v4, v5

    .line 286
    :goto_55
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_79

    .line 287
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_79

    .line 288
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v0

    div-float/2addr v4, v6

    .line 291
    :cond_79
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_af

    .line 292
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_af

    .line 293
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v4, v6

    int-to-float v6, v3

    div-float/2addr v4, v6

    .line 295
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v0

    div-float/2addr v6, v7

    .line 296
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 299
    :cond_af
    iget v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 300
    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v2, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    .line 302
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_cd

    .line 303
    iput v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    .line 305
    :cond_cd
    iput v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    .line 306
    iput v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MID:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v4

    .line 307
    iput v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MAX:F

    .line 308
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 310
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 309
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isFirst:Z

    :cond_101
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 127
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getScale()F

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 130
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_10

    return v3

    .line 132
    :cond_10
    iget v2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MAX:F

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1c

    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_28

    :cond_1c
    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4f

    iget v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4f

    :cond_28
    mul-float v4, v1, v0

    .line 134
    iget v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->SCALE_MIN:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_32

    div-float v1, v5, v0

    :cond_32
    mul-float v4, v1, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3a

    div-float v1, v2, v0

    .line 141
    :cond_3a
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 142
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 141
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 143
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->checkBorder()V

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_4f
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

    .line 173
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    .line 175
    :cond_a
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_18
    if-ge v3, p1, :cond_27

    .line 180
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 181
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 186
    iget v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->lastPointerCount:I

    if-eq p1, v3, :cond_34

    .line 187
    iput-boolean v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isCanDrag:Z

    .line 188
    iput v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastX:F

    .line 189
    iput v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastY:F

    .line 192
    :cond_34
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->lastPointerCount:I

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_9a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_43

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9a

    goto :goto_9c

    .line 195
    :cond_43
    iget p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastX:F

    sub-float p1, v4, p1

    .line 196
    iget v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastY:F

    sub-float v1, v5, v1

    .line 198
    iget-boolean v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isCanDrag:Z

    if-nez v3, :cond_55

    .line 199
    invoke-direct {p0, p1, v1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isCanDrag(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isCanDrag:Z

    .line 201
    :cond_55
    iget-boolean v3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isCanDrag:Z

    if-eqz v3, :cond_95

    .line 202
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 204
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    mul-int/2addr v8, p2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_75

    move p1, v2

    .line 208
    :cond_75
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    mul-int/2addr v7, p2

    sub-int/2addr v6, v7

    int-to-float p2, v6

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_87

    goto :goto_88

    :cond_87
    move v2, v1

    .line 211
    :goto_88
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 212
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->checkBorder()V

    .line 213
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 216
    :cond_95
    iput v4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastX:F

    .line 217
    iput v5, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mLastY:F

    goto :goto_9c

    .line 222
    :cond_9a
    iput v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->lastPointerCount:I

    :goto_9c
    return v0
.end method

.method public setCropHeight(I)V
    .registers 2

    .line 372
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mCropHeight:I

    return-void
.end method

.method public setCropWidth(I)V
    .registers 2

    .line 368
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mCropWidth:I

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 9

    .line 250
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 251
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_11

    return v1

    .line 254
    :cond_11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 255
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 256
    iget p4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mCropWidth:I

    if-gt p3, p4, :cond_4f

    iget p4, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mCropHeight:I

    if-le p2, p4, :cond_2a

    goto :goto_4f

    .line 257
    :cond_2a
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getWidth()I

    move-result p2

    .line 258
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->getHeight()I

    move-result p4

    int-to-float v0, p2

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 259
    iput v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    const/4 p3, 0x1

    .line 260
    iput-boolean p3, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isInit:Z

    .line 261
    new-instance p3, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;

    iget v0, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mScale:F

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-direct {p3, p0, v0, p2, p4}, Lcom/keephealth/android/views/gallery/view/ZoomImageView$ScaleRunnable;-><init>(Lcom/keephealth/android/views/gallery/view/ZoomImageView;FFF)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, p3, v2, v3}, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    iput-boolean v1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->isAutoScale:Z

    return p1

    :cond_4f
    :goto_4f
    return v1
.end method

.method public setHOffset(I)V
    .registers 2

    .line 360
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mOffset:I

    return-void
.end method

.method public setVOffset(I)V
    .registers 2

    .line 364
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/ZoomImageView;->mVOffset:I

    return-void
.end method
