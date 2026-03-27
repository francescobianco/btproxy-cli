.class public Lcom/keephealth/android/views/HistroyRecordHrChartView;
.super Landroid/view/View;
.source "HistroyRecordHrChartView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;
    }
.end annotation


# instance fields
.field private MAX_VALUE:I

.field private MIN_VALUE:I

.field private bgColor:I

.field private bottom:F

.field private chartHeight:F

.field private chartHeightSpan:F

.field private chartWidth:F

.field private chartWidthSpan:F

.field private colors:[I

.field private dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

.field private fillPaint:Landroid/graphics/Paint;

.field private h:I

.field private hrColor:I

.field private hrPaint:Landroid/graphics/Paint;

.field private hrSize:F

.field private isDrawY:Z

.field private isHaveDraw:Z

.field private left:F

.field private mPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private path2:Landroid/graphics/Path;

.field private right:F

.field private scaleY:[F

.field private tempX1:F

.field private tempY1:F

.field private textColor:I

.field private textSize:F

.field private timeColor:I

.field private timeSize:F

.field private top:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->isDrawY:Z

    const/16 v1, 0xe1

    .line 35
    iput v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->MAX_VALUE:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->MIN_VALUE:I

    int-to-float v3, v2

    int-to-float v1, v1

    const/4 v4, 0x5

    .line 39
    new-array v5, v4, [F

    aput v3, v5, v2

    const/high16 v3, 0x42700000    # 60.0f

    aput v3, v5, v0

    const/4 v3, 0x2

    const/high16 v6, 0x42f00000    # 120.0f

    aput v6, v5, v3

    const/4 v6, 0x3

    const/high16 v7, 0x43340000    # 180.0f

    aput v7, v5, v6

    const/4 v7, 0x4

    aput v1, v5, v7

    iput-object v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    const/4 v1, 0x6

    .line 41
    new-array v5, v1, [I

    fill-array-data v5, :array_d6

    iput-object v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->colors:[I

    const/high16 v5, 0x41f00000    # 30.0f

    .line 51
    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->right:F

    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->bottom:F

    .line 57
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 62
    iput-object v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->path:Landroid/graphics/Path;

    .line 63
    iput-object v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->path2:Landroid/graphics/Path;

    const/4 v5, 0x0

    .line 190
    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempY1:F

    iput v5, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempX1:F

    .line 68
    sget-object v5, Lcom/keephealth/android/R$styleable;->SportTypeHrChartView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->bgColor:I

    .line 70
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->textColor:I

    .line 71
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->timeColor:I

    .line 72
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrColor:I

    const/high16 p2, 0x41800000    # 16.0f

    .line 73
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->textSize:F

    .line 74
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->timeSize:F

    .line 75
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrSize:F

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HistroyRecordHrChartView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HistroyRecordHrChartView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600aa

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_d6
    .array-data 4
        -0xc557e0
        -0xa8511b
        -0x10b56
        -0x329b
        -0xb9bc4
        -0xb9bc4
    .end array-data
.end method

.method private drawHrLine(Landroid/graphics/Canvas;Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 199
    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v1, :cond_151

    .line 201
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_151

    .line 202
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidthSpan:F

    .line 203
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->MAX_VALUE:I

    int-to-float v3, v3

    div-float v3, v2, v3

    iput v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeightSpan:F

    .line 205
    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    .line 206
    iget v5, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    add-float/2addr v5, v2

    const/4 v2, 0x0

    move v6, v2

    .line 207
    :goto_40
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_151

    if-eqz v6, :cond_14d

    .line 209
    iget v7, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempX1:F

    .line 210
    iget v8, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempY1:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-nez v10, :cond_6e

    add-int/lit8 v7, v6, -0x1

    .line 212
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v8

    int-to-float v8, v8

    .line 213
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    int-to-float v7, v7

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 216
    :cond_6e
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v10

    int-to-float v10, v10

    .line 217
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v12, v8, v9

    if-eqz v12, :cond_13e

    cmpl-float v13, v11, v9

    if-nez v13, :cond_8e

    goto/16 :goto_13e

    .line 230
    :cond_8e
    iput v9, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempY1:F

    .line 231
    iput v9, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempX1:F

    .line 237
    iget-object v9, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    const v12, -0x1bde3

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    move v9, v4

    .line 238
    :goto_9b
    iget-object v12, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    array-length v13, v12

    if-ge v9, v13, :cond_14d

    .line 239
    aget v13, v12, v9

    cmpg-float v14, v8, v13

    if-gtz v14, :cond_d4

    cmpl-float v14, v11, v13

    if-ltz v14, :cond_d4

    sub-float v14, v13, v8

    sub-float v15, v10, v7

    mul-float/2addr v14, v15

    sub-float v15, v11, v8

    div-float/2addr v14, v15

    add-float/2addr v14, v7

    .line 244
    iget v15, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidthSpan:F

    mul-float/2addr v7, v15

    add-float v17, v3, v7

    .line 245
    aget v7, v12, v2

    sub-float/2addr v8, v7

    iget v12, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeightSpan:F

    mul-float/2addr v8, v12

    sub-float v18, v5, v8

    mul-float/2addr v15, v14

    add-float v19, v3, v15

    sub-float v7, v13, v7

    mul-float/2addr v7, v12

    sub-float v20, v5, v7

    .line 250
    iget-object v7, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v13

    move v7, v14

    goto :goto_13a

    :cond_d4
    cmpl-float v14, v8, v13

    if-lez v14, :cond_106

    cmpg-float v14, v11, v13

    if-gez v14, :cond_106

    sub-float v14, v8, v13

    sub-float v15, v10, v7

    mul-float/2addr v14, v15

    sub-float v15, v8, v11

    div-float/2addr v14, v15

    add-float/2addr v14, v7

    .line 259
    iget v15, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidthSpan:F

    mul-float/2addr v10, v15

    add-float v17, v3, v10

    .line 260
    aget v10, v12, v2

    sub-float/2addr v11, v10

    iget v12, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeightSpan:F

    mul-float/2addr v11, v12

    sub-float v18, v5, v11

    mul-float/2addr v15, v14

    add-float v19, v3, v15

    sub-float v10, v13, v10

    mul-float/2addr v10, v12

    sub-float v20, v5, v10

    .line 265
    iget-object v10, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move-object/from16 v21, v10

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v13

    move v10, v14

    goto :goto_13a

    :cond_106
    cmpg-float v14, v8, v13

    if-gtz v14, :cond_13a

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_13a

    add-int/lit8 v13, v9, -0x1

    .line 269
    aget v13, v12, v13

    cmpl-float v14, v8, v13

    if-ltz v14, :cond_13a

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_13a

    .line 272
    iget v13, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidthSpan:F

    mul-float v14, v7, v13

    add-float v16, v3, v14

    .line 273
    aget v12, v12, v2

    sub-float v14, v8, v12

    iget v15, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeightSpan:F

    mul-float/2addr v14, v15

    sub-float v17, v5, v14

    mul-float/2addr v13, v10

    add-float v18, v3, v13

    sub-float v12, v11, v12

    mul-float/2addr v12, v15

    sub-float v19, v5, v12

    .line 278
    iget-object v12, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move-object/from16 v20, v12

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_13a
    :goto_13a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9b

    :cond_13e
    :goto_13e
    if-eqz v12, :cond_145

    .line 222
    iput v8, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempY1:F

    .line 223
    iput v7, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempX1:F

    goto :goto_14d

    :cond_145
    cmpl-float v7, v11, v9

    if-eqz v7, :cond_14d

    .line 225
    iput v11, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempY1:F

    .line 226
    iput v10, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->tempX1:F

    :cond_14d
    :goto_14d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_40

    :cond_151
    return-void
.end method


# virtual methods
.method public initDatas(Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;)V
    .registers 5

    .line 294
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    .line 295
    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 296
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_threshold()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_threshold()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 300
    :cond_32
    invoke-virtual {p0}, Lcom/keephealth/android/views/HistroyRecordHrChartView;->postInvalidate()V

    return-void
.end method

.method public initDatas(Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;Z)V
    .registers 5

    .line 309
    iput-object p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    .line 310
    iput-boolean p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->isDrawY:Z

    .line 311
    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 312
    iget-object p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 313
    iget-object p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_threshold()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 314
    iget-object p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    invoke-virtual {p1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getInterval()Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_threshold()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x3

    aput p1, p2, v0

    :cond_34
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 107
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    if-eqz v1, :cond_1c5

    .line 111
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, 0x0

    .line 112
    iput v8, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    .line 113
    iput v8, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    .line 114
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->w:I

    int-to-float v1, v1

    iput v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->right:F

    .line 115
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->h:I

    int-to-float v1, v1

    iput v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->bottom:F

    .line 118
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->MAX_VALUE:I

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 123
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->bgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float v4, v2, v1

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    add-float v5, v3, v1

    iget-object v6, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 128
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v4, v9, v3

    sub-float/2addr v2, v4

    add-float v10, v1, v2

    .line 131
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    const/4 v11, 0x1

    aget v2, v2, v11

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v12

    .line 132
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    aget v1, v1, v11

    cmpl-float v1, v1, v3

    const/high16 v13, 0x40a00000    # 5.0f

    const/high16 v14, 0x40400000    # 3.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-ltz v1, :cond_9e

    .line 133
    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v10, v1

    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "30"

    invoke-virtual {v7, v3, v8, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    invoke-static {v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    mul-float/2addr v1, v14

    div-float/2addr v1, v15

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float v5, v1, v3

    iget-object v6, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/ViewUtil;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 136
    :cond_9e
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    iget-object v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    aget v3, v3, v11

    mul-float v4, v9, v3

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    sub-float/2addr v10, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v12, v2

    div-float/2addr v12, v14

    cmpg-float v2, v10, v12

    if-gez v2, :cond_b6

    sub-float v2, v12, v10

    sub-float/2addr v1, v2

    :cond_b6
    move v10, v1

    float-to-int v1, v3

    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v10, v2

    iget-object v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    invoke-static {v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    mul-float/2addr v1, v14

    div-float/2addr v1, v15

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float v5, v1, v3

    iget-object v6, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/ViewUtil;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 143
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    iget-object v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float v4, v9, v3

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    sub-float/2addr v10, v1

    cmpg-float v2, v10, v12

    if-gez v2, :cond_f4

    sub-float v2, v12, v10

    sub-float/2addr v1, v2

    :cond_f4
    move v10, v1

    float-to-int v1, v3

    .line 148
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    invoke-static {v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    mul-float/2addr v1, v14

    div-float/2addr v1, v15

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float v5, v1, v3

    iget-object v6, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/ViewUtil;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 150
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    iget-object v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->scaleY:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v9, v3

    sub-float/2addr v2, v9

    add-float/2addr v1, v2

    sub-float/2addr v10, v1

    cmpg-float v2, v10, v12

    if-gez v2, :cond_129

    sub-float/2addr v12, v10

    sub-float/2addr v1, v12

    :cond_129
    move v4, v1

    float-to-int v1, v3

    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v4, v2

    iget-object v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    invoke-static {v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    mul-float/2addr v1, v14

    div-float/2addr v1, v15

    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float v6, v1, v3

    iget-object v8, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/ViewUtil;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 159
    iget-boolean v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->isDrawY:Z

    if-eqz v1, :cond_171

    .line 160
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget v4, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    add-float v5, v1, v2

    iget-object v6, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 165
    :cond_171
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->timeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->timeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 168
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getStartTime()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    .line 170
    iget v3, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->top:F

    iget v4, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 171
    iget-object v4, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    iget v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->left:F

    iget v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    add-float/2addr v1, v2

    .line 173
    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    iget-object v2, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    invoke-virtual {v2}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getEndTime()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v4, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v1, v0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->dataMode:Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/HistroyRecordHrChartView$DataMode;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/keephealth/android/views/HistroyRecordHrChartView;->drawHrLine(Landroid/graphics/Canvas;Ljava/util/List;)V

    :cond_1c5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 97
    iput p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->w:I

    .line 98
    iput p2, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->h:I

    int-to-float p1, p1

    .line 101
    iput p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartWidth:F

    int-to-float p1, p2

    .line 102
    iput p1, p0, Lcom/keephealth/android/views/HistroyRecordHrChartView;->chartHeight:F

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/keephealth/android/views/HistroyRecordHrChartView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
