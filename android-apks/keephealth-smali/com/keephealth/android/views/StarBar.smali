.class public Lcom/keephealth/android/views/StarBar;
.super Landroid/view/View;
.source "StarBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/StarBar$OnStarChangeListener;
    }
.end annotation


# instance fields
.field private enableSelectRating:Z

.field private integerMark:Z

.field private onStarChangeListener:Lcom/keephealth/android/views/StarBar$OnStarChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private starCount:I

.field private starDistance:I

.field private starEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private starFillBitmap:Landroid/graphics/Bitmap;

.field private starMark:F

.field private starSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    const/4 v1, 0x5

    .line 20
    iput v1, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    .line 27
    iput-boolean v0, p0, Lcom/keephealth/android/views/StarBar;->integerMark:Z

    .line 28
    iput-boolean v0, p0, Lcom/keephealth/android/views/StarBar;->enableSelectRating:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/StarBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    const/4 v0, 0x5

    .line 20
    iput v0, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    .line 27
    iput-boolean p3, p0, Lcom/keephealth/android/views/StarBar;->integerMark:Z

    .line 28
    iput-boolean p3, p0, Lcom/keephealth/android/views/StarBar;->enableSelectRating:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/StarBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_4
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    iget v2, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StarBar;->setClickable(Z)V

    .line 54
    sget-object v1, Lcom/keephealth/android/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    const/high16 p2, 0x41a00000    # 20.0f

    const/4 v1, 0x5

    .line 56
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    const/4 p2, 0x3

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/StarBar;->starEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x4

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keephealth/android/views/StarBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/StarBar;->starFillBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/views/StarBar;->enableSelectRating:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/keephealth/android/views/StarBar;->starFillBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public getStarMark()F
    .registers 2

    .line 99
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 127
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/views/StarBar;->starFillBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/keephealth/android/views/StarBar;->starEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    goto/16 :goto_bf

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_f
    iget v2, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    if-ge v1, v2, :cond_2a

    .line 132
    iget-object v2, p0, Lcom/keephealth/android/views/StarBar;->starEmptyDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    iget v4, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    add-int v5, v3, v4

    mul-int/2addr v5, v1

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object v2, p0, Lcom/keephealth/android/views/StarBar;->starEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 135
    :cond_2a
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b1

    .line 136
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v5, v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x1

    if-nez v0, :cond_68

    :goto_49
    int-to-float v0, v3

    .line 138
    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_bf

    .line 139
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_68
    :goto_68
    int-to-float v0, v3

    .line 143
    iget v4, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    sub-float/2addr v4, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_88

    .line 144
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    iget v4, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 147
    :cond_88
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    iget v3, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v0, v0

    iget v2, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    float-to-int v3, v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v3

    mul-float v6, v0, v2

    iget v0, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_bf

    .line 151
    :cond_b1
    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    int-to-float v2, v1

    mul-float v6, v2, v0

    int-to-float v7, v1

    iget-object v8, p0, Lcom/keephealth/android/views/StarBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 121
    iget p1, p0, Lcom/keephealth/android/views/StarBar;->starSize:I

    iget p2, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    mul-int v0, p1, p2

    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starDistance:I

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/StarBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 158
    iget-boolean v0, p0, Lcom/keephealth/android/views/StarBar;->enableSelectRating:Z

    if-eqz v0, :cond_59

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 161
    :cond_c
    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->getMeasuredWidth()I

    move-result v0

    .line 162
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    goto :goto_56

    :cond_1e
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starCount:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    .line 167
    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->getStarMark()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4a

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/StarBar;->onStarChangeListener:Lcom/keephealth/android/views/StarBar$OnStarChangeListener;

    if-eqz v0, :cond_56

    .line 170
    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/StarBar$OnStarChangeListener;->onStarChange(F)V

    goto :goto_56

    .line 173
    :cond_4a
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/views/StarBar;->onStarChangeListener:Lcom/keephealth/android/views/StarBar$OnStarChangeListener;

    if-eqz v0, :cond_56

    .line 175
    iget v1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/StarBar$OnStarChangeListener;->onStarChange(F)V

    .line 181
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->invalidate()V

    .line 183
    :cond_59
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnableSelectRating(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/keephealth/android/views/StarBar;->enableSelectRating:Z

    return-void
.end method

.method public setIntegerMark(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/keephealth/android/views/StarBar;->integerMark:Z

    return-void
.end method

.method public setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/keephealth/android/views/StarBar;->onStarChangeListener:Lcom/keephealth/android/views/StarBar$OnStarChangeListener;

    return-void
.end method

.method public setStarMark(F)V
    .registers 4

    .line 82
    iget-boolean v0, p0, Lcom/keephealth/android/views/StarBar;->integerMark:Z

    if-eqz v0, :cond_e

    float-to-double v0, p1

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    goto :goto_1c

    :cond_e
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 85
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/StarBar;->starMark:F

    .line 90
    :goto_1c
    invoke-virtual {p0}, Lcom/keephealth/android/views/StarBar;->invalidate()V

    return-void
.end method
