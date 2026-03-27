.class public Lcom/keephealth/android/views/CustomProgressView;
.super Landroid/view/View;
.source "CustomProgressView.java"


# instance fields
.field private barHeight:I

.field private gapWidth:F

.field private indicatorBitmap:Landroid/graphics/Bitmap;

.field private indicatorMargin:I

.field private leftPaint:Landroid/graphics/Paint;

.field private maxProgress:I

.field private progress:I

.field private rightPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x18

    .line 27
    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->progress:I

    const/16 p1, 0xc8

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->maxProgress:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 29
    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->gapWidth:F

    const/16 p1, 0xc

    .line 30
    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->barHeight:I

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorMargin:I

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/views/CustomProgressView;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ConvertUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/CustomProgressView;->barHeight:I

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->leftPaint:Landroid/graphics/Paint;

    .line 43
    const-string v2, "#FF914D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->leftPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->rightPaint:Landroid/graphics/Paint;

    .line 48
    const-string v2, "#E74C3C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->rightPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->textPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getWidth()I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getHeight()I

    move-result v1

    .line 67
    iget v2, p0, Lcom/keephealth/android/views/CustomProgressView;->barHeight:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v1, v1

    const/high16 v5, 0x3fa00000    # 1.25f

    div-float/2addr v1, v5

    int-to-float v5, v2

    div-float/2addr v5, v4

    sub-float v5, v1, v5

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    int-to-float v0, v0

    .line 73
    iget v2, p0, Lcom/keephealth/android/views/CustomProgressView;->gapWidth:F

    sub-float v6, v0, v2

    const/high16 v7, 0x41000000    # 8.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 77
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 78
    invoke-virtual {v7, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    invoke-virtual {v7, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    invoke-virtual {v7, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    new-instance v8, Landroid/graphics/RectF;

    mul-float v9, v3, v4

    const/4 v10, 0x0

    invoke-direct {v8, v10, v5, v9, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v7, v8, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 82
    invoke-virtual {v7, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 84
    iget-object v6, p0, Lcom/keephealth/android/views/CustomProgressView;->leftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 88
    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, v0, v3

    .line 89
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    new-instance v3, Landroid/graphics/RectF;

    sub-float v7, v0, v9

    invoke-direct {v3, v7, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v6, v3, v7, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 91
    invoke-virtual {v6, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 93
    iget-object v1, p0, Lcom/keephealth/android/views/CustomProgressView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    iget v1, p0, Lcom/keephealth/android/views/CustomProgressView;->progress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/CustomProgressView;->maxProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 97
    iget-object v2, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v5, v2

    iget v3, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 100
    iget-object v3, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v6, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    iget v1, p0, Lcom/keephealth/android/views/CustomProgressView;->progress:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_bb

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10045d

    goto :goto_c2

    :cond_bb
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1006d2

    :goto_c2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/keephealth/android/views/CustomProgressView;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v5, v2

    iget-object v2, p0, Lcom/keephealth/android/views/CustomProgressView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 112
    iget v0, p0, Lcom/keephealth/android/views/CustomProgressView;->maxProgress:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/CustomProgressView;->progress:I

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomProgressView;->invalidate()V

    return-void
.end method
