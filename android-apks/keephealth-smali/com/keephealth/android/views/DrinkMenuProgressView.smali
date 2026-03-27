.class public Lcom/keephealth/android/views/DrinkMenuProgressView;
.super Landroid/view/View;
.source "DrinkMenuProgressView.java"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private centerBitmap:Landroid/graphics/Bitmap;

.field private imagePaint:Landroid/graphics/Paint;

.field private progress:F

.field private progressPaint:Landroid/graphics/Paint;

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 17
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progress:F

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 17
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progress:F

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 17
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progress:F

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->backgroundPaint:Landroid/graphics/Paint;

    .line 39
    const-string v1, "#DCEFFE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    .line 46
    const-string v2, "#3DB4FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->imagePaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 59
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->strokeWidth:F

    sub-float/2addr v4, v5

    .line 66
    iget-object v5, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->centerBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_48

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v4

    div-float v2, v5, v2

    sub-float v6, v1, v2

    sub-float v2, v3, v2

    .line 70
    new-instance v7, Landroid/graphics/RectF;

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v6, v8

    add-float v8, v6, v5

    add-float/2addr v5, v2

    invoke-direct {v7, v6, v2, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    iget-object v2, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->centerBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->imagePaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v2, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4a

    :cond_48
    move-object/from16 v15, p1

    :goto_4a
    sub-float v2, v1, v4

    sub-float v5, v3, v4

    add-float/2addr v1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 74
    iget-object v6, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const/high16 v14, 0x43b40000    # 360.0f

    move-object/from16 v8, p1

    move v9, v2

    move v10, v5

    move v11, v1

    move v12, v3

    move v15, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 79
    iget v4, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progress:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v14, v4, v6

    const/4 v15, 0x0

    iget-object v4, v0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v13, -0x3d4c0000    # -90.0f

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCenterBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->centerBitmap:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/keephealth/android/views/DrinkMenuProgressView;->progress:F

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkMenuProgressView;->invalidate()V

    return-void
.end method
