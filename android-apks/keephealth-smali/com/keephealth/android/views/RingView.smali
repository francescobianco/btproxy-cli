.class public Lcom/keephealth/android/views/RingView;
.super Landroid/view/View;
.source "RingView.java"


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private progress:I

.field private radius:F

.field private ringColor:I

.field private ringPaint:Landroid/graphics/Paint;

.field private ringProgressColor:I

.field private ringWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    .line 37
    iput p1, p0, Lcom/keephealth/android/views/RingView;->progress:I

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/R$styleable;->CircleProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060050

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/RingView;->ringColor:I

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060041

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/RingView;->ringProgressColor:I

    const/4 p2, 0x2

    const/16 v0, 0x12

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    .line 45
    invoke-direct {p0}, Lcom/keephealth/android/views/RingView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/RingView;->ringPaint:Landroid/graphics/Paint;

    .line 50
    iget v1, p0, Lcom/keephealth/android/views/RingView;->ringProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/RingView;->ringPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/views/RingView;->ringPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/RingView;->ringPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/RingView;->circlePaint:Landroid/graphics/Paint;

    .line 56
    iget v1, p0, Lcom/keephealth/android/views/RingView;->ringColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/views/RingView;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/views/RingView;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/keephealth/android/views/RingView;->radius:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 79
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 80
    iget v3, p0, Lcom/keephealth/android/views/RingView;->radius:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->left:F

    .line 81
    iget v3, p0, Lcom/keephealth/android/views/RingView;->radius:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->top:F

    .line 82
    iget v3, p0, Lcom/keephealth/android/views/RingView;->radius:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 83
    iget v0, p0, Lcom/keephealth/android/views/RingView;->radius:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/keephealth/android/views/RingView;->ringWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    iput v2, v9, Landroid/graphics/RectF;->bottom:F

    .line 84
    iget v0, p0, Lcom/keephealth/android/views/RingView;->progress:I

    int-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v7, 0x0

    .line 86
    iget-object v8, p0, Lcom/keephealth/android/views/RingView;->circlePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v3, p1

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    int-to-float v6, v0

    .line 87
    iget-object v8, p0, Lcom/keephealth/android/views/RingView;->ringPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 67
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 68
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/RingView;->radius:F

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/RingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    .line 92
    iput p1, p0, Lcom/keephealth/android/views/RingView;->progress:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setProgress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u4efb\u52a1"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/views/RingView;->invalidate()V

    return-void
.end method
