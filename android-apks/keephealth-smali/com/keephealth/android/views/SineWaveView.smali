.class public Lcom/keephealth/android/views/SineWaveView;
.super Landroid/view/View;
.source "SineWaveView.java"


# instance fields
.field private amplitude:F

.field public centerText:Ljava/lang/String;

.field public centerText2:Ljava/lang/String;

.field public centerText3:Ljava/lang/String;

.field private frequency:F

.field private innerCircleDiameter:I

.field private lowerFillPaint1:Landroid/graphics/Paint;

.field private lowerFillPaint2:Landroid/graphics/Paint;

.field private lowerFillPaint3:Landroid/graphics/Paint;

.field private phase1:F

.field private phase2:F

.field private phase3:F

.field private progress:F

.field private progressPaint:Landroid/graphics/Paint;

.field private progressWidth:I

.field private ringPaint:Landroid/graphics/Paint;

.field private ringWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field private textPaint2:Landroid/graphics/Paint;

.field private textPaint3:Landroid/graphics/Paint;

.field private wavePaint1:Landroid/graphics/Paint;

.field private wavePaint2:Landroid/graphics/Paint;

.field private wavePaint3:Landroid/graphics/Paint;

.field private wavePath1:Landroid/graphics/Path;

.field private wavePath2:Landroid/graphics/Path;

.field private wavePath3:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 25
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->amplitude:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->frequency:F

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    .line 29
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    const/16 p1, 0x1e

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->ringWidth:I

    .line 34
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->progressWidth:I

    const/16 p1, 0x28a

    .line 35
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->progress:F

    .line 40
    const-string p1, "0"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText:Ljava/lang/String;

    .line 41
    const-string p1, "\u5269\u4f59"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText2:Ljava/lang/String;

    .line 42
    const-string p1, "0ml"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText3:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/keephealth/android/views/SineWaveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 25
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->amplitude:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->frequency:F

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    .line 28
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    .line 29
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    const/16 p1, 0x1e

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->ringWidth:I

    .line 34
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->progressWidth:I

    const/16 p1, 0x28a

    .line 35
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->progress:F

    .line 40
    const-string p1, "0"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText:Ljava/lang/String;

    .line 41
    const-string p1, "\u5269\u4f59"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText2:Ljava/lang/String;

    .line 42
    const-string p1, "0ml"

    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText3:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/keephealth/android/views/SineWaveView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/SineWaveView;)F
    .registers 1

    .line 20
    iget p0, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    return p0
.end method

.method static synthetic access$016(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    return v0
.end method

.method static synthetic access$024(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    return v0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/SineWaveView;)F
    .registers 1

    .line 20
    iget p0, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    return p0
.end method

.method static synthetic access$116(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    return v0
.end method

.method static synthetic access$124(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    return v0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/SineWaveView;)F
    .registers 1

    .line 20
    iget p0, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    return p0
.end method

.method static synthetic access$216(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    return v0
.end method

.method static synthetic access$224(Lcom/keephealth/android/views/SineWaveView;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    return v0
.end method

.method private drawWaveAndFill(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Paint;IIIIIF)V
    .registers 16

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    int-to-float p7, p5

    int-to-float p8, p8

    .line 225
    invoke-virtual {p2, p7, p8}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_8
    if-gt p5, p6, :cond_23

    .line 231
    iget p9, p0, Lcom/keephealth/android/views/SineWaveView;->amplitude:F

    int-to-float v0, p5

    add-float v1, v0, p10

    float-to-double v1, v1

    const-wide v3, 0x3f857254c2c98977L    # 0.010471975511965976

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p9, v1

    add-float/2addr p9, p8

    .line 232
    invoke-virtual {p2, v0, p9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_8

    :cond_23
    int-to-float p5, p6

    .line 236
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p2, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p7, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 239
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 242
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 6

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint1:Landroid/graphics/Paint;

    .line 69
    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint1:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint2:Landroid/graphics/Paint;

    .line 74
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint3:Landroid/graphics/Paint;

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePaint3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint1:Landroid/graphics/Paint;

    .line 85
    const-string v1, "#543DB4FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint2:Landroid/graphics/Paint;

    .line 88
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint3:Landroid/graphics/Paint;

    .line 91
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePath1:Landroid/graphics/Path;

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePath2:Landroid/graphics/Path;

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->wavePath3:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    .line 102
    const-string v1, "#377398"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SineWaveView;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    .line 108
    const-string v2, "#3DB4FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/keephealth/android/views/SineWaveView;->progressWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    new-instance v0, Landroid/graphics/SweepGradient;

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 116
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/SFProRoundedMedium.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    .line 134
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 140
    invoke-direct {p0}, Lcom/keephealth/android/views/SineWaveView;->startWaveAnimation()V

    return-void
.end method

.method private startWaveAnimation()V
    .registers 7

    const/4 v0, 0x2

    .line 281
    new-array v1, v0, [F

    fill-array-data v1, :array_54

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 283
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 284
    new-instance v5, Lcom/keephealth/android/views/SineWaveView$1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/views/SineWaveView$1;-><init>(Lcom/keephealth/android/views/SineWaveView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 295
    new-array v1, v0, [F

    fill-array-data v1, :array_5c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 298
    new-instance v5, Lcom/keephealth/android/views/SineWaveView$2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/views/SineWaveView$2;-><init>(Lcom/keephealth/android/views/SineWaveView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 309
    new-array v0, v0, [F

    fill-array-data v0, :array_64

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 312
    new-instance v1, Lcom/keephealth/android/views/SineWaveView$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/SineWaveView$3;-><init>(Lcom/keephealth/android/views/SineWaveView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_54
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 145
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getWidth()I

    move-result v0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result v1

    .line 150
    div-int/lit8 v13, v0, 0x2

    .line 151
    div-int/lit8 v14, v1, 0x2

    int-to-double v0, v13

    const-wide v2, 0x3ffa666666666666L    # 1.65

    div-double/2addr v0, v2

    double-to-int v15, v0

    int-to-double v9, v15

    const-wide v0, 0x3fa90624dd2f1aa0L    # 0.048875

    mul-double/2addr v0, v9

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 153
    iput v0, v11, Lcom/keephealth/android/views/SineWaveView;->ringWidth:I

    .line 154
    iput v0, v11, Lcom/keephealth/android/views/SineWaveView;->progressWidth:I

    .line 155
    iget-object v1, v11, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    iget v1, v11, Lcom/keephealth/android/views/SineWaveView;->progressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-int/lit8 v0, v15, 0x2

    int-to-double v0, v0

    const-wide v4, 0x3f953cddd6e04c06L    # 0.02074

    mul-double/2addr v4, v9

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    .line 157
    iget v2, v11, Lcom/keephealth/android/views/SineWaveView;->ringWidth:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v16, 0x40000000    # 2.0f

    div-float v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v16

    iget v2, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    int-to-float v2, v2

    div-float v2, v2, v16

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 162
    iget v1, v11, Lcom/keephealth/android/views/SineWaveView;->progress:F

    mul-float v6, v1, v0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getWidth()I

    move-result v0

    iget v1, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v1, v0, v16

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result v0

    iget v2, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v2, v0, v16

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getWidth()I

    move-result v0

    iget v3, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float v3, v0, v16

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SineWaveView;->getHeight()I

    move-result v0

    iget v4, v11, Lcom/keephealth/android/views/SineWaveView;->innerCircleDiameter:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float v4, v0, v16

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/keephealth/android/views/SineWaveView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p1

    .line 163
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sub-int v17, v13, v15

    add-int v18, v13, v15

    .line 181
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float v8, v13

    int-to-float v7, v14

    int-to-float v6, v15

    .line 182
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v8, v7, v6, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 185
    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 189
    const-string v1, "#377398"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    invoke-virtual {v12, v8, v7, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    iget v0, v11, Lcom/keephealth/android/views/SineWaveView;->progress:F

    mul-float/2addr v0, v6

    mul-float v0, v0, v16

    float-to-int v0, v0

    .line 194
    iget-object v2, v11, Lcom/keephealth/android/views/SineWaveView;->wavePath1:Landroid/graphics/Path;

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->wavePaint1:Landroid/graphics/Paint;

    iget-object v4, v11, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint1:Landroid/graphics/Paint;

    add-int v1, v14, v15

    sub-int v19, v1, v0

    iget v5, v11, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v20, v5

    move/from16 v5, v17

    move/from16 v21, v6

    move/from16 v6, v18

    move/from16 v22, v7

    move v7, v13

    move/from16 v23, v8

    move/from16 v8, v19

    move-wide/from16 v24, v9

    move v9, v15

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/views/SineWaveView;->drawWaveAndFill(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Paint;IIIIIF)V

    .line 195
    iget-object v2, v11, Lcom/keephealth/android/views/SineWaveView;->wavePath2:Landroid/graphics/Path;

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->wavePaint2:Landroid/graphics/Paint;

    iget-object v4, v11, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint2:Landroid/graphics/Paint;

    iget v10, v11, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/views/SineWaveView;->drawWaveAndFill(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Paint;IIIIIF)V

    .line 196
    iget-object v2, v11, Lcom/keephealth/android/views/SineWaveView;->wavePath3:Landroid/graphics/Path;

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->wavePaint3:Landroid/graphics/Paint;

    iget-object v4, v11, Lcom/keephealth/android/views/SineWaveView;->lowerFillPaint3:Landroid/graphics/Paint;

    iget v10, v11, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/views/SineWaveView;->drawWaveAndFill(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Paint;IIIIIF)V

    .line 198
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    div-float v6, v21, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    div-float v6, v21, v1

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->centerText:Ljava/lang/String;

    int-to-double v1, v14

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    div-float v3, v3, v16

    float-to-double v3, v3

    add-double/2addr v3, v1

    double-to-float v3, v3

    iget-object v4, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    move/from16 v5, v23

    invoke-virtual {v12, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->centerText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 209
    iget-object v3, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    div-float v0, v0, v16

    add-float v8, v5, v0

    float-to-double v2, v8

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v9, v24, v6

    add-double/2addr v2, v9

    double-to-float v0, v2

    .line 212
    iget-object v2, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint3:Landroid/graphics/Paint;

    const-string v3, "%"

    invoke-virtual {v12, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 215
    iget-object v0, v11, Lcom/keephealth/android/views/SineWaveView;->centerText3:Ljava/lang/String;

    iget-object v1, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v7, v22, v1

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v7, v1

    iget-object v1, v11, Lcom/keephealth/android/views/SineWaveView;->textPaint2:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v5, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAmplitude(F)V
    .registers 2

    .line 259
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->amplitude:F

    .line 260
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText:Ljava/lang/String;

    return-void
.end method

.method public setCenterText2(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText2:Ljava/lang/String;

    return-void
.end method

.method public setCenterText3(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/SineWaveView;->centerText3:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(F)V
    .registers 2

    .line 265
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->frequency:F

    .line 266
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method

.method public setPhase(FFF)V
    .registers 4

    .line 271
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->phase1:F

    .line 272
    iput p2, p0, Lcom/keephealth/android/views/SineWaveView;->phase2:F

    .line 273
    iput p3, p0, Lcom/keephealth/android/views/SineWaveView;->phase3:F

    .line 274
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    move p1, v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_d

    move p1, v0

    .line 253
    :cond_d
    iput p1, p0, Lcom/keephealth/android/views/SineWaveView;->progress:F

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/views/SineWaveView;->invalidate()V

    return-void
.end method
