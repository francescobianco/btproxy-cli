.class public Lcom/keephealth/android/views/HeartBarChart;
.super Landroid/view/View;
.source "HeartBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;
    }
.end annotation


# instance fields
.field private MAX_VALUE:F

.field private MIN_VALUE:F

.field private bgColor:I

.field private bottom:I

.field private chartHeight:I

.field private chartHeightSpan:F

.field private chartWidth:I

.field private chartWidthSpan:F

.field private clickListener:Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;

.field private colors:[I

.field private exelColor:I

.field private exelPaint:Landroid/graphics/Paint;

.field private h:I

.field private haveRecordLeftTouchX:Z

.field private healthHeartRateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private hrPaint:Landroid/graphics/Paint;

.field private index:I

.field private interval:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

.field private isOnclick:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private left:I

.field private leftTouchX:F

.field linePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private popup:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupRight:Landroid/graphics/drawable/NinePatchDrawable;

.field private right:I

.field private scaleY:[F

.field private selectRect:Landroid/graphics/Rect;

.field private startTime:I

.field private surplusHeight:F

.field private tempPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field tempTouchX:F

.field private tempTouchX1b:Z

.field private tempTouchX2:F

.field tempTouchY:F

.field private tempX1:F

.field tempXx:F

.field private tempY1:F

.field private textColor:I

.field private textSize:F

.field private top:I

.field private touchPaint:Landroid/graphics/Paint;

.field touchX:F

.field private touchX1:I

.field private touchX2:I

.field touchY:F

.field private w:I

.field xLables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xPaint:Landroid/graphics/Paint;

.field private yPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 31
    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    .line 32
    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    const v1, 0x3bffffff

    .line 35
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->exelColor:I

    const/16 v1, 0x1e

    .line 36
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->top:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/keephealth/android/views/HeartBarChart;->right:I

    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->MIN_VALUE:F

    const/high16 v2, 0x43610000    # 225.0f

    iput v2, p0, Lcom/keephealth/android/views/HeartBarChart;->MAX_VALUE:F

    const/4 v2, 0x5

    .line 40
    new-array v2, v2, [F

    fill-array-data v2, :array_c2

    iput-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/4 v2, 0x6

    .line 41
    new-array v2, v2, [I

    fill-array-data v2, :array_d0

    iput-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->colors:[I

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->tempPoints:Ljava/util/List;

    .line 51
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->tempY1:F

    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->tempX1:F

    .line 52
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    const/4 v2, -0x1

    .line 55
    iput v2, p0, Lcom/keephealth/android/views/HeartBarChart;->index:I

    const/4 v3, 0x1

    .line 56
    iput-boolean v3, p0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX1b:Z

    .line 68
    iput-boolean v3, p0, Lcom/keephealth/android/views/HeartBarChart;->isOnclick:Z

    .line 70
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX1:I

    .line 71
    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX2:I

    .line 156
    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchY:F

    .line 157
    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX:F

    .line 519
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/views/HeartBarChart;->mContext:Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/keephealth/android/R$styleable;->HeartBarChart:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x2

    .line 78
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->textSize:F

    .line 79
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->textColor:I

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0234

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/keephealth/android/views/HeartBarChart;->popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0235

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/keephealth/android/views/HeartBarChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0233

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/keephealth/android/views/HeartBarChart;->popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

    .line 86
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    .line 87
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->initScreen(Landroid/app/Activity;)V

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartBarChart;->initPaint()V

    return-void

    nop

    :array_c2
    .array-data 4
        0x0
        0x42700000    # 60.0f
        0x42f00000    # 120.0f
        0x43340000    # 180.0f
        0x43610000    # 225.0f
    .end array-data

    :array_d0
    .array-data 4
        -0xc557e0
        -0xa8511b
        -0x431b8
        -0xb93f4
        -0x13cef4
        -0x478e0
    .end array-data
.end method

.method private drawExelBackground(Landroid/graphics/Canvas;)V
    .registers 9

    .line 681
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->exelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->exelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v2, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->top:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->w:I

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->right:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/HeartBarChart;->exelPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHeartRateValue(Landroid/graphics/Canvas;)V
    .registers 23

    move-object/from16 v0, p0

    .line 337
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    if-eqz v1, :cond_234

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_234

    .line 339
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 340
    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move v4, v3

    .line 341
    :goto_2f
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_234

    if-eqz v4, :cond_230

    .line 343
    iget v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempX1:F

    .line 344
    iget v6, v0, Lcom/keephealth/android/views/HeartBarChart;->tempY1:F

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-nez v8, :cond_5e

    .line 346
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v5

    int-to-float v5, v5

    .line 347
    iget-object v8, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    int-to-float v6, v6

    .line 349
    :cond_5e
    iget-object v8, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v8

    int-to-float v8, v8

    .line 350
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v10, v6, v7

    if-eqz v10, :cond_20b

    cmpl-float v11, v9, v7

    if-nez v11, :cond_82

    goto/16 :goto_20b

    .line 370
    :cond_82
    iput v7, v0, Lcom/keephealth/android/views/HeartBarChart;->tempY1:F

    .line 371
    iput v7, v0, Lcom/keephealth/android/views/HeartBarChart;->tempX1:F

    const/4 v10, 0x1

    move v11, v10

    .line 376
    :goto_88
    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    array-length v13, v12

    if-ge v11, v13, :cond_230

    .line 377
    aget v13, v12, v11

    cmpg-float v14, v6, v13

    if-gtz v14, :cond_10d

    cmpl-float v14, v9, v13

    if-ltz v14, :cond_10d

    sub-float v12, v13, v6

    sub-float v14, v8, v5

    mul-float/2addr v12, v14

    sub-float v14, v9, v6

    div-float/2addr v12, v14

    add-float/2addr v12, v5

    .line 380
    iget-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    iget-object v15, v0, Lcom/keephealth/android/views/HeartBarChart;->colors:[I

    aget v15, v15, v11

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget v14, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidthSpan:F

    mul-float/2addr v5, v14

    add-float/2addr v5, v1

    .line 382
    iget-object v15, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    aget v15, v15, v3

    sub-float v16, v6, v15

    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->chartHeightSpan:F

    mul-float v16, v16, v3

    sub-float v17, v2, v16

    mul-float/2addr v14, v12

    add-float/2addr v14, v1

    sub-float v15, v13, v15

    mul-float/2addr v15, v3

    sub-float v19, v2, v15

    cmpl-float v3, v9, v7

    if-eqz v3, :cond_c7

    .line 386
    iput v14, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    goto :goto_cd

    :cond_c7
    cmpl-float v3, v6, v7

    if-eqz v3, :cond_cd

    .line 388
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    .line 390
    :cond_cd
    :goto_cd
    iget-boolean v3, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    if-nez v3, :cond_fc

    .line 391
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    if-eqz v3, :cond_e8

    .line 392
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX:F

    .line 393
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    .line 394
    iput-boolean v10, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    goto :goto_fc

    .line 395
    :cond_e8
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    if-eqz v3, :cond_fc

    .line 396
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX:F

    .line 397
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    .line 398
    iput-boolean v10, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    .line 401
    :cond_fc
    :goto_fc
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v5

    move/from16 v18, v14

    move-object/from16 v20, v3

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v5, v12

    move v6, v13

    goto/16 :goto_206

    :cond_10d
    cmpl-float v3, v6, v13

    if-lez v3, :cond_189

    cmpg-float v3, v9, v13

    if-gez v3, :cond_189

    sub-float v3, v6, v13

    sub-float v12, v8, v5

    mul-float/2addr v3, v12

    sub-float v12, v6, v9

    div-float/2addr v3, v12

    add-float/2addr v3, v5

    .line 407
    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->colors:[I

    aget v14, v14, v11

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget v12, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidthSpan:F

    mul-float/2addr v8, v12

    add-float v15, v1, v8

    .line 409
    iget-object v8, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/4 v14, 0x0

    aget v8, v8, v14

    sub-float v14, v9, v8

    iget v10, v0, Lcom/keephealth/android/views/HeartBarChart;->chartHeightSpan:F

    mul-float/2addr v14, v10

    sub-float v16, v2, v14

    mul-float/2addr v12, v3

    add-float/2addr v12, v1

    sub-float v8, v13, v8

    mul-float/2addr v8, v10

    sub-float v18, v2, v8

    cmpl-float v8, v9, v7

    if-eqz v8, :cond_146

    .line 414
    iput v12, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    goto :goto_14c

    :cond_146
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_14c

    .line 416
    iput v15, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    .line 418
    :cond_14c
    :goto_14c
    iget-boolean v8, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    if-nez v8, :cond_179

    .line 419
    iget-object v8, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    if-eqz v8, :cond_166

    .line 420
    iput v15, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    const/4 v8, 0x1

    .line 421
    iput-boolean v8, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    goto :goto_179

    :cond_166
    const/4 v8, 0x1

    .line 422
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    if-eqz v9, :cond_179

    .line 423
    iput v15, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    .line 424
    iput-boolean v8, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    .line 427
    :cond_179
    :goto_179
    iget-object v8, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v17, v12

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v3

    move v9, v13

    :cond_186
    const/4 v10, 0x1

    goto/16 :goto_206

    :cond_189
    cmpg-float v3, v6, v13

    if-gtz v3, :cond_186

    cmpg-float v3, v9, v13

    if-gtz v3, :cond_186

    add-int/lit8 v3, v11, -0x1

    .line 430
    aget v3, v12, v3

    cmpl-float v10, v6, v3

    if-ltz v10, :cond_186

    cmpl-float v3, v9, v3

    if-ltz v3, :cond_186

    .line 431
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->colors:[I

    aget v10, v10, v11

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidthSpan:F

    mul-float v10, v5, v3

    add-float v13, v1, v10

    .line 433
    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/4 v12, 0x0

    aget v10, v10, v12

    sub-float v12, v6, v10

    iget v14, v0, Lcom/keephealth/android/views/HeartBarChart;->chartHeightSpan:F

    mul-float/2addr v12, v14

    sub-float v15, v2, v12

    mul-float/2addr v3, v8

    add-float/2addr v3, v1

    sub-float v10, v9, v10

    mul-float/2addr v10, v14

    sub-float v16, v2, v10

    cmpl-float v10, v9, v7

    if-eqz v10, :cond_1c6

    .line 438
    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    goto :goto_1cc

    :cond_1c6
    cmpl-float v10, v6, v7

    if-eqz v10, :cond_1cc

    .line 440
    iput v13, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    .line 442
    :cond_1cc
    :goto_1cc
    iget-boolean v10, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    if-nez v10, :cond_1fa

    .line 443
    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    add-int/lit8 v12, v4, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v10

    if-eqz v10, :cond_1e6

    .line 444
    iput v13, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    const/4 v10, 0x1

    .line 445
    iput-boolean v10, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    goto :goto_1fb

    :cond_1e6
    const/4 v10, 0x1

    .line 446
    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    if-eqz v12, :cond_1fb

    .line 447
    iput v13, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    .line 448
    iput-boolean v10, v0, Lcom/keephealth/android/views/HeartBarChart;->haveRecordLeftTouchX:Z

    goto :goto_1fb

    :cond_1fa
    const/4 v10, 0x1

    .line 451
    :cond_1fb
    :goto_1fb
    iget-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move v14, v15

    move v15, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_206
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto/16 :goto_88

    :cond_20b
    :goto_20b
    if-eqz v10, :cond_21f

    .line 354
    iput v6, v0, Lcom/keephealth/android/views/HeartBarChart;->tempY1:F

    .line 355
    iput v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempX1:F

    .line 356
    iget-boolean v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX1b:Z

    if-eqz v3, :cond_21d

    add-int/lit8 v3, v4, -0x1

    .line 357
    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->index:I

    const/4 v3, 0x0

    .line 358
    iput-boolean v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX1b:Z

    goto :goto_230

    :cond_21d
    const/4 v3, 0x0

    goto :goto_230

    :cond_21f
    const/4 v3, 0x0

    cmpl-float v5, v9, v7

    if-eqz v5, :cond_230

    .line 361
    iput v9, v0, Lcom/keephealth/android/views/HeartBarChart;->tempY1:F

    .line 362
    iput v8, v0, Lcom/keephealth/android/views/HeartBarChart;->tempX1:F

    .line 363
    iget-boolean v5, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX1b:Z

    if-eqz v5, :cond_230

    .line 364
    iput v4, v0, Lcom/keephealth/android/views/HeartBarChart;->index:I

    .line 365
    iput-boolean v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX1b:Z

    :cond_230
    :goto_230
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2f

    :cond_234
    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 162
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->chartHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->MAX_VALUE:F

    div-float v8, v1, v2

    .line 164
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 165
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    invoke-direct {v0, v1, v3}, Lcom/keephealth/android/views/HeartBarChart;->minutToX(II)F

    move-result v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    .line 166
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    move v11, v9

    goto/16 :goto_1be

    .line 168
    :cond_3c
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1bd

    .line 169
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_186

    .line 170
    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    invoke-direct {v0, v1, v3}, Lcom/keephealth/android/views/HeartBarChart;->xToMinute(FI)I

    move-result v1

    if-ltz v1, :cond_161

    .line 172
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    if-lt v3, v1, :cond_7f

    .line 173
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    .line 174
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    goto/16 :goto_17c

    .line 176
    :cond_7f
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    if-gt v3, v1, :cond_c0

    .line 177
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    .line 178
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    .line 179
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    goto/16 :goto_17d

    :cond_c0
    move v3, v9

    .line 181
    :goto_c1
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_15f

    .line 183
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-gt v4, v1, :cond_15b

    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-lt v4, v1, :cond_15b

    .line 185
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v6, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v4, v1, :cond_129

    .line 186
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    .line 187
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    move v5, v3

    goto :goto_144

    .line 190
    :cond_129
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    .line 191
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    .line 194
    :goto_144
    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    if-lez v3, :cond_159

    .line 195
    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchY:F

    int-to-float v3, v1

    .line 196
    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->tempXx:F

    :cond_159
    move v3, v5

    goto :goto_17d

    :cond_15b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c1

    :cond_15f
    move v3, v10

    goto :goto_17d

    .line 203
    :cond_161
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    .line 204
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    :goto_17c
    move v3, v9

    .line 208
    :goto_17d
    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    invoke-direct {v0, v1, v4}, Lcom/keephealth/android/views/HeartBarChart;->minutToX(II)F

    move-result v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    goto :goto_1bb

    .line 210
    :cond_186
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    invoke-direct {v0, v1, v3}, Lcom/keephealth/android/views/HeartBarChart;->minutToX(II)F

    move-result v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    .line 211
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    .line 212
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_1bb
    move v11, v3

    goto :goto_1be

    :cond_1bd
    move v11, v10

    .line 216
    :goto_1be
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_505

    .line 218
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1e8

    .line 219
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    if-lez v1, :cond_1e3

    .line 220
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->leftTouchX:F

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    .line 221
    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX:F

    goto :goto_1f9

    .line 224
    :cond_1e3
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX:F

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    goto :goto_1f9

    .line 228
    :cond_1e8
    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->tempTouchX2:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f9

    .line 229
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    .line 239
    :cond_1f9
    :goto_1f9
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    const/4 v12, 0x0

    cmpg-float v1, v1, v12

    if-gtz v1, :cond_21f

    .line 240
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_206
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 241
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    if-lez v3, :cond_206

    .line 242
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    .line 248
    :cond_21f
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartBarChart;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    sub-int v13, v1, v2

    .line 252
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    cmpl-float v1, v1, v12

    if-lez v1, :cond_253

    .line 254
    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    int-to-float v3, v13

    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->top:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v6, v0, Lcom/keephealth/android/views/HeartBarChart;->touchPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    :cond_253
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 258
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 260
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDraw...........position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 265
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "%02d"

    invoke-static {v5, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v6, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    if-lez v6, :cond_31a

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v6, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_36f

    .line 270
    :cond_31a
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_320
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 271
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    if-lez v11, :cond_320

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    :cond_36f
    :goto_36f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 279
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 280
    iget v6, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    .line 281
    iget v11, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    .line 282
    iget-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    .line 283
    iget v14, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    add-float/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartBarChart;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v14, v9

    if-lez v9, :cond_3b8

    .line 284
    iget v6, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    sub-float/2addr v6, v3

    .line 285
    iget v9, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    sub-float v11, v9, v5

    .line 287
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    .line 290
    :cond_3b8
    iget v9, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v9, v14

    add-float/2addr v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartBarChart;->getWidth()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v9, v9, v14

    if-lez v9, :cond_3e1

    .line 292
    iget v6, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    sub-float/2addr v6, v3

    .line 293
    iget v9, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    sub-float v11, v9, v5

    .line 294
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    .line 297
    :cond_3e1
    iget v5, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    cmpl-float v9, v5, v12

    if-lez v9, :cond_505

    .line 300
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    const/high16 v14, 0x41300000    # 11.0f

    const/high16 v15, 0x41880000    # 17.0f

    const/high16 v17, 0x40000000    # 2.0f

    if-ne v9, v12, :cond_454

    .line 301
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    int-to-float v12, v13

    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/16 v16, 0x0

    aget v10, v10, v16

    sub-float/2addr v5, v10

    mul-float/2addr v5, v8

    sub-float v5, v12, v5

    invoke-static {v14}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 302
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    iget v9, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/16 v16, 0x0

    aget v10, v10, v16

    sub-float/2addr v9, v10

    mul-float/2addr v9, v8

    sub-float/2addr v12, v9

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v12, v9

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v12, v9

    invoke-static {v15}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v12, v9

    float-to-int v9, v12

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 303
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    float-to-int v9, v6

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 304
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    add-float/2addr v3, v6

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->right:I

    goto :goto_4b6

    .line 306
    :cond_454
    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    int-to-float v10, v13

    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/16 v16, 0x0

    aget v12, v12, v16

    sub-float/2addr v5, v12

    mul-float/2addr v5, v8

    sub-float v5, v10, v5

    invoke-static {v14}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v5, v12

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v5, v12

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v5, v12

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static {v12}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v5, v15

    float-to-int v5, v5

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 307
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    iget v9, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iget-object v15, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float/2addr v9, v15

    mul-float/2addr v9, v8

    sub-float/2addr v10, v9

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->getTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    invoke-static {v12}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    float-to-int v9, v10

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 308
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    float-to-int v9, v11

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 309
    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    add-float/2addr v3, v11

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 312
    :goto_4b6
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->selectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 313
    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->popup:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v13

    .line 314
    iget v5, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v5, v9

    mul-float/2addr v5, v8

    sub-float v5, v3, v5

    invoke-static {v14}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v9}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    int-to-float v9, v10

    sub-float/2addr v5, v9

    invoke-virtual {v7, v4, v11, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    iget v5, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iget-object v9, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v5, v9

    mul-float/2addr v5, v8

    sub-float v5, v3, v5

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v7, v4, v5, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 318
    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->touchY:F

    iget-object v5, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v7, v2, v6, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_505
    return-void
.end method

.method private drawValueAndDottedLine(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    .line 527
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 529
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 530
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->textSize:F

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 532
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 534
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 535
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->textSize:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 536
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    iget-object v1, v0, Lcom/keephealth/android/views/HeartBarChart;->linePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_132

    invoke-direct {v2, v4, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 538
    iget v1, v0, Lcom/keephealth/android/views/HeartBarChart;->chartHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/keephealth/android/views/HeartBarChart;->MAX_VALUE:F

    div-float/2addr v1, v2

    .line 539
    iget-object v2, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 540
    iget v3, v0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/keephealth/android/views/HeartBarChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    .line 542
    iget v4, v0, Lcom/keephealth/android/views/HeartBarChart;->w:I

    sub-int/2addr v4, v3

    iget v5, v0, Lcom/keephealth/android/views/HeartBarChart;->right:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/HeartBarChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    .line 543
    invoke-static {v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    .line 544
    div-int v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v8

    .line 548
    :goto_85
    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    array-length v11, v10

    sub-int/2addr v11, v8

    if-ge v9, v11, :cond_130

    .line 549
    iget v11, v0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    int-to-float v11, v11

    aget v10, v10, v9

    mul-float/2addr v10, v1

    sub-float/2addr v11, v10

    iget v10, v0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v10, v10

    invoke-static {v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v11, v10

    .line 550
    const-string v10, ""

    if-le v9, v8, :cond_c9

    .line 551
    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    aget v14, v14, v9

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v7, v11

    sub-float/2addr v7, v12

    float-to-int v7, v7

    if-gtz v7, :cond_c9

    const/high16 v12, 0x40400000    # 3.0f

    .line 555
    invoke-static {v12}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v12

    sub-int/2addr v7, v12

    int-to-float v7, v7

    add-float/2addr v11, v7

    :cond_c9
    move v7, v11

    .line 559
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/keephealth/android/views/HeartBarChart;->scaleY:[F

    aget v12, v12, v9

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v11, v11

    int-to-float v12, v2

    sub-float v12, v7, v12

    iget-object v13, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v13, v3

    add-int v10, v3, v5

    int-to-float v10, v10

    .line 563
    iget-object v11, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v7

    move v15, v10

    move/from16 v16, v7

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v8

    :goto_ff
    if-gt v11, v6, :cond_12c

    .line 565
    div-int/lit8 v12, v5, 0x2

    int-to-float v12, v12

    add-float v13, v10, v12

    int-to-float v10, v5

    add-float/2addr v10, v13

    add-int v12, v4, v3

    int-to-float v15, v12

    cmpl-float v12, v10, v15

    if-ltz v12, :cond_11c

    .line 569
    iget-object v10, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v7

    move/from16 v16, v7

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_12c

    .line 572
    :cond_11c
    iget-object v15, v0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v7

    move-object/from16 v17, v15

    move v15, v10

    move/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_ff

    :cond_12c
    :goto_12c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_85

    :cond_130
    return-void

    nop

    :array_132
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 8

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 485
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    iget-object v1, p0, Lcom/keephealth/android/views/HeartBarChart;->xLables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    .line 486
    :goto_19
    iget-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->xLables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7f

    if-nez v1, :cond_2b

    .line 488
    iget-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_44

    .line 489
    :cond_2b
    iget-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->xLables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3d

    .line 490
    iget-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_44

    .line 492
    :cond_3d
    iget-object v2, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 495
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/views/HeartBarChart;->xLables:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    mul-int v4, v0, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    iget v5, p0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_7f
    return-void
.end method

.method private drawY(Landroid/graphics/Canvas;)V
    .registers 9

    .line 466
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->yPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 467
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->yPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v2, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->top:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/HeartBarChart;->yPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .registers 3

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->exelPaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->xPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->yPaint:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->hrPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->touchPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private minutToX(II)F
    .registers 3

    mul-int/2addr p1, p2

    .line 686
    div-int/lit16 p1, p1, 0x5a0

    iget p2, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float p2, p2

    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    return p1
.end method

.method private xToMinute(FI)I
    .registers 4

    .line 691
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public doClick(Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;)V
    .registers 2

    .line 718
    iput-object p1, p0, Lcom/keephealth/android/views/HeartBarChart;->clickListener:Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;

    return-void
.end method

.method public isOnclick()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/keephealth/android/views/HeartBarChart;->isOnclick:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->w:I

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->right:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    .line 114
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->bottom:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->top:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->chartHeight:I

    .line 115
    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->chartWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x44b40000    # 1440.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/HeartBarChart;->chartWidthSpan:F

    int-to-float v0, v0

    .line 116
    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->MAX_VALUE:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->chartHeightSpan:F

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/HeartBarChart;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/HeartBarChart;->chartWidthSpan:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->surplusHeight:F

    goto :goto_58

    :cond_55
    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->surplusHeight:F

    .line 124
    :goto_58
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawExelBackground(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawX(Landroid/graphics/Canvas;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawValueAndDottedLine(Landroid/graphics/Canvas;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawY(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawHeartRateValue(Landroid/graphics/Canvas;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartBarChart;->drawTouch(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 104
    iput p1, p0, Lcom/keephealth/android/views/HeartBarChart;->w:I

    .line 105
    iput p2, p0, Lcom/keephealth/android/views/HeartBarChart;->h:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 696
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX:F

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    if-eq v0, v1, :cond_13

    goto :goto_38

    .line 704
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX2:I

    .line 705
    iget v0, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX1:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_38

    const/16 v0, -0xa

    if-le p1, v0, :cond_38

    .line 706
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartBarChart;->isOnclick()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 707
    iget-object p1, p0, Lcom/keephealth/android/views/HeartBarChart;->clickListener:Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;

    invoke-interface {p1}, Lcom/keephealth/android/views/HeartBarChart$TouchOrClickListener;->doClick()V

    goto :goto_38

    .line 701
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/HeartBarChart;->touchX1:I

    .line 712
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartBarChart;->invalidate()V

    return v1
.end method

.method public setIsOnclick(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/keephealth/android/views/HeartBarChart;->isOnclick:Z

    return-void
.end method
