.class public Lcom/keephealth/android/views/CircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/keephealth/android/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/keephealth/android/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 39
    iput p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 39
    iput v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    .line 61
    sget-object v2, Lcom/keephealth/android/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->init()V

    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 179
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_f

    .line 180
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 184
    :cond_f
    :try_start_f
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1b

    .line 185
    sget-object v1, Lcom/keephealth/android/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_29

    .line 188
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/keephealth/android/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 188
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    :goto_29
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_3d} :catch_3e

    return-object v1

    :catch_3e
    return-object v0
.end method

.method private init()V
    .registers 2

    .line 72
    sget-object v0, Lcom/keephealth/android/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/keephealth/android/views/CircleImageView;->mReady:Z

    .line 74
    iget-boolean v0, p0, Lcom/keephealth/android/views/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_12

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/keephealth/android/views/CircleImageView;->mSetupPending:Z

    :cond_12
    return-void
.end method

.method private setup()V
    .registers 8

    .line 201
    iget-boolean v0, p0, Lcom/keephealth/android/views/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 202
    iput-boolean v1, p0, Lcom/keephealth/android/views/CircleImageView;->mSetupPending:Z

    return-void

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    return-void

    .line 208
    :cond_d
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapHeight:I

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapWidth:I

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 220
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 219
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRadius:F

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 222
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 221
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 224
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    .line 223
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRadius:F

    .line 225
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->updateShaderMatrix()V

    .line 226
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .registers 7

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 234
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-lez v0, :cond_3b

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 237
    iget-object v3, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_51

    .line 239
    :cond_3b
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 240
    iget-object v3, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 242
    :goto_51
    iget-object v4, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v4, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/keephealth/android/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 82
    sget-object v0, Lcom/keephealth/android/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_35

    .line 111
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_35
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 119
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .registers 3

    .line 127
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_5

    return-void

    .line 130
    :cond_5
    iput p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderColor:I

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .registers 3

    .line 140
    iget v0, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_5

    return-void

    .line 143
    :cond_5
    iput p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBorderWidth:I

    .line 144
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 171
    invoke-virtual {p0}, Lcom/keephealth/android/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 172
    invoke-direct {p0}, Lcom/keephealth/android/views/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 5

    .line 87
    sget-object v0, Lcom/keephealth/android/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_5

    return-void

    .line 88
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ScaleType %s not supported."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
