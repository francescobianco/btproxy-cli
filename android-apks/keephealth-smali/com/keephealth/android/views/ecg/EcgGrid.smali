.class public Lcom/keephealth/android/views/ecg/EcgGrid;
.super Landroid/view/View;
.source "EcgGrid.java"


# instance fields
.field private mGridColor:I

.field public mPaint:Landroid/graphics/Paint;

.field private mSGridColor:I

.field private xWITH:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-string p1, "#bcbcbc"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mGridColor:I

    .line 32
    const-string p1, "#e5e5e5"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mSGridColor:I

    const/high16 p1, 0x40a00000    # 5.0f

    .line 47
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .registers 15

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    int-to-float v3, v2

    cmpg-float v4, v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    if-gtz v4, :cond_7a

    .line 58
    iget-object v4, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mSGridColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v4, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v5, v3

    add-float v8, v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v4

    int-to-float v9, v4

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v5, v3

    add-float v10, v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getHeight()I

    move-result v4

    int-to-float v11, v4

    iget-object v12, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    rem-int/lit8 v4, v2, 0x5

    if-nez v4, :cond_77

    .line 62
    iget-object v4, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mGridColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v4, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v5, v3

    add-float v7, v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v5, v3

    add-float v9, v4, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getHeight()I

    move-result v3

    int-to-float v10, v3

    iget-object v11, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_7a
    :goto_7a
    int-to-float v0, v1

    const v2, 0x461c4000    # 10000.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_e9

    .line 69
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mSGridColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v3, v0

    add-float v9, v2, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getRight()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v3, v0

    add-float v11, v2, v3

    iget-object v12, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_e6

    .line 74
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mGridColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v3, v0

    add-float v9, v2, v3

    .line 77
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getRight()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    mul-float/2addr v3, v0

    add-float v11, v2, v3

    iget-object v12, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    .line 76
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 80
    :cond_e9
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mGridColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgGrid;->getRight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    iget-object v6, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc00000    # 1.5f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/ecg/EcgGrid;->drawRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setxWITH(F)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/keephealth/android/views/ecg/EcgGrid;->xWITH:F

    return-void
.end method
