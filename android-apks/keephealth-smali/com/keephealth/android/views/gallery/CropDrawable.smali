.class public Lcom/keephealth/android/views/gallery/CropDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CropDrawable.java"


# instance fields
.field private mBottom:I

.field private mContext:Landroid/content/Context;

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mCropHeight:I

.field private mCropWidth:I

.field private mLeft:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNineLinePaint:Landroid/graphics/Paint;

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    const/16 v0, 0x320

    .line 25
    iput v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropWidth:I

    iput v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/CropDrawable;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 55
    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropWidth:I

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    .line 56
    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    sub-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    add-int/2addr v0, v2

    .line 57
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    add-int/2addr v1, v3

    .line 58
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    iget v4, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    int-to-float v3, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v4, v2

    int-to-float v5, v1

    add-int/lit8 v2, v2, 0x32

    int-to-float v6, v2

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    add-int/lit8 v2, v1, -0x4

    int-to-float v4, v2

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x32

    int-to-float v6, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    int-to-float v3, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v4, v2

    int-to-float v5, v1

    add-int/lit8 v2, v2, 0x32

    int-to-float v6, v2

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    add-int/lit8 v2, v1, -0x32

    int-to-float v4, v2

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x4

    int-to-float v6, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    int-to-float v3, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    int-to-float v4, v2

    add-int/lit8 v1, v1, 0x32

    int-to-float v5, v1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    int-to-float v3, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    add-int/lit8 v4, v2, -0x32

    int-to-float v4, v4

    int-to-float v5, v1

    add-int/lit8 v2, v2, 0x4

    int-to-float v6, v2

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    int-to-float v3, v1

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    int-to-float v4, v2

    int-to-float v5, v1

    add-int/lit8 v2, v2, -0x32

    int-to-float v6, v2

    iget-object v7, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    add-int/lit8 v2, v1, -0x32

    int-to-float v4, v2

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x4

    int-to-float v6, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCornerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 80
    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropWidth:I

    div-int/lit8 v0, v0, 0x3

    .line 81
    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    div-int/lit8 v2, v2, 0x3

    .line 82
    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    add-int v4, v3, v0

    int-to-float v6, v4

    iget v4, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v7, v4

    add-int/2addr v3, v0

    int-to-float v8, v3

    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    int-to-float v9, v3

    iget-object v10, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    mul-int/lit8 v0, v0, 0x2

    add-int v4, v3, v0

    int-to-float v6, v4

    iget v4, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    int-to-float v7, v4

    add-int/2addr v3, v0

    int-to-float v8, v3

    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    int-to-float v9, v0

    iget-object v10, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    add-int v3, v0, v2

    int-to-float v5, v3

    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    int-to-float v5, v3

    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mNineLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getBottom()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTop()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 99
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mLeft:I

    iget v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mTop:I

    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mRight:I

    iget v3, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mBottom:I

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setCropHeight(I)V
    .registers 2

    .line 133
    iput p1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    return-void
.end method

.method public setCropWidth(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropWidth:I

    return-void
.end method

.method public setRegion(Landroid/graphics/Rect;)V
    .registers 8

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 115
    iget v2, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropWidth:I

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/keephealth/android/views/gallery/CropDrawable;->mCropHeight:I

    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v3, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
