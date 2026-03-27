.class public Lcom/keephealth/android/views/CountDownProgressBar;
.super Landroid/view/View;
.source "CountDownProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;
    }
.end annotation


# instance fields
.field private alphaAngle:F

.field private animator:Landroid/animation/ValueAnimator;

.field private centerTextColor:I

.field private centerTextSize:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleWidth:I

.field private colorArray:[I

.field private currentValue:I

.field private duration:I

.field private firstColor:I

.field private isShowGradient:Z

.field private listener:Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;

.field private maxValue:I

.field private secondColor:I

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/CountDownProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/CountDownProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xc8

    .line 27
    iput v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->maxValue:I

    const v0, -0xffff01

    .line 51
    iput v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextColor:I

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->isShowGradient:Z

    .line 79
    const-string v2, "#2773FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#27C0D2"

    .line 80
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#40C66E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->colorArray:[I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/keephealth/android/R$styleable;->CountDownProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move p3, v1

    :goto_36
    if-ge p3, p2, :cond_7d

    .line 103
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_a8

    goto :goto_7a

    .line 109
    :pswitch_40
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->secondColor:I

    goto :goto_7a

    .line 121
    :pswitch_47
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->isShowGradient:Z

    goto :goto_7a

    :pswitch_4e
    const v3, -0x333334

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->firstColor:I

    goto :goto_7a

    :pswitch_58
    const/high16 v3, 0x40c00000    # 6.0f

    .line 115
    invoke-static {v3}, Lcom/keephealth/android/views/CountDownProgressBar;->dip2px(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    goto :goto_7a

    :pswitch_66
    const/high16 v3, 0x42200000    # 40.0f

    .line 112
    invoke-static {v3}, Lcom/keephealth/android/views/CountDownProgressBar;->dip2px(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextSize:I

    goto :goto_7a

    .line 118
    :pswitch_74
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextColor:I

    :goto_7a
    add-int/lit8 p3, p3, 0x1

    goto :goto_36

    .line 127
    :cond_7d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 130
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_74
        :pswitch_66
        :pswitch_58
        :pswitch_4e
        :pswitch_47
        :pswitch_40
    .end packed-switch
.end method

.method public static dip2px(F)F
    .registers 2

    .line 316
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method public static dp2px(I)I
    .registers 2

    .line 310
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 167
    iget-object v3, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 168
    iget-object v3, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/keephealth/android/views/CountDownProgressBar;->firstColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v3, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, v1

    int-to-float v4, v2

    .line 170
    iget-object v5, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual {v6, v3, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    new-instance v7, Landroid/graphics/RectF;

    sub-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v7, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 172
    iget-boolean v1, v0, Lcom/keephealth/android/views/CountDownProgressBar;->isShowGradient:Z

    if-eqz v1, :cond_55

    .line 175
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    int-to-float v9, v2

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    sub-int/2addr v2, v3

    int-to-float v12, v2

    iget-object v13, v0, Lcom/keephealth/android/views/CountDownProgressBar;->colorArray:[I

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 177
    iget-object v2, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    :cond_55
    iget-object v1, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/keephealth/android/views/CountDownProgressBar;->secondColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v1, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget v1, v0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/keephealth/android/views/CountDownProgressBar;->maxValue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v9, v1, v2

    iput v9, v0, Lcom/keephealth/android/views/CountDownProgressBar;->alphaAngle:F

    const/4 v10, 0x0

    .line 184
    iget-object v11, v0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;I)V
    .registers 9

    .line 203
    iget v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->maxValue:I

    iget v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    sub-int v2, v0, v1

    iget v3, p0, Lcom/keephealth/android/views/CountDownProgressBar;->duration:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    if-ne v0, v1, :cond_19

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "\u5b8c\u6210"

    goto :goto_6b

    .line 209
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, v2, 0x3c

    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v1, v4, :cond_34

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v2, v2, 0x3c

    if-ge v2, v4, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    :cond_54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextSize:I

    div-int/lit8 v3, v2, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    :goto_6b
    iget-object v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    iget-object v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->centerTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 218
    iget-object v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 219
    iget-object v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 220
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v1

    int-to-float p2, p2

    int-to-float v1, v2

    .line 221
    iget-object v2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setDuration$0$com-keephealth-android-views-CountDownProgressBar(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 287
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    .line 289
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->invalidate()V

    .line 290
    iget p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->maxValue:I

    iget v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->listener:Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    .line 292
    invoke-interface {p1}, Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;->onFinish()V

    :cond_1f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 154
    iget v1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 155
    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/CountDownProgressBar;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/CountDownProgressBar;->drawText(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 142
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 145
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 146
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 147
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/CountDownProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->currentValue:I

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->listener:Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;

    return-void
.end method

.method public setCircleWidth(I)V
    .registers 4

    int-to-float p1, p1

    .line 231
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 231
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circleWidth:I

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->invalidate()V

    return-void
.end method

.method public setColorArray([I)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->colorArray:[I

    .line 270
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->invalidate()V

    return-void
.end method

.method public setDuration(ILcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;)V
    .registers 5

    .line 280
    iput-object p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->listener:Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;

    add-int/lit16 p2, p1, 0x3e8

    .line 281
    iput p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->duration:I

    .line 282
    iget-object p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_e

    .line 283
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2d

    :cond_e
    const/4 p2, 0x0

    .line 285
    iget v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->maxValue:I

    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    .line 286
    new-instance v0, Lcom/keephealth/android/views/CountDownProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/CountDownProgressBar$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/CountDownProgressBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    iget-object p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    :goto_2d
    iget-object p2, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setFirstColor(I)V
    .registers 3

    .line 244
    iput p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->firstColor:I

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->invalidate()V

    return-void
.end method

.method public setOnFinishListener(Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->listener:Lcom/keephealth/android/views/CountDownProgressBar$OnFinishListener;

    return-void
.end method

.method public setSecondColor(I)V
    .registers 3

    .line 256
    iput p1, p0, Lcom/keephealth/android/views/CountDownProgressBar;->secondColor:I

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/views/CountDownProgressBar;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-virtual {p0}, Lcom/keephealth/android/views/CountDownProgressBar;->invalidate()V

    return-void
.end method
