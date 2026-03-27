.class public Lcom/keephealth/android/views/StripeColumnView;
.super Landroid/view/View;
.source "StripeColumnView.java"


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private columnColor:I

.field private columnHeightPercent:F

.field private columnPaint:Landroid/graphics/Paint;

.field private columnSpacingPercent:F

.field private columnWidthDp:F

.field private cornerRadiusDp:F

.field private rectColor:I

.field private rectCornerRadiusDp:F

.field private rectPaint:Landroid/graphics/Paint;

.field private rectWidthPercent:F

.field private stripeAngleSpacingPercent:F

.field private stripeColor:I

.field private stripeHeightPercent:F

.field private stripePaint:Landroid/graphics/Paint;

.field private stripeStartOffsetPercent:F

.field private stripeStrokeWidthDp:F

.field private viewHeightDp:F

.field private viewWidthDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnHeightPercent:F

    const v0, 0x3e3851ec    # 0.18f

    .line 29
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnSpacingPercent:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 31
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeHeightPercent:F

    const v0, 0x3c23d70a    # 0.01f

    .line 32
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeAngleSpacingPercent:F

    const v0, 0x3e19999a    # 0.15f

    .line 34
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->rectWidthPercent:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 36
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->viewHeightDp:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 37
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->viewWidthDp:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnWidthDp:F

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->cornerRadiusDp:F

    .line 42
    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->rectCornerRadiusDp:F

    .line 43
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStartOffsetPercent:F

    .line 49
    const-string p1, "#A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnColor:I

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeColor:I

    .line 51
    const-string p1, "#80A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectColor:I

    .line 52
    const-string p1, "#FFD6D6D6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundColor:I

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/views/StripeColumnView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnHeightPercent:F

    const p2, 0x3e3851ec    # 0.18f

    .line 29
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnSpacingPercent:F

    const p2, 0x3f4ccccd    # 0.8f

    .line 31
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeHeightPercent:F

    const p2, 0x3c23d70a    # 0.01f

    .line 32
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeAngleSpacingPercent:F

    const p2, 0x3e19999a    # 0.15f

    .line 34
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->rectWidthPercent:F

    const/high16 p2, 0x42700000    # 60.0f

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->viewHeightDp:F

    const/high16 p2, 0x43480000    # 200.0f

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->viewWidthDp:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 40
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnWidthDp:F

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->cornerRadiusDp:F

    .line 42
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->rectCornerRadiusDp:F

    .line 43
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStartOffsetPercent:F

    .line 49
    const-string p1, "#A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnColor:I

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeColor:I

    .line 51
    const-string p1, "#80A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectColor:I

    .line 52
    const-string p1, "#FFD6D6D6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundColor:I

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/views/StripeColumnView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnHeightPercent:F

    const p2, 0x3e3851ec    # 0.18f

    .line 29
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnSpacingPercent:F

    const p2, 0x3f4ccccd    # 0.8f

    .line 31
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeHeightPercent:F

    const p2, 0x3c23d70a    # 0.01f

    .line 32
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeAngleSpacingPercent:F

    const p2, 0x3e19999a    # 0.15f

    .line 34
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->rectWidthPercent:F

    const/high16 p2, 0x42700000    # 60.0f

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->viewHeightDp:F

    const/high16 p2, 0x43480000    # 200.0f

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->viewWidthDp:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 40
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnWidthDp:F

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->cornerRadiusDp:F

    .line 42
    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->rectCornerRadiusDp:F

    .line 43
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStartOffsetPercent:F

    .line 49
    const-string p1, "#A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnColor:I

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeColor:I

    .line 51
    const-string p1, "#80A259FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectColor:I

    .line 52
    const-string p1, "#FFD6D6D6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundColor:I

    .line 66
    invoke-direct {p0}, Lcom/keephealth/android/views/StripeColumnView;->init()V

    return-void
.end method

.method private clamp(FFF)F
    .registers 4

    .line 323
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private clamp01(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 319
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private dpToPx(F)F
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private init()V
    .registers 4

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnPaint:Landroid/graphics/Paint;

    .line 71
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/StripeColumnView;->columnColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    .line 75
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    invoke-direct {p0, v2}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->rectPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/StripeColumnView;->rectColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundPaint:Landroid/graphics/Paint;

    .line 84
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 101
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/StripeColumnView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/StripeColumnView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 107
    iget v3, v0, Lcom/keephealth/android/views/StripeColumnView;->columnWidthDp:F

    invoke-direct {v0, v3}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v8

    .line 108
    iget v3, v0, Lcom/keephealth/android/views/StripeColumnView;->cornerRadiusDp:F

    invoke-direct {v0, v3}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v9

    .line 109
    iget v3, v0, Lcom/keephealth/android/views/StripeColumnView;->rectCornerRadiusDp:F

    invoke-direct {v0, v3}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v3

    .line 110
    iget v4, v0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    invoke-direct {v0, v4}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v4

    .line 112
    iget v5, v0, Lcom/keephealth/android/views/StripeColumnView;->columnHeightPercent:F

    mul-float/2addr v5, v2

    .line 113
    iget v6, v0, Lcom/keephealth/android/views/StripeColumnView;->columnSpacingPercent:F

    mul-float/2addr v6, v1

    .line 115
    iget v10, v0, Lcom/keephealth/android/views/StripeColumnView;->stripeHeightPercent:F

    mul-float/2addr v10, v2

    .line 116
    iget v11, v0, Lcom/keephealth/android/views/StripeColumnView;->stripeAngleSpacingPercent:F

    mul-float/2addr v11, v1

    .line 118
    iget v12, v0, Lcom/keephealth/android/views/StripeColumnView;->rectWidthPercent:F

    mul-float/2addr v12, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v2, v13

    div-float v14, v1, v13

    .line 124
    iget v15, v0, Lcom/keephealth/android/views/StripeColumnView;->stripeStartOffsetPercent:F

    mul-float/2addr v15, v1

    add-float/2addr v14, v15

    add-float v15, v14, v6

    div-float/2addr v5, v13

    sub-float v6, v2, v5

    add-float/2addr v5, v2

    div-float v13, v10, v13

    move/from16 v16, v9

    sub-float v9, v2, v13

    add-float/2addr v13, v2

    .line 137
    new-instance v2, Landroid/graphics/RectF;

    move/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct {v2, v5, v9, v1, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/16 v5, 0x8

    move/from16 v19, v6

    .line 139
    new-array v6, v5, [F

    const/16 v20, 0x0

    aput v3, v6, v20

    const/16 v21, 0x1

    aput v3, v6, v21

    const/16 v22, 0x2

    aput v3, v6, v22

    const/16 v23, 0x3

    aput v3, v6, v23

    const/16 v24, 0x4

    aput v3, v6, v24

    const/16 v25, 0x5

    aput v3, v6, v25

    const/16 v26, 0x6

    aput v3, v6, v26

    const/16 v27, 0x7

    aput v3, v6, v27

    .line 145
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 146
    iget-object v2, v0, Lcom/keephealth/android/views/StripeColumnView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    add-float/2addr v12, v1

    .line 151
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v9, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 152
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/16 v6, 0x8

    .line 153
    new-array v6, v6, [F

    aput v3, v6, v20

    aput v3, v6, v21

    aput v1, v6, v22

    aput v1, v6, v23

    aput v1, v6, v24

    aput v1, v6, v25

    aput v3, v6, v26

    aput v3, v6, v27

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v2, v6, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 156
    iget-object v1, v0, Lcom/keephealth/android/views/StripeColumnView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    add-float v6, v14, v8

    .line 164
    invoke-virtual {v7, v6, v9, v15, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 166
    iget-object v1, v0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v1, v6, v10

    move/from16 v18, v1

    :goto_c7
    cmpg-float v1, v18, v15

    if-gez v1, :cond_f5

    add-float v4, v18, v10

    .line 170
    iget-object v5, v0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v13

    move/from16 v20, v10

    move/from16 v10, v17

    move-object/from16 v17, v5

    move v5, v9

    move/from16 v21, v9

    move/from16 v9, v19

    move/from16 v19, v13

    move v13, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v18, v18, v11

    move/from16 v17, v10

    move v6, v13

    move/from16 v13, v19

    move/from16 v10, v20

    move/from16 v19, v9

    move/from16 v9, v21

    goto :goto_c7

    :cond_f5
    move v13, v6

    move/from16 v10, v17

    move/from16 v9, v19

    .line 174
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 177
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v14, v9, v13, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    new-instance v2, Landroid/graphics/RectF;

    add-float/2addr v8, v15

    invoke-direct {v2, v15, v9, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    iget-object v3, v0, Lcom/keephealth/android/views/StripeColumnView;->columnPaint:Landroid/graphics/Paint;

    move/from16 v4, v16

    invoke-virtual {v7, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 180
    iget-object v1, v0, Lcom/keephealth/android/views/StripeColumnView;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 90
    iget v0, p0, Lcom/keephealth/android/views/StripeColumnView;->viewWidthDp:F

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 91
    iget v1, p0, Lcom/keephealth/android/views/StripeColumnView;->viewHeightDp:F

    invoke-direct {p0, v1}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 93
    invoke-static {v0, p1}, Lcom/keephealth/android/views/StripeColumnView;->resolveSize(II)I

    move-result p1

    .line 94
    invoke-static {v1, p2}, Lcom/keephealth/android/views/StripeColumnView;->resolveSize(II)I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/StripeColumnView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColorCustom(I)V
    .registers 3

    .line 311
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundColor:I

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setColumnColor(I)V
    .registers 3

    .line 293
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnColor:I

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setColumnHeightPercent(F)V
    .registers 2

    .line 213
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->clamp01(F)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnHeightPercent:F

    .line 214
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setColumnSpacingPercent(F)V
    .registers 2

    .line 221
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->clamp01(F)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnSpacingPercent:F

    .line 222
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setColumnWidthDp(F)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->columnWidthDp:F

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDp(F)V
    .registers 2

    .line 261
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->cornerRadiusDp:F

    .line 262
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setRectColor(I)V
    .registers 3

    .line 305
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectColor:I

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setRectCornerRadiusDp(F)V
    .registers 2

    .line 269
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectCornerRadiusDp:F

    .line 270
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setRectWidthPercent(F)V
    .registers 2

    .line 245
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->clamp01(F)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->rectWidthPercent:F

    .line 246
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setStripeAngleSpacingPercent(F)V
    .registers 2

    .line 237
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->clamp01(F)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeAngleSpacingPercent:F

    .line 238
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setStripeColor(I)V
    .registers 3

    .line 299
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeColor:I

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setStripeHeightPercent(F)V
    .registers 2

    .line 229
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->clamp01(F)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeHeightPercent:F

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setStripeStartOffsetPercent(F)V
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 286
    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/StripeColumnView;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStartOffsetPercent:F

    .line 287
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setStripeStrokeWidthDp(F)V
    .registers 3

    .line 277
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->stripeStrokeWidthDp:F

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/views/StripeColumnView;->stripePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/StripeColumnView;->dpToPx(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->invalidate()V

    return-void
.end method

.method public setViewHeightDp(F)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->viewHeightDp:F

    .line 206
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->requestLayout()V

    return-void
.end method

.method public setViewWidthDp(F)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/keephealth/android/views/StripeColumnView;->viewWidthDp:F

    .line 198
    invoke-virtual {p0}, Lcom/keephealth/android/views/StripeColumnView;->requestLayout()V

    return-void
.end method
