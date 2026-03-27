.class public Lcom/keephealth/android/views/SportDetailChart;
.super Lcom/keephealth/android/views/DetailBaseView;
.source "SportDetailChart.java"


# instance fields
.field private barColor:I

.field private barNum:I

.field private barPaint:Landroid/graphics/Paint;

.field private colors:[I

.field private dataPaint:Landroid/graphics/Paint;

.field private dataSpace:F

.field private dataWidth:F

.field dateType:I

.field private gson:Lcom/google/gson/Gson;

.field private h:I

.field healthSleepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;"
        }
    .end annotation
.end field

.field private lables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private leftX:F

.field private lineHeight:[F

.field private mContext:Landroid/content/Context;

.field maxTime:I

.field scaleY:F

.field selectedIndex:I

.field private splitLineColor:I

.field private splitNum:I

.field private textColor:I

.field private textSize:F

.field private timePaint:Landroid/graphics/Paint;

.field private topDataPaint:Landroid/graphics/Paint;

.field private totalCount:I

.field private type:I

.field private w:I

.field private xOffSet:F

.field private xWidth:F

.field private xtimes:[Ljava/lang/String;

.field private yLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/DetailBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41e00000    # 28.0f

    .line 36
    iput v0, p0, Lcom/keephealth/android/views/SportDetailChart;->textSize:F

    const/4 v1, 0x6

    .line 42
    iput v1, p0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    .line 43
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    const/16 v1, 0x60

    .line 45
    iput v1, p0, Lcom/keephealth/android/views/SportDetailChart;->barNum:I

    const v1, 0x7f0600b8

    const v2, 0x7f060070

    const v3, 0x7f060020

    .line 55
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->colors:[I

    .line 58
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->gson:Lcom/google/gson/Gson;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    const/16 v1, 0x2d0

    .line 63
    iput v1, p0, Lcom/keephealth/android/views/SportDetailChart;->maxTime:I

    const/high16 v1, 0x43340000    # 180.0f

    .line 65
    iput v1, p0, Lcom/keephealth/android/views/SportDetailChart;->leftX:F

    const/4 v1, -0x1

    .line 459
    iput v1, p0, Lcom/keephealth/android/views/SportDetailChart;->selectedIndex:I

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    .line 77
    sget-object v1, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportDetailChart;->textSize:F

    const v0, 0x7f060047

    .line 79
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->textColor:I

    const/4 p1, 0x2

    const v0, -0x10abc0

    .line 80
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->barColor:I

    const/16 p1, 0x8

    const v0, -0xafb2b1

    .line 81
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->splitLineColor:I

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0}, Lcom/keephealth/android/views/SportDetailChart;->initPaint()V

    return-void
.end method

.method private animateY(I)V
    .registers 5

    const/4 v0, 0x2

    .line 445
    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    new-instance p1, Lcom/keephealth/android/views/SportDetailChart$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/SportDetailChart$1;-><init>(Lcom/keephealth/android/views/SportDetailChart;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculate()V
    .registers 5

    const/4 v0, 0x0

    .line 131
    :goto_1
    iget v1, p0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    if-ge v0, v1, :cond_11

    .line 132
    iget-object v2, p0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    iget v3, p0, Lcom/keephealth/android/views/SportDetailChart;->h:I

    div-int/2addr v3, v1

    mul-int/2addr v3, v0

    int-to-float v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportDetailChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportDetailChart;->xOffSet:F

    .line 142
    iget v1, p0, Lcom/keephealth/android/views/SportDetailChart;->totalCount:I

    if-eqz v1, :cond_37

    .line 143
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->w:I

    int-to-float v2, v2

    const v3, 0x40333333    # 2.8f

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/SportDetailChart;->dataSpace:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    .line 147
    iput v2, p0, Lcom/keephealth/android/views/SportDetailChart;->dataWidth:F

    :cond_37
    return-void
.end method

.method private drawDayTouchValue(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 355
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 357
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 361
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startX--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 363
    iget v0, p0, Lcom/keephealth/android/views/SportDetailChart;->leftX:F

    cmpg-float v1, p3, v0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x41700000    # 15.0f

    if-gez v1, :cond_80

    .line 364
    iget-object p3, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    sub-float p3, p2, p3

    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    iget p3, p0, Lcom/keephealth/android/views/SportDetailChart;->leftX:F

    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c7

    .line 366
    :cond_80
    iget v1, p0, Lcom/keephealth/android/views/SportDetailChart;->w:I

    int-to-float v4, v1

    sub-float/2addr v4, v0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_ac

    int-to-float p3, v1

    sub-float/2addr p3, v0

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 368
    iget p3, p0, Lcom/keephealth/android/views/SportDetailChart;->w:I

    int-to-float p3, p3

    iget p5, p0, Lcom/keephealth/android/views/SportDetailChart;->leftX:F

    sub-float/2addr p3, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c7

    .line 370
    :cond_ac
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 371
    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_c7
    return-void
.end method

.method private drawTouchValue(Landroid/graphics/Canvas;FIF)V
    .registers 10

    .line 259
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 261
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 265
    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p3, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10076d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 p3, p3, 0x3c

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100775

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/high16 v0, 0x41700000    # 15.0f

    iget-object v1, p0, Lcom/keephealth/android/views/SportDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1e

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 198
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/SportDetailChart;->drawWeekMonthYear(Landroid/graphics/Canvas;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v0, 0x0

    .line 167
    :goto_1
    iget v1, p0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    if-ge v0, v1, :cond_4e

    .line 169
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    if-nez v0, :cond_d

    goto :goto_4b

    .line 171
    :cond_d
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->xOffSet:F

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    aget v4, v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->w:I

    int-to-float v2, v2

    iget v4, p0, Lcom/keephealth/android/views/SportDetailChart;->xOffSet:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_35

    .line 174
    iget-object v2, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_46

    .line 176
    :cond_35
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_50

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 177
    iget-object v3, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 179
    :goto_46
    iget-object v2, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4e
    return-void

    nop

    :array_50
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private initPaint()V
    .registers 5

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->barPaint:Landroid/graphics/Paint;

    .line 94
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->splitLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_9e

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 107
    iget-object v2, p0, Lcom/keephealth/android/views/SportDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->timePaint:Landroid/graphics/Paint;

    .line 110
    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->timePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportDetailChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/SportDetailChart;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_9e
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method drawWeekMonthYear(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 209
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    if-eqz v1, :cond_146

    .line 210
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_17

    return-void

    :cond_17
    const/4 v9, 0x0

    move v10, v9

    .line 211
    :goto_19
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_146

    .line 212
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 213
    iget v2, v0, Lcom/keephealth/android/views/SportDetailChart;->dataWidth:F

    const v3, 0x3fb33333    # 1.4f

    iget v4, v0, Lcom/keephealth/android/views/SportDetailChart;->xOffSet:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, v0, Lcom/keephealth/android/views/SportDetailChart;->dataSpace:F

    int-to-float v4, v10

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 218
    iget v2, v0, Lcom/keephealth/android/views/SportDetailChart;->dateType:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v2, :cond_43

    .line 219
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v1

    goto :goto_52

    :cond_43
    if-ne v2, v13, :cond_4a

    .line 221
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v1

    goto :goto_52

    :cond_4a
    if-ne v2, v12, :cond_51

    .line 223
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v1

    goto :goto_52

    :cond_51
    move v1, v9

    .line 227
    :goto_52
    iget-object v2, v0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    iget v3, v0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    int-to-float v1, v1

    .line 228
    iget v5, v0, Lcom/keephealth/android/views/SportDetailChart;->maxTime:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iget v5, v0, Lcom/keephealth/android/views/SportDetailChart;->h:I

    div-int/2addr v5, v3

    int-to-float v5, v5

    sub-float v5, v4, v5

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    sub-float v14, v4, v1

    .line 231
    iget v1, v0, Lcom/keephealth/android/views/SportDetailChart;->dataWidth:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v1, v15

    sub-float v4, v11, v4

    div-float/2addr v1, v15

    add-float v5, v11, v1

    sub-int/2addr v3, v13

    aget v6, v2, v3

    const/4 v7, 0x0

    const/16 v16, 0x1f

    move-object/from16 v1, p1

    move v2, v4

    move v3, v14

    move v4, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 232
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lcom/keephealth/android/views/SportDetailChart;->dataWidth:F

    div-float v4, v3, v15

    sub-float v4, v11, v4

    div-float v5, v3, v15

    add-float/2addr v5, v11

    iget-object v6, v0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    iget v7, v0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    sub-int/2addr v7, v13

    aget v6, v6, v7

    add-float/2addr v6, v3

    invoke-direct {v2, v4, v14, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/views/SportDetailChart;->colors:[I

    aget v5, v5, v12

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f060139

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f060138

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    sget-object v21, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v14, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 236
    iget-object v4, v0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 237
    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 240
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 241
    iget v1, v0, Lcom/keephealth/android/views/SportDetailChart;->type:I

    if-ne v1, v12, :cond_127

    .line 242
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    rem-int/2addr v1, v12

    if-eqz v1, :cond_142

    .line 243
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    iget v3, v0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    sub-int/2addr v3, v13

    aget v2, v2, v3

    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_142

    .line 246
    :cond_127
    iget-object v1, v0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/keephealth/android/views/SportDetailChart;->lineHeight:[F

    iget v3, v0, Lcom/keephealth/android/views/SportDetailChart;->splitNum:I

    sub-int/2addr v3, v13

    aget v2, v2, v3

    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/keephealth/android/views/SportDetailChart;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_142
    :goto_142
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_19

    :cond_146
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 154
    invoke-super {p0, p1}, Lcom/keephealth/android/views/DetailBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 156
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportDetailChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportDetailChart;->drawX(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Lcom/keephealth/android/views/DetailBaseView;->onSizeChanged(IIII)V

    .line 124
    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->w:I

    .line 125
    iput p2, p0, Lcom/keephealth/android/views/SportDetailChart;->h:I

    .line 126
    invoke-direct {p0}, Lcom/keephealth/android/views/SportDetailChart;->calculate()V

    return-void
.end method

.method public setData(ILjava/util/List;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 411
    iput-object p3, p0, Lcom/keephealth/android/views/SportDetailChart;->lables:Ljava/util/List;

    .line 412
    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->type:I

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/views/SportDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportDetailChart;->totalCount:I

    .line 416
    iput p4, p0, Lcom/keephealth/android/views/SportDetailChart;->dateType:I

    const/4 p1, 0x0

    move p3, p1

    move v0, p3

    .line 419
    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_43

    .line 420
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    if-nez p4, :cond_2c

    .line 424
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v1

    goto :goto_3d

    :cond_2c
    const/4 v2, 0x1

    if-ne p4, v2, :cond_34

    .line 426
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v1

    goto :goto_3d

    :cond_34
    const/4 v2, 0x2

    if-ne p4, v2, :cond_3c

    .line 428
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v1

    goto :goto_3d

    :cond_3c
    move v1, p1

    :goto_3d
    if-ge v0, v1, :cond_40

    move v0, v1

    :cond_40
    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 435
    :cond_43
    iput v0, p0, Lcom/keephealth/android/views/SportDetailChart;->maxTime:I

    .line 436
    invoke-direct {p0}, Lcom/keephealth/android/views/SportDetailChart;->calculate()V

    return-void
.end method
