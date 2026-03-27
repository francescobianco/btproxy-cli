.class public Lcom/keephealth/android/views/NumberProgressBar;
.super Landroid/view/View;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;,
        Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_REACHED_BAR_COLOR:Ljava/lang/String; = "reached_bar_color"

.field private static final INSTANCE_REACHED_BAR_HEIGHT:Ljava/lang/String; = "reached_bar_height"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_TEXT_VISIBILITY:Ljava/lang/String; = "text_visibility"

.field private static final INSTANCE_UNREACHED_BAR_COLOR:Ljava/lang/String; = "unreached_bar_color"

.field private static final INSTANCE_UNREACHED_BAR_HEIGHT:Ljava/lang/String; = "unreached_bar_height"

.field private static final PROGRESS_TEXT_VISIBLE:I


# instance fields
.field private final default_progress_text_offset:F

.field private final default_reached_bar_height:F

.field private final default_reached_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unreached_bar_height:F

.field private final default_unreached_color:I

.field private mCurrentDrawText:Ljava/lang/String;

.field private mCurrentProgress:I

.field private mDrawReachedBar:Z

.field private mDrawTextEnd:F

.field private mDrawTextStart:F

.field private mDrawTextWidth:F

.field private mDrawUnreachedBar:Z

.field private mIfDrawText:Z

.field private mListener:Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;

.field private mMaxProgress:I

.field private mOffset:F

.field private mPrefix:Ljava/lang/String;

.field private mReachedBarColor:I

.field private mReachedBarHeight:F

.field private mReachedBarPaint:Landroid/graphics/Paint;

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mSuffix:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I

.field private mUnreachedBarHeight:F

.field private mUnreachedBarPaint:Landroid/graphics/Paint;

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    .line 26
    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mMaxProgress:I

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentProgress:I

    .line 66
    const-string v2, "%"

    iput-object v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mSuffix:Ljava/lang/String;

    .line 71
    const-string v2, ""

    iput-object v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mPrefix:Ljava/lang/String;

    const/16 v2, 0x42

    const/16 v3, 0x91

    const/16 v4, 0xf1

    .line 74
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_text_color:I

    .line 75
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_reached_color:I

    const/16 v3, 0xcc

    .line 76
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_unreached_color:I

    .line 137
    new-instance v4, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    .line 141
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    const/4 v4, 0x1

    .line 151
    iput-boolean v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 153
    iput-boolean v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawReachedBar:Z

    .line 155
    iput-boolean v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 177
    invoke-virtual {p0, v7}, Lcom/keephealth/android/views/NumberProgressBar;->dp2px(F)F

    move-result v7

    iput v7, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_reached_bar_height:F

    const/high16 v8, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p0, v8}, Lcom/keephealth/android/views/NumberProgressBar;->dp2px(F)F

    move-result v8

    iput v8, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_unreached_bar_height:F

    const/high16 v9, 0x41200000    # 10.0f

    .line 179
    invoke-virtual {p0, v9}, Lcom/keephealth/android/views/NumberProgressBar;->sp2px(F)F

    move-result v9

    iput v9, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_text_size:F

    const/high16 v10, 0x40400000    # 3.0f

    .line 180
    invoke-virtual {p0, v10}, Lcom/keephealth/android/views/NumberProgressBar;->dp2px(F)F

    move-result v10

    iput v10, p0, Lcom/keephealth/android/views/NumberProgressBar;->default_progress_text_offset:F

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v11, Lcom/keephealth/android/R$styleable;->NumberProgressBar:[I

    invoke-virtual {p1, p2, v11, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 186
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarColor:I

    const/16 p2, 0x9

    .line 187
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarColor:I

    const/4 p2, 0x4

    .line 188
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextColor:I

    const/4 p2, 0x6

    .line 189
    invoke-virtual {p1, p2, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    const/4 p2, 0x2

    .line 191
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    const/16 p2, 0x8

    .line 192
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    const/4 p2, 0x5

    .line 193
    invoke-virtual {p1, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 194
    iput v6, p0, Lcom/keephealth/android/views/NumberProgressBar;->mOffset:F

    const/4 p2, 0x7

    .line 195
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_a7

    .line 197
    iput-boolean v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    .line 200
    :cond_a7
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/NumberProgressBar;->setProgress(I)V

    .line 201
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/NumberProgressBar;->setMax(I)V

    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-direct {p0}, Lcom/keephealth/android/views/NumberProgressBar;->initializePainters()V

    return-void
.end method

.method private calculateDrawRectF()V
    .registers 8

    .line 297
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextWidth:F

    .line 301
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_56

    .line 302
    iput-boolean v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawReachedBar:Z

    .line 303
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextStart:F

    goto :goto_b1

    .line 305
    :cond_56
    iput-boolean v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawReachedBar:Z

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/keephealth/android/views/NumberProgressBar;->mOffset:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mOffset:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextStart:F

    .line 313
    :goto_b1
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextEnd:F

    .line 320
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextStart:F

    iget v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mOffset:F

    add-float/2addr v0, v4

    .line 321
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_e0

    .line 322
    iput-boolean v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawUnreachedBar:Z

    goto :goto_111

    .line 324
    :cond_e0
    iput-boolean v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 325
    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_111
    return-void
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .registers 6

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 289
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 290
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private initializePainters()V
    .registers 4

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    .line 272
    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    .line 275
    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 278
    iget v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private measure(IZ)I
    .registers 6

    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 225
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz p2, :cond_13

    .line 226
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingRight()I

    move-result v2

    goto :goto_1b

    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPaddingBottom()I

    move-result v2

    :goto_1b
    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_21

    goto :goto_3e

    :cond_21
    if-eqz p2, :cond_28

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    :goto_2c
    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3d

    if-eqz p2, :cond_38

    .line 234
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_3e

    .line 236
    :cond_38
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3e

    :cond_3d
    move p1, v2

    :goto_3e
    return p1
.end method


# virtual methods
.method public dp2px(F)F
    .registers 3

    .line 503
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public getMax()I
    .registers 2

    .line 363
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentProgress:I

    return v0
.end method

.method public getProgressTextSize()F
    .registers 2

    .line 347
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .registers 2

    .line 518
    iget-boolean v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public getReachedBarColor()I
    .registers 2

    .line 355
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarColor:I

    return v0
.end method

.method public getReachedBarHeight()F
    .registers 2

    .line 367
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .line 214
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    iget v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .registers 2

    .line 338
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextColor:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarColor:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .registers 2

    .line 371
    iget v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3

    if-lez p1, :cond_a

    .line 440
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setProgress(I)V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 245
    iget-boolean v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_8

    .line 246
    invoke-direct {p0}, Lcom/keephealth/android/views/NumberProgressBar;->calculateDrawRectF()V

    goto :goto_b

    .line 248
    :cond_8
    invoke-direct {p0}, Lcom/keephealth/android/views/NumberProgressBar;->calculateDrawRectFWithoutProgressText()V

    .line 253
    :goto_b
    iget-boolean v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawUnreachedBar:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3c

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 258
    :cond_3c
    iget-boolean v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawReachedBar:Z

    if-eqz v0, :cond_6b

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    :cond_6b
    iget-boolean v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_88

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/keephealth/android/views/NumberProgressBar;->mDrawTextEnd:F

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/keephealth/android/views/NumberProgressBar;->dp2px(F)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_88
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/NumberProgressBar;->measure(IZ)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/keephealth/android/views/NumberProgressBar;->measure(IZ)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/NumberProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 482
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_77

    .line 483
    check-cast p1, Landroid/os/Bundle;

    .line 484
    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextColor:I

    .line 485
    const-string v0, "text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    .line 486
    const-string v0, "reached_bar_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    .line 487
    const-string v0, "unreached_bar_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    .line 488
    const-string v0, "reached_bar_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarColor:I

    .line 489
    const-string v0, "unreached_bar_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarColor:I

    .line 490
    invoke-direct {p0}, Lcom/keephealth/android/views/NumberProgressBar;->initializePainters()V

    .line 491
    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setMax(I)V

    .line 492
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setProgress(I)V

    .line 493
    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setPrefix(Ljava/lang/String;)V

    .line 494
    const-string v0, "suffix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setSuffix(Ljava/lang/String;)V

    .line 495
    const-string v0, "text_visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;

    goto :goto_6a

    :cond_68
    sget-object v0, Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;->Invisible:Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;

    :goto_6a
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/NumberProgressBar;->setProgressTextVisibility(Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;)V

    .line 496
    const-string v0, "saved_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 499
    :cond_77
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 465
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 466
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 468
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 469
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 470
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setMax(I)V
    .registers 2

    if-lez p1, :cond_7

    .line 408
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mMaxProgress:I

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    :cond_7
    return-void
.end method

.method public setOnProgressBarListener(Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mListener:Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_7

    .line 428
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mPrefix:Ljava/lang/String;

    goto :goto_9

    .line 430
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mPrefix:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 447
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_15

    if-ltz p1, :cond_15

    .line 448
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentProgress:I

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mListener:Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;

    if-eqz v0, :cond_11

    .line 450
    invoke-interface {v0, p1}, Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;->onProgerssChanged(I)V

    .line 452
    :cond_11
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    goto :goto_2f

    .line 453
    :cond_15
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_2f

    .line 454
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mCurrentProgress:I

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mListener:Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;

    if-eqz p1, :cond_2c

    .line 456
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getMax()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/NumberProgressBar$OnProgressBarListener;->onProgerssChanged(I)V

    .line 458
    :cond_2c
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setProgressTextColor(I)V
    .registers 3

    .line 381
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextColor:I

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressTextSize(F)V
    .registers 3

    .line 375
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextSize:F

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressTextVisibility(Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;)V
    .registers 3

    .line 513
    sget-object v0, Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;->Visible:Lcom/keephealth/android/views/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mIfDrawText:Z

    .line 514
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    return-void
.end method

.method public setReachedBarColor(I)V
    .registers 3

    .line 393
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarColor:I

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    return-void
.end method

.method public setReachedBarHeight(F)V
    .registers 2

    .line 399
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mReachedBarHeight:F

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_7

    .line 416
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mSuffix:Ljava/lang/String;

    goto :goto_9

    .line 418
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mSuffix:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method public setUnreachedBarColor(I)V
    .registers 3

    .line 387
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarColor:I

    .line 388
    iget-object v0, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->invalidate()V

    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .registers 2

    .line 403
    iput p1, p0, Lcom/keephealth/android/views/NumberProgressBar;->mUnreachedBarHeight:F

    return-void
.end method

.method public sp2px(F)F
    .registers 3

    .line 508
    invoke-virtual {p0}, Lcom/keephealth/android/views/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    return p1
.end method
