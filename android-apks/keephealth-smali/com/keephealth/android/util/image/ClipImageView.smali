.class public Lcom/keephealth/android/util/image/ClipImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ClipImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/image/ClipImageView$AutoScaleRunnable;
    }
.end annotation


# instance fields
.field private isAutoScale:Z

.field private isCanDrag:Z

.field private lastPointerCount:I

.field private mAspectX:I

.field private mAspectY:I

.field private mClipBorder:Landroid/graphics/Rect;

.field private final mClipPadding:I

.field private mDrawCircleFlag:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitScale:F

.field private mLastX:F

.field private mLastY:F

.field private final mMaskColor:I

.field private final mMatrixValues:[F

.field private mMaxOutputWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRoundCorner:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaleMax:F

.field private mScaleMin:F

.field private mTipText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/image/ClipImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 43
    iput v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMax:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    iput v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F

    const/16 v0, 0x9

    .line 54
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMatrixValues:[F

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMaxOutputWidth:I

    .line 87
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/keephealth/android/util/image/ClipImageView$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/util/image/ClipImageView$1;-><init>(Lcom/keephealth/android/util/image/ClipImageView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 107
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 108
    invoke-virtual {p0, p0}, Lcom/keephealth/android/util/image/ClipImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 111
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    sget-object v3, Lcom/keephealth/android/R$styleable;->ClipImageView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 114
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectX:I

    const/4 p2, 0x3

    .line 115
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectY:I

    .line 116
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipPadding:I

    const/4 p2, 0x5

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mTipText:Ljava/lang/String;

    const/4 p2, 0x4

    const/high16 v3, -0x4e000000

    .line 118
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMaskColor:I

    .line 119
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mDrawCircleFlag:Z

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mRoundCorner:F

    const/4 p2, 0x6

    const/16 v0, 0x18

    .line 121
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 122
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/image/ClipImageView;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/keephealth/android/util/image/ClipImageView;->isAutoScale:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/util/image/ClipImageView;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->isAutoScale:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/image/ClipImageView;)F
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMin:F

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/image/ClipImageView;)F
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/image/ClipImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/image/ClipImageView;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->checkBorder()V

    return-void
.end method

.method private checkBorder()V
    .registers 6

    .line 471
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_3e

    .line 477
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_29

    .line 478
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_2a

    :cond_29
    move v1, v2

    .line 481
    :goto_2a
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3f

    .line 482
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 486
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_75

    .line 487
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_62

    .line 488
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 491
    :cond_62
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_75

    .line 492
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    .line 496
    :cond_75
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 232
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 235
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
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

    .line 507
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

.method private postResetImageMatrix()V
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_a

    .line 383
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->resetImageMatrix()V

    goto :goto_12

    .line 385
    :cond_a
    new-instance v0, Lcom/keephealth/android/util/image/ClipImageView$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/image/ClipImageView$2;-><init>(Lcom/keephealth/android/util/image/ClipImageView;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/image/ClipImageView;->post(Ljava/lang/Runnable;)Z

    :goto_12
    return-void
.end method

.method private updateBorder()V
    .registers 5

    .line 334
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getWidth()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getHeight()I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipPadding:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 337
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipPadding:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 338
    iget v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectX:I

    if-eqz v0, :cond_4c

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectY:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectX:I

    div-int/2addr v0, v2

    .line 340
    iget-boolean v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mDrawCircleFlag:Z

    if-eqz v2, :cond_3e

    .line 341
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 342
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 343
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4c

    .line 345
    :cond_3e
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 346
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .registers 10

    .line 441
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v1, 0x9

    .line 444
    new-array v1, v1, [F

    .line 445
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    .line 446
    aget v3, v1, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/4 v0, 0x2

    .line 447
    aget v0, v1, v0

    const/4 v4, 0x5

    .line 448
    aget v1, v1, v4

    neg-float v0, v0

    .line 450
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    neg-float v1, v1

    .line 451
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 452
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 453
    iget-object v5, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 456
    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMaxOutputWidth:I

    if-lez v3, :cond_5e

    int-to-float v6, v3

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5e

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 458
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 459
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v7, v6

    goto :goto_60

    :cond_5e
    const/4 v3, 0x0

    move-object v7, v3

    :goto_60
    float-to-int v3, v0

    float-to-int v0, v1

    float-to-int v1, v4

    float-to-int v6, v5

    const/4 v8, 0x0

    move v4, v0

    move v5, v1

    .line 462
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public drawRectangleOrCircle(Landroid/graphics/Canvas;)V
    .registers 12

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 531
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 532
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    .line 533
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 535
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 536
    iget-boolean v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mDrawCircleFlag:Z

    if-eqz v1, :cond_67

    .line 537
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 538
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 539
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 540
    invoke-virtual {v7, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_85

    .line 542
    :cond_67
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 543
    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mRoundCorner:F

    invoke-virtual {v7, v1, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_85
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 545
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getClipBorder()Landroid/graphics/Rect;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipMatrixValues()[F
    .registers 3

    const/16 v0, 0x9

    .line 519
    new-array v0, v0, [F

    .line 520
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public final getScale()F
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 324
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMatrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public ismDrawCircleFlag()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mDrawCircleFlag:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 550
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 551
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getWidth()I

    move-result v0

    .line 552
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getHeight()I

    .line 554
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMaskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 562
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 563
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/ClipImageView;->drawRectangleOrCircle(Landroid/graphics/Canvas;)V

    .line 568
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mTipText:Ljava/lang/String;

    if-eqz v1, :cond_58

    .line 569
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 571
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 572
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 573
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mTipText:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_58
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 329
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatImageView;->onLayout(ZIIII)V

    .line 330
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->updateBorder()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getScale()F

    move-result v0

    .line 195
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 197
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_10

    return v3

    .line 203
    :cond_10
    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMax:F

    cmpg-float v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_1c

    cmpl-float v4, v1, v5

    if-gtz v4, :cond_26

    :cond_1c
    iget v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4d

    cmpg-float v4, v1, v5

    if-gez v4, :cond_4d

    :cond_26
    mul-float v4, v1, v0

    .line 208
    iget v5, p0, Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_30

    div-float v1, v5, v0

    :cond_30
    mul-float v4, v1, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_38

    div-float v1, v2, v0

    .line 217
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 218
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 217
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 219
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->checkBorder()V

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

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
    .registers 10

    .line 252
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    .line 254
    :cond_a
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_18
    if-ge v3, p1, :cond_27

    .line 262
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 263
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 271
    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->lastPointerCount:I

    if-eq p1, v3, :cond_34

    .line 272
    iput-boolean v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->isCanDrag:Z

    .line 273
    iput v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastX:F

    .line 274
    iput v5, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastY:F

    .line 277
    :cond_34
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->lastPointerCount:I

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_96

    const/4 p2, 0x2

    if-eq p1, p2, :cond_43

    const/4 p2, 0x3

    if-eq p1, p2, :cond_96

    goto :goto_98

    .line 280
    :cond_43
    iget p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastX:F

    sub-float p1, v4, p1

    .line 281
    iget p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastY:F

    sub-float p2, v5, p2

    .line 283
    iget-boolean v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->isCanDrag:Z

    if-nez v1, :cond_55

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/image/ClipImageView;->isCanDrag(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->isCanDrag:Z

    .line 286
    :cond_55
    iget-boolean v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->isCanDrag:Z

    if-eqz v1, :cond_91

    .line 287
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 289
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v6, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_73

    move p1, v2

    .line 296
    :cond_73
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_83

    goto :goto_84

    :cond_83
    move v2, p2

    .line 299
    :goto_84
    iget-object p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 300
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->checkBorder()V

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 304
    :cond_91
    iput v4, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastX:F

    .line 305
    iput v5, p0, Lcom/keephealth/android/util/image/ClipImageView;->mLastY:F

    goto :goto_98

    .line 310
    :cond_96
    iput v1, p0, Lcom/keephealth/android/util/image/ClipImageView;->lastPointerCount:I

    :goto_98
    return v0
.end method

.method public resetImageMatrix()V
    .registers 9

    .line 398
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 403
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 404
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 406
    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 407
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageView;->mClipBorder:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 409
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getWidth()I

    move-result v4

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageView;->getHeight()I

    move-result v5

    mul-int v6, v1, v3

    mul-int v7, v2, v0

    if-le v6, v7, :cond_2c

    int-to-float v2, v3

    int-to-float v3, v0

    goto :goto_2e

    :cond_2c
    int-to-float v2, v2

    int-to-float v3, v1

    :goto_2e
    div-float/2addr v2, v3

    int-to-float v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    int-to-float v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/image/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 430
    iput v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mInitScale:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 431
    iput v0, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMin:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    .line 432
    iput v2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mScaleMax:F

    return-void
.end method

.method public setAspect(II)V
    .registers 3

    .line 352
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectX:I

    .line 353
    iput p2, p0, Lcom/keephealth/android/util/image/ClipImageView;->mAspectY:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 362
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 368
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 369
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 374
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 375
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageView;->postResetImageMatrix()V

    return-void
.end method

.method public setMaxOutputWidth(I)V
    .registers 2

    .line 515
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mMaxOutputWidth:I

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mTipText:Ljava/lang/String;

    return-void
.end method

.method public setmDrawCircleFlag(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/keephealth/android/util/image/ClipImageView;->mDrawCircleFlag:Z

    return-void
.end method
