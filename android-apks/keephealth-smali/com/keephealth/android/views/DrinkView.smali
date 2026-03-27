.class public Lcom/keephealth/android/views/DrinkView;
.super Landroid/widget/FrameLayout;
.source "DrinkView.java"


# instance fields
.field private bottomTextView:Landroid/widget/TextView;

.field private innerCircleDiameter:I

.field private middleTextView:Landroid/widget/TextView;

.field private progress:F

.field private progressPaint:Landroid/graphics/Paint;

.field private progressWidth:I

.field private ringPaint:Landroid/graphics/Paint;

.field private ringWidth:I

.field private solidCircleDiameter:I

.field private solidCirclePaint:Landroid/graphics/Paint;

.field private topTextView:Landroid/widget/TextView;

.field private waveAnimator1:Landroid/animation/ValueAnimator;

.field private waveAnimator2:Landroid/animation/ValueAnimator;

.field private waveAnimator3:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x14

    .line 22
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->ringWidth:I

    .line 23
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progressWidth:I

    const/16 p1, 0x280

    .line 24
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    const/16 p1, 0x258

    .line 25
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->solidCircleDiameter:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progress:F

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x14

    .line 22
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->ringWidth:I

    .line 23
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progressWidth:I

    const/16 p1, 0x280

    .line 24
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    const/16 p1, 0x258

    .line 25
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->solidCircleDiameter:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progress:F

    .line 39
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    .line 22
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->ringWidth:I

    .line 23
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progressWidth:I

    const/16 p1, 0x280

    .line 24
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    const/16 p1, 0x258

    .line 25
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->solidCircleDiameter:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progress:F

    .line 44
    invoke-direct {p0}, Lcom/keephealth/android/views/DrinkView;->init()V

    return-void
.end method

.method private init()V
    .registers 6

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/DrinkView;->setWillNotDraw(Z)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->ringPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->ringPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->ringPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->ringPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    .line 58
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/DrinkView;->progressWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v0, Landroid/graphics/SweepGradient;

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v3, v4, v2, v2}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 66
    iget-object v3, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->solidCirclePaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->solidCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->solidCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    .line 78
    const-string v1, "Top Text"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/DrinkView;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    .line 85
    const-string v3, "Middle Text"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/DrinkView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    .line 92
    const-string v3, "Bottom Text"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/DrinkView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/DrinkView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 124
    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->progress:F

    mul-float v8, v1, v0

    .line 126
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 127
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 128
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 129
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/DrinkView;->innerCircleDiameter:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/keephealth/android/views/DrinkView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v2, p1

    .line 125
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/DrinkView;->solidCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/DrinkView;->solidCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 104
    iget-object p3, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int p4, p1, p4

    div-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/keephealth/android/views/DrinkView;->topTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x32

    add-int/2addr v1, v2

    .line 104
    invoke-virtual {p3, p4, v2, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 107
    iget-object p3, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int p4, p1, p4

    div-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/keephealth/android/views/DrinkView;->middleTextView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    .line 107
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 112
    iget-object p3, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int p4, p1, p4

    div-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, -0x22

    iget-object v1, p0, Lcom/keephealth/android/views/DrinkView;->bottomTextView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, -0x22

    .line 112
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public setProgress(F)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/keephealth/android/views/DrinkView;->progress:F

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/views/DrinkView;->invalidate()V

    return-void
.end method
