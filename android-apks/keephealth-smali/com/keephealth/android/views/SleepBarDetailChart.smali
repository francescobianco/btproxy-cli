.class public Lcom/keephealth/android/views/SleepBarDetailChart;
.super Lcom/keephealth/android/views/DetailBaseView;
.source "SleepBarDetailChart.java"


# instance fields
.field SLEEP_AWAKE:I

.field SLEEP_DEEP:I

.field SLEEP_EYE:I

.field SLEEP_LIGHT:I

.field SLEEP_START:I

.field private barColor:I

.field private barNum:I

.field private barPaint:Landroid/graphics/Paint;

.field private colors:[I

.field private dataPaint:Landroid/graphics/Paint;

.field private dataSpace:F

.field private dataWidth:F

.field private endTime:Ljava/lang/String;

.field private gson:Lcom/google/gson/Gson;

.field private h:I

.field healthSleepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            ">;"
        }
    .end annotation
.end field

.field private isAnimate:Z

.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleepItem;",
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

.field paddingTop:I

.field path:Landroid/graphics/Path;

.field pathPaint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/RectF;

.field scaleY:F

.field private selectPaint:Landroid/graphics/Paint;

.field private selectRect:Landroid/graphics/RectF;

.field selectedIndex:I

.field private splitLineColor:I

.field private splitNum:I

.field private startTime:Ljava/lang/String;

.field private textColor:I

.field private textSize:F

.field private timePaint:Landroid/graphics/Paint;

.field private topDataPaint:Landroid/graphics/Paint;

.field private totalCount:I

.field totleTime:I

.field private touchX:F

.field private type:I

.field private w:I

.field private xOffSet:F

.field private xWidth:F

.field private xtimes:[Ljava/lang/String;

.field private yLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/DetailBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    .line 52
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    .line 53
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    const/16 v0, 0x60

    .line 55
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barNum:I

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->SLEEP_START:I

    const/4 v1, 0x2

    .line 72
    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->SLEEP_LIGHT:I

    const/4 v2, 0x3

    .line 73
    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->SLEEP_DEEP:I

    const/4 v2, 0x4

    .line 74
    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->SLEEP_AWAKE:I

    const/4 v2, 0x5

    .line 75
    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->SLEEP_EYE:I

    const v2, 0x7f060052

    const v3, 0x7f060131

    const v4, 0x7f060049

    const v5, 0x7f06004f

    const v6, 0x7f06004d

    .line 78
    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    .line 81
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->gson:Lcom/google/gson/Gson;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    const/16 v2, 0x2d0

    .line 86
    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->maxTime:I

    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totleTime:I

    .line 89
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    .line 92
    iput v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    .line 211
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    .line 473
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    .line 474
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->pathPaint:Landroid/graphics/Paint;

    .line 589
    iput-boolean v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->isAnimate:Z

    const/4 v3, -0x1

    .line 609
    iput v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    .line 107
    iput-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    .line 108
    sget-object v3, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v3, 0x41e00000    # 28.0f

    .line 110
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textSize:F

    const v2, 0x7f060047

    .line 111
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textColor:I

    const p1, -0x10abc0

    .line 112
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barColor:I

    const/16 p1, 0x8

    const v0, -0xafb2b1

    .line 113
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitLineColor:I

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-direct {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->initPaint()V

    return-void
.end method

.method private animateY(I)V
    .registers 5

    const/4 v0, 0x2

    .line 600
    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 602
    new-instance p1, Lcom/keephealth/android/views/SleepBarDetailChart$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/SleepBarDetailChart$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/SleepBarDetailChart;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calculate()V
    .registers 6

    const/high16 v0, 0x41a00000    # 20.0f

    .line 178
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->paddingTop:I

    const/4 v0, 0x0

    .line 179
    :goto_b
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    if-ge v0, v1, :cond_1e

    .line 180
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->h:I

    iget v4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->paddingTop:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    mul-int/2addr v3, v0

    int-to-float v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 183
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    .line 189
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    if-nez v1, :cond_36

    const/4 v1, 0x1

    .line 190
    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    .line 192
    :cond_36
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    const v2, 0x40333333    # 2.8f

    if-nez v1, :cond_4b

    .line 193
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float v1, v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataSpace:F

    .line 194
    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    goto :goto_5b

    .line 196
    :cond_4b
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float v1, v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataSpace:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 197
    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    :goto_5b
    return-void
.end method

.method private drawDayTouchValue(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 479
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 480
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 481
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v0, p4}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v1, p5}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    .line 485
    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    cmpg-float v5, p3, v3

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x41700000    # 15.0f

    if-gez v5, :cond_eb

    .line 486
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    div-float v5, v0, v7

    sub-float/2addr v3, v5

    mul-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, p3, Landroid/graphics/RectF;->left:F

    .line 487
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    iput v3, p3, Landroid/graphics/RectF;->bottom:F

    .line 488
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    mul-int/lit8 v0, v1, 0x6

    int-to-float v0, v0

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->right:F

    .line 489
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v3, p5}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v3, p4}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 490
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 491
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 492
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_249

    .line 493
    :cond_eb
    iget v5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float v9, v5

    sub-float/2addr v9, v3

    cmpl-float v9, p3, v9

    if-lez v9, :cond_1d7

    .line 494
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    const/4 v9, 0x1

    if-eq p3, v9, :cond_111

    if-nez p3, :cond_fb

    goto :goto_111

    .line 498
    :cond_fb
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float v3, v0, v7

    sub-float/2addr v5, v3

    mul-int/lit8 v3, v1, 0x3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    iput v5, p3, Landroid/graphics/RectF;->left:F

    .line 499
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v5, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    add-float/2addr v5, v3

    iput v5, p3, Landroid/graphics/RectF;->right:F

    goto :goto_127

    .line 495
    :cond_111
    :goto_111
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float v3, v0, v7

    sub-float/2addr v5, v3

    int-to-float v3, v1

    sub-float/2addr v5, v3

    iput v5, p3, Landroid/graphics/RectF;->left:F

    .line 496
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    mul-int/lit8 v0, v1, 0x3

    int-to-float v0, v0

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->right:F

    .line 501
    :goto_127
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 503
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v3, p5}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v3, p4}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 504
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u8d85\u8fc7\u53f3\u8fb9..."

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 505
    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 506
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    if-eq p3, v9, :cond_1ad

    if-nez p3, :cond_182

    goto :goto_1ad

    .line 510
    :cond_182
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float p3, p3

    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    sub-float/2addr p3, v0

    sub-float/2addr p3, v1

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 511
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float p3, p3

    iget p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    sub-float/2addr p3, p5

    sub-float/2addr p3, v1

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_249

    .line 507
    :cond_1ad
    :goto_1ad
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float p3, p3

    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    sub-float/2addr p3, v0

    add-float/2addr p3, v1

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 508
    iget p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    int-to-float p3, p3

    iget p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->leftX:F

    sub-float/2addr p3, p5

    add-float/2addr p3, v1

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_249

    .line 516
    :cond_1d7
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    div-float v5, v0, v7

    sub-float v5, p3, v5

    mul-int/lit8 v7, v1, 0x3

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 517
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 518
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    mul-int/lit8 v0, v1, 0x6

    int-to-float v0, v0

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 519
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v4, p5}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-static {v4, p4}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 520
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 521
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 522
    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v8, p5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p2, p5

    iget-object p5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_249
    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 4

    .line 218
    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    if-nez v0, :cond_f

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_e
    return-void

    .line 223
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2c

    .line 231
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 232
    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    if-nez v0, :cond_29

    .line 233
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/SleepBarDetailChart;->drawDay(Landroid/graphics/Canvas;)V

    goto :goto_2c

    .line 235
    :cond_29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/SleepBarDetailChart;->drawWeekMonthYear(Landroid/graphics/Canvas;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barPaint:Landroid/graphics/Paint;

    .line 126
    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->pathPaint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_d4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 155
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->yLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    .line 158
    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    .line 162
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->topDataPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/SleepBarDetailChart;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    nop

    :array_d4
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method drawDay(Landroid/graphics/Canvas;)V
    .registers 16

    const v0, 0x3fb33333    # 1.4f

    .line 389
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    mul-float/2addr v1, v0

    .line 390
    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    .line 391
    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 392
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    goto :goto_2e

    .line 395
    :cond_24
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    int-to-float v0, v0

    sub-float/2addr v3, v0

    const/high16 v0, 0x44b40000    # 1440.0f

    :goto_2e
    div-float/2addr v3, v0

    const/4 v0, 0x0

    move v5, v0

    .line 397
    :goto_31
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_99

    .line 398
    iget v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    if-nez v6, :cond_40

    int-to-float v6, v5

    mul-float/2addr v6, v3

    goto :goto_50

    .line 401
    :cond_40
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    int-to-float v7, v5

    mul-float/2addr v6, v7

    :goto_50
    add-float/2addr v6, v1

    if-nez v5, :cond_5b

    .line 405
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_73

    .line 406
    :cond_5b
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_6c

    .line 407
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_73

    .line 409
    :cond_6c
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 411
    :goto_73
    iget-object v7, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    iget v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    sub-int/2addr v9, v4

    aget v8, v8, v9

    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 419
    :cond_99
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getIndex()I

    const/4 v3, 0x0

    move v5, v3

    move v7, v5

    move v3, v1

    move v1, v0

    .line 420
    :goto_a9
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v8, ":"

    if-ge v0, v6, :cond_146

    .line 421
    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 422
    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    iget v10, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    sub-int/2addr v10, v4

    aget v9, v9, v10

    iget-object v10, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 423
    iget v10, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->h:I

    iget-object v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40600000    # 3.5f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float/2addr v10, v11

    sub-float v10, v9, v10

    .line 424
    iget-object v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 425
    iget-object v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 426
    invoke-virtual {p0, v6}, Lcom/keephealth/android/views/SleepBarDetailChart;->setPaintColor(Lcom/keephealth/android/greendao/bean/HealthSleepItem;)Ljava/lang/String;

    .line 428
    iget v11, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    add-float/2addr v11, v3

    .line 431
    iget-object v12, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    float-to-double v12, v3

    .line 436
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 437
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v12

    if-eqz v12, :cond_112

    .line 438
    iget-object v12, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->rect:Landroid/graphics/RectF;

    invoke-virtual {v12, v3, v10, v11, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    iget-object v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->rect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 444
    :cond_112
    const-string v3, "0:0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 445
    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->touchX:F

    cmpl-float v8, v3, v11

    if-ltz v8, :cond_141

    iget v8, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    add-float/2addr v8, v11

    cmpg-float v3, v3, v8

    if-gez v3, :cond_141

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    if-eqz v3, :cond_141

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    iget-object v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_141

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    if-ltz v3, :cond_141

    .line 446
    iget v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    sub-float v1, v11, v1

    .line 449
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    move v5, v1

    move v1, v4

    move v7, v10

    :cond_141
    add-int/lit8 v0, v0, 0x1

    move v3, v11

    goto/16 :goto_a9

    :cond_146
    if-eqz v1, :cond_1f1

    .line 452
    iget v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    if-ltz v0, :cond_1f1

    iget-boolean v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->touchEnable:Z

    if-eqz v0, :cond_1f1

    .line 453
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 456
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/SleepBarDetailChart;->setPaintColor(Lcom/keephealth/android/greendao/bean/HealthSleepItem;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    .line 459
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getIndex()I

    move-result v2

    const/16 v3, 0x12

    if-gt v2, v3, :cond_1a0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v2, v2, 0x4f6

    div-int/lit8 v4, v2, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->endTime:Ljava/lang/String;

    goto :goto_1c0

    .line 463
    :cond_1a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0xa

    div-int/lit8 v3, v2, 0x3c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->endTime:Ljava/lang/String;

    .line 465
    :goto_1c0
    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    iget v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->is24Hour()Z

    move-result v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/CommonUtil;->timeFormatter(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v8, v5, v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/keephealth/android/views/SleepBarDetailChart;->drawDayTouchValue(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;)V

    :cond_1f1
    return-void
.end method

.method drawWeekMonthYear(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v6, p0

    .line 244
    iget v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    const v1, 0x3fb33333    # 1.4f

    iget v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    const v3, 0x40333333    # 2.8f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 247
    iget v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_27

    if-ne v2, v4, :cond_39

    .line 248
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    :cond_39
    const/4 v2, 0x0

    move v3, v2

    .line 251
    :goto_3b
    iget-object v7, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_99

    int-to-float v7, v3

    mul-float/2addr v7, v1

    add-float/2addr v7, v0

    .line 253
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v3, :cond_57

    .line 255
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6f

    .line 256
    :cond_57
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v3, v8, :cond_68

    .line 257
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_6f

    .line 259
    :cond_68
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 261
    :goto_6f
    iget-object v8, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    iget v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    sub-int/2addr v10, v5

    aget v9, v9, v10

    iget-object v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x41a00000    # 20.0f

    iget-object v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_99
    move-object/from16 v15, p1

    .line 266
    iget-object v1, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    if-nez v1, :cond_a0

    return-void

    :cond_a0
    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    const/4 v9, -0x1

    .line 271
    :goto_a4
    iget-object v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_1fe

    .line 272
    iget-object v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 273
    iget v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataSpace:F

    int-to-float v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v0

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v13, v11

    .line 275
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v11

    .line 276
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    add-int/2addr v11, v12

    .line 277
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    add-int/2addr v11, v12

    if-nez v11, :cond_dd

    move/from16 v18, v5

    goto/16 :goto_1f4

    .line 282
    :cond_dd
    iget-object v12, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->lineHeight:[F

    iget v14, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->splitNum:I

    add-int/lit8 v17, v14, -0x1

    aget v12, v12, v17

    iget v3, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->paddingTop:I

    int-to-float v5, v3

    add-float/2addr v5, v12

    int-to-float v11, v11

    .line 283
    iget v12, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->maxTime:I

    int-to-float v12, v12

    div-float v12, v11, v12

    iget v4, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->h:I

    sub-int/2addr v4, v3

    div-int/2addr v4, v14

    int-to-float v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v12, v3

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v3

    .line 284
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    mul-float/2addr v3, v12

    .line 285
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v11

    mul-float/2addr v4, v12

    .line 287
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    mul-float v19, v14, v12

    .line 288
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    mul-float v20, v14, v12

    .line 289
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    mul-float/2addr v10, v12

    .line 291
    iget-object v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    iget v12, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    iget-object v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v14, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v14, v14, v2

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float/2addr v10, v11

    sub-float v10, v5, v10

    .line 297
    iget-object v14, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v13

    move/from16 v21, v13

    move v13, v5

    move-object v5, v14

    const/4 v2, 0x3

    move/from16 v14, v21

    move v15, v10

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    iget v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float/2addr v3, v5

    sub-float v3, v10, v3

    .line 304
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v21

    move v13, v10

    move v15, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    const/16 v18, 0x1

    aget v11, v11, v18

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    .line 311
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v3

    move v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    iget v3, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float v20, v20, v3

    sub-float v3, v4, v20

    .line 316
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v12, v21

    move v13, v4

    move v15, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    iget-object v4, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v10, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v2, v10, v2

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    mul-float v19, v19, v2

    sub-float v2, v3, v19

    .line 323
    iget-object v4, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    move v13, v3

    move v15, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object v3, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->timePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 328
    iget v3, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->touchX:F

    cmpl-float v4, v3, v21

    if-ltz v4, :cond_1f4

    iget v4, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    add-float v13, v21, v4

    cmpg-float v3, v3, v13

    if-gez v3, :cond_1f4

    move v7, v2

    move v9, v8

    move/from16 v1, v21

    :cond_1f4
    :goto_1f4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, p1

    move/from16 v5, v18

    const/4 v2, 0x0

    const/4 v4, 0x2

    goto/16 :goto_a4

    :cond_1fe
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq v9, v3, :cond_2f9

    .line 336
    iget v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    .line 337
    iget-object v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    iget v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    const v4, 0x7f100775

    const v5, 0x7f10076d

    const-string v8, ""

    const-string v10, " "

    const/4 v11, 0x2

    if-eq v0, v11, :cond_286

    if-ne v0, v2, :cond_22c

    goto :goto_286

    .line 343
    :cond_22c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2df

    .line 341
    :cond_286
    :goto_286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2df
    move-object v4, v0

    .line 345
    iget-object v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v5

    .line 347
    iget v0, v6, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    div-float/2addr v0, v3

    add-float v3, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/views/SleepBarDetailChart;->drawDayTouchValue(Landroid/graphics/Canvas;FFLjava/lang/String;Ljava/lang/String;)V

    :cond_2f9
    return-void
.end method

.method public isAnimate()Z
    .registers 2

    .line 592
    iget-boolean v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->isAnimate:Z

    return v0
.end method

.method synthetic lambda$animateY$0$com-keephealth-android-views-SleepBarDetailChart(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 603
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->scaleY:F

    .line 604
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 203
    invoke-super {p0, p1}, Lcom/keephealth/android/views/DetailBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 208
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarDetailChart;->drawX(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Lcom/keephealth/android/views/DetailBaseView;->onSizeChanged(IIII)V

    .line 172
    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->w:I

    .line 173
    iput p2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->h:I

    .line 174
    invoke-direct {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->calculate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_49

    .line 615
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 620
    iget v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->h:I

    add-int/lit8 v2, v2, -0x64

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->touchX:F

    const/4 v3, 0x0

    move v4, v3

    .line 622
    :goto_1e
    iget v5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    if-ge v4, v5, :cond_49

    .line 623
    iget v5, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataWidth:F

    iget v6, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->xOffSet:F

    const v7, 0x3fb33333    # 1.4f

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataSpace:F

    add-int/lit8 v9, v4, 0x1

    int-to-float v10, v9

    mul-float/2addr v10, v8

    add-float/2addr v5, v10

    float-to-int v5, v5

    mul-float/2addr v6, v7

    int-to-float v7, v4

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 625
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 626
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 627
    iput v4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->selectedIndex:I

    goto :goto_49

    :cond_47
    move v4, v9

    goto :goto_1e

    .line 634
    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->invalidate()V

    .line 635
    invoke-super {p0, p1}, Lcom/keephealth/android/views/DetailBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimate(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->isAnimate:Z

    return-void
.end method

.method public setData(ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 566
    iput-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    .line 567
    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    .line 568
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 569
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->healthSleepList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 570
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    const/4 p1, 0x0

    move p3, p1

    .line 572
    :goto_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_40

    .line 573
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 574
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v0

    add-int/2addr v1, v0

    if-ge p3, v1, :cond_3d

    move p3, v1

    :cond_3d
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 579
    :cond_40
    iput p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->maxTime:I

    .line 580
    invoke-direct {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->calculate()V

    .line 581
    iget-boolean p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->isAnimate:Z

    if-eqz p1, :cond_4f

    const/16 p1, 0x1f4

    .line 582
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarDetailChart;->animateY(I)V

    goto :goto_52

    .line 584
    :cond_4f
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->invalidate()V

    :goto_52
    return-void
.end method

.method public setDatas(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleepItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 533
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->type:I

    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totalCount:I

    .line 535
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totleTime:I

    .line 536
    iput v0, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->maxTime:I

    .line 537
    iput-object p2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->startTime:Ljava/lang/String;

    .line 538
    iput-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->endTime:Ljava/lang/String;

    .line 540
    iget-object p2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 541
    iput-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    .line 542
    iget-object p2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 543
    iput-object p4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->lables:Ljava/util/List;

    if-eqz p1, :cond_71

    .line 544
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_71

    .line 545
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u8bbe\u7f6e\u6570\u636e      count:        item.size():"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->item:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    move p2, v0

    move p3, p2

    .line 549
    :goto_41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_6f

    .line 550
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {p4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result p4

    if-ge p3, p4, :cond_5d

    .line 551
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result p3

    .line 553
    :cond_5d
    iget p4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totleTime:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v1

    add-int/2addr p4, v1

    iput p4, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->totleTime:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    .line 555
    :cond_6f
    iput p3, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->maxTime:I

    .line 557
    :cond_71
    invoke-direct {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->calculate()V

    .line 558
    iget-boolean p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->isAnimate:Z

    if-eqz p1, :cond_7e

    const/16 p1, 0x1f4

    .line 559
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SleepBarDetailChart;->animateY(I)V

    goto :goto_81

    .line 561
    :cond_7e
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/SleepBarDetailChart;->animateY(I)V

    :goto_81
    return-void
.end method

.method setPaintColor(Lcom/keephealth/android/greendao/bean/HealthSleepItem;)Ljava/lang/String;
    .registers 5

    .line 353
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_51

    const/4 v1, 0x4

    if-eq p1, v1, :cond_34

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17

    const-string p1, ""

    goto/16 :goto_a8

    .line 375
    :cond_17
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a8

    .line 370
    :cond_34
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a8

    .line 365
    :cond_51
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a8

    .line 360
    :cond_6e
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100373

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a8

    .line 355
    :cond_8b
    iget-object p1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/SleepBarDetailChart;->colors:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    invoke-virtual {p0}, Lcom/keephealth/android/views/SleepBarDetailChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10054f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_a8
    return-object p1
.end method
