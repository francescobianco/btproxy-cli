.class public Lcom/keephealth/android/views/SportPieView;
.super Landroid/widget/RelativeLayout;
.source "SportPieView.java"


# static fields
.field private static final PIE_RADIUS_SCALE:F = 0.4347826f

.field private static final SPACE_SCALE:F = 0.006521739f


# instance fields
.field private SWEEP_COLOR:[I

.field anim:Landroid/animation/ObjectAnimator;

.field animCount:I

.field private bgColor:I

.field private bigScreenHeight:I

.field private defaultHeight:I

.field private finishAfterBitmap:Landroid/graphics/Bitmap;

.field private finishBeforeBitmap:Landroid/graphics/Bitmap;

.field private firstTime:J

.field private gradient:Landroid/graphics/SweepGradient;

.field private h:I

.field private height:F

.field private imageview:Landroid/widget/ImageView;

.field private isDrawingEnabled:Z

.field private largeScreenHeight:I

.field linearGradient:Landroid/graphics/LinearGradient;

.field private mContext:Landroid/content/Context;

.field private minSize:F

.field private outRadius:F

.field private outsidePaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private pieColor:I

.field private pieRadius:F

.field private progress:I

.field private radTopPadding:F

.field private radius:F

.field private rectF:Landroid/graphics/RectF;

.field private redPaint:Landroid/graphics/Paint;

.field private ringPain2:Landroid/graphics/Paint;

.field private ringPaint:Landroid/graphics/Paint;

.field private ringWidth:F

.field private save:Z

.field private space:F

.field private sportGoal:I

.field private sportStep:I

.field private stepView:Landroid/widget/TextView;

.field sweepGradient:Landroid/graphics/SweepGradient;

.field private textSize:F

.field private twokScreenHeight:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->sportGoal:I

    .line 73
    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    const/16 v1, 0x2ee

    .line 77
    iput v1, p0, Lcom/keephealth/android/views/SportPieView;->defaultHeight:I

    const/16 v1, 0x30c

    .line 78
    iput v1, p0, Lcom/keephealth/android/views/SportPieView;->bigScreenHeight:I

    const/16 v1, 0x3b6

    .line 79
    iput v1, p0, Lcom/keephealth/android/views/SportPieView;->largeScreenHeight:I

    const/16 v1, 0x3e8

    .line 80
    iput v1, p0, Lcom/keephealth/android/views/SportPieView;->twokScreenHeight:I

    const-wide/16 v1, 0x0

    .line 209
    iput-wide v1, p0, Lcom/keephealth/android/views/SportPieView;->firstTime:J

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, p0, Lcom/keephealth/android/views/SportPieView;->save:Z

    .line 289
    iput-boolean v1, p0, Lcom/keephealth/android/views/SportPieView;->isDrawingEnabled:Z

    .line 376
    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->animCount:I

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c014e

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SportPieView;->setWillNotDraw(Z)V

    const v2, 0x7f09059e

    .line 95
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/SportPieView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/keephealth/android/views/SportPieView;->imageview:Landroid/widget/ImageView;

    const v2, 0x7f090118

    .line 96
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/SportPieView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/keephealth/android/views/SportPieView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/PingFangMediumDowncc.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 100
    sget-object v1, Lcom/keephealth/android/R$styleable;->SportPieView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/SportPieView;->pieColor:I

    const p2, -0x4d0e0eff

    .line 103
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/SportPieView;->bgColor:I

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005b

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->finishAfterBitmap:Landroid/graphics/Bitmap;

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/views/SportPieView;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/views/SportPieView;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_a1

    iget-object p1, p0, Lcom/keephealth/android/views/SportPieView;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_a7

    :cond_a1
    iget-object p1, p0, Lcom/keephealth/android/views/SportPieView;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_a7
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 111
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->radTopPadding:F

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/keephealth/android/views/SportPieView;->firstTime:J

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06013b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06013c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    filled-new-array {p1, p2, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->SWEEP_COLOR:[I

    .line 115
    invoke-direct {p0}, Lcom/keephealth/android/views/SportPieView;->initPaint()V

    return-void
.end method

.method private getCurrentPresent()I
    .registers 4

    .line 191
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->sportGoal:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_14

    :cond_7
    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_14
    double-to-int v0, v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "present:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tftr5"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getProgress()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    return v0
.end method

.method private getSpanText(I)Landroid/text/SpannableString;
    .registers 8

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 239
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->isOver6Inch(Landroid/app/Activity;)Z

    move-result v3

    const/16 v4, 0x2710

    const/16 v5, 0x21

    if-eqz v3, :cond_6d

    if-lt p1, v4, :cond_61

    .line 242
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, p1, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 244
    :cond_61
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x400ccccd    # 2.2f

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, p1, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    :cond_6d
    if-lt p1, v4, :cond_7b

    .line 249
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f666666    # 0.9f

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, p1, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 251
    :cond_7b
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3fa66666    # 1.3f

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2, p1, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_86
    return-object v2
.end method

.method private initPaint()V
    .registers 4

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->paint:Landroid/graphics/Paint;

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->rectF:Landroid/graphics/RectF;

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    .line 127
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    .line 130
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    .line 135
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    .line 139
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->SWEEP_COLOR:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SportPieView;->setWillNotDraw(Z)V

    return-void
.end method

.method private setShader(I)V
    .registers 2

    return-void
.end method

.method private setSteps2View(I)V
    .registers 4

    .line 216
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportPieView;->getSpanText(I)Landroid/text/SpannableString;

    const v0, 0x186a0

    if-lt p1, v0, :cond_10

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_23

    :cond_10
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1c

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_23

    .line 222
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSteps2View: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->radTopPadding:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6b65\u6570\u7ed8\u52362"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->invalidate()V

    return-void
.end method

.method private updateProgress(Z)V
    .registers 3

    .line 198
    invoke-direct {p0}, Lcom/keephealth/android/views/SportPieView;->getCurrentPresent()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    if-eqz p1, :cond_9

    goto :goto_c

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->invalidate()V

    :goto_c
    return-void
.end method


# virtual methods
.method synthetic lambda$startAnim$0$com-keephealth-android-views-SportPieView(ILandroid/animation/ValueAnimator;)V
    .registers 5

    .line 399
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    .line 401
    iget p1, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    if-ltz p1, :cond_24

    .line 405
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportPieView;->getSpanText(I)Landroid/text/SpannableString;

    move-result-object p1

    .line 406
    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    cmpl-float p1, p2, v0

    if-nez p1, :cond_37

    .line 410
    iget p1, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportPieView;->getSpanText(I)Landroid/text/SpannableString;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/keephealth/android/views/SportPieView;->stepView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 303
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/SportPieView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    iget v2, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    iget v4, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    sub-float v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/SportPieView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 331
    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/SportPieView;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, -0x3d400000    # -96.0f

    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 332
    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->sweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v1, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    iget v3, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->sweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 335
    iget-object v3, p0, Lcom/keephealth/android/views/SportPieView;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 262
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->w:I

    .line 263
    iput p2, p0, Lcom/keephealth/android/views/SportPieView;->h:I

    .line 264
    iget-boolean p3, p0, Lcom/keephealth/android/views/SportPieView;->save:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_e

    .line 265
    iput-boolean p4, p0, Lcom/keephealth/android/views/SportPieView;->save:Z

    .line 267
    :cond_e
    iget p3, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    invoke-direct {p0, p3}, Lcom/keephealth/android/views/SportPieView;->setShader(I)V

    if-ge p1, p2, :cond_17

    int-to-float p3, p1

    goto :goto_18

    :cond_17
    int-to-float p3, p2

    .line 269
    :goto_18
    iput p3, p0, Lcom/keephealth/android/views/SportPieView;->minSize:F

    .line 270
    iput p3, p0, Lcom/keephealth/android/views/SportPieView;->height:F

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_24

    .line 272
    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->minSize:F

    .line 274
    :cond_24
    iget p3, p0, Lcom/keephealth/android/views/SportPieView;->minSize:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    iget v2, p0, Lcom/keephealth/android/views/SportPieView;->radTopPadding:F

    div-float v3, v2, v0

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    div-float/2addr p3, v0

    sub-float/2addr p3, v2

    div-float/2addr v2, v0

    sub-float/2addr p3, v2

    .line 275
    iput p3, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    .line 276
    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iput p3, p0, Lcom/keephealth/android/views/SportPieView;->radius:F

    .line 278
    iget p3, p0, Lcom/keephealth/android/views/SportPieView;->radTopPadding:F

    iput p3, p0, Lcom/keephealth/android/views/SportPieView;->ringWidth:F

    .line 279
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->ringPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 282
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/keephealth/android/views/SportPieView;->SWEEP_COLOR:[I

    aget p4, v1, p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->ringPain2:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_d6

    const/4 v3, 0x0

    invoke-direct {p4, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 284
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/keephealth/android/views/SportPieView;->ringWidth:F

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "outRadius:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ",pieRadius:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ",radius:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcom/keephealth/android/views/SportPieView;->radius:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    iget-object p3, p0, Lcom/keephealth/android/views/SportPieView;->rectF:Landroid/graphics/RectF;

    int-to-float p4, p1

    div-float/2addr p4, v0

    iget v2, p0, Lcom/keephealth/android/views/SportPieView;->radius:F

    sub-float/2addr p4, v2

    iget v3, p0, Lcom/keephealth/android/views/SportPieView;->outRadius:F

    iget v4, p0, Lcom/keephealth/android/views/SportPieView;->pieRadius:F

    sub-float v5, v3, v4

    sub-float/2addr p4, v5

    int-to-float v5, p2

    div-float/2addr v5, v0

    sub-float/2addr v5, v2

    sub-float v0, v3, v4

    sub-float/2addr v5, v0

    div-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v2

    sub-float v0, v3, v4

    add-float/2addr p1, v0

    div-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr p2, v2

    sub-float/2addr v3, v4

    add-float/2addr p2, v3

    invoke-virtual {p3, p4, v5, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    nop

    :array_d6
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 424
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-ne p2, p1, :cond_a

    const/4 p1, 0x0

    .line 426
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->animCount:I

    :cond_a
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .registers 14

    .line 294
    iput-boolean p1, p0, Lcom/keephealth/android/views/SportPieView;->isDrawingEnabled:Z

    .line 295
    new-instance p1, Landroid/graphics/SweepGradient;

    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/SportPieView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->sweepGradient:Landroid/graphics/SweepGradient;

    .line 296
    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportPieView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/keephealth/android/views/SportPieView;->linearGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 373
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    return-void
.end method

.method public setRadius(Landroid/graphics/Canvas;)V
    .registers 4

    .line 355
    iget p1, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_f

    .line 356
    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 362
    :cond_f
    iget-object p1, p0, Lcom/keephealth/android/views/SportPieView;->redPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->SWEEP_COLOR:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_19
    return-void
.end method

.method public setSportGoal(I)V
    .registers 3

    if-nez p1, :cond_7

    .line 152
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->sportGoal:I

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->sportGoal:I

    const/4 p1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportPieView;->updateProgress(Z)V

    return-void
.end method

.method public setSportSteps(I)V
    .registers 3

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    return-void
.end method

.method public setSportSteps(IZ)V
    .registers 3

    .line 176
    iput p1, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    .line 177
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportPieView;->setSteps2View(I)V

    .line 178
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/SportPieView;->updateProgress(Z)V

    return-void
.end method

.method public startAnim()V
    .registers 6

    .line 381
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->sportStep:I

    if-nez v0, :cond_5

    return-void

    .line 387
    :cond_5
    iget v0, p0, Lcom/keephealth/android/views/SportPieView;->animCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->animCount:I

    .line 388
    invoke-direct {p0}, Lcom/keephealth/android/views/SportPieView;->getCurrentPresent()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    if-nez v0, :cond_14

    return-void

    :cond_14
    mul-int/lit8 v0, v0, 0x14

    const/16 v1, 0x5dc

    .line 392
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 394
    iget v2, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    .line 395
    iget-object v3, p0, Lcom/keephealth/android/views/SportPieView;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 397
    :cond_2d
    iget v3, p0, Lcom/keephealth/android/views/SportPieView;->progress:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v3, "progress"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SportPieView;->anim:Landroid/animation/ObjectAnimator;

    .line 398
    new-instance v1, Lcom/keephealth/android/views/SportPieView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/views/SportPieView$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/SportPieView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/views/SportPieView;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4d
    return-void
.end method
