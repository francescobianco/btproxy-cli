.class public Lcom/keephealth/android/views/HeartRateChart;
.super Landroid/view/View;
.source "HeartRateChart.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Chart"


# instance fields
.field private MAX_VALUE:I

.field private MIN_VALUE:I

.field private aerobicThreshold:I

.field private alphaPaint:Landroid/graphics/Paint;

.field animateValue:F

.field private barColor:I

.field private barNum:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWid:F

.field private barWidth:F

.field private bottomY:F

.field private burnFatThreshold:I

.field private chartWidth:F

.field private chartWidthSpan:F

.field private clickListener:Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;

.field private dY:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDuration:I

.field private fillAreaHasAnim:Z

.field private fillPaint:Landroid/graphics/Paint;

.field private h:I

.field private hasNoDataTip:Z

.field private hasTime:Z

.field private hasYvalue:Z

.field isCubic:Z

.field private isFillArea:Z

.field private isInit:Z

.field private isMeasure:Z

.field private isMove:Z

.field private isOneDay:Z

.field private isOver:Z

.field private labelXPaint:Landroid/text/TextPaint;

.field private labelYPaint:Landroid/text/TextPaint;

.field private labelYWidth:F

.field private limintThreshold:I

.field private lineHeight:[F

.field private linePaint:Landroid/graphics/Paint;

.field private mAnimatorValue:F

.field private mContext:Landroid/content/Context;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private maxYSeparatePaint:Landroid/graphics/Paint;

.field private noDataValue:Ljava/lang/String;

.field p:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private path2:Landroid/graphics/Path;

.field private playAnim:Z

.field private pointHeight:F

.field private pointPaint:Landroid/graphics/Paint;

.field private points:[Landroid/graphics/Point;

.field rect:Landroid/graphics/RectF;

.field private scaleY:[I

.field private selPosition:I

.field private selectRect:Landroid/graphics/RectF;

.field private splitLineColor:I

.field private splitNum:I

.field private textColor:I

.field private textSize:F

.field timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field private touchPaint:Landroid/graphics/Paint;

.field private touchPaint2:Landroid/graphics/Paint;

.field touchX:F

.field private touchX1:I

.field private touchX2:I

.field touchY:F

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private w:I

.field private xOffSet:F

.field private xSeparatePaint:Landroid/graphics/Paint;

.field private xtimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yValueColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/HeartRateChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/HeartRateChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 49
    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->splitNum:I

    .line 50
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    const/16 v0, 0x60

    .line 52
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->barNum:I

    const/16 v0, 0x32

    .line 55
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    const/16 v1, 0xc8

    .line 56
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    .line 57
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->dY:I

    const/16 v1, 0x32

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int v3, v0, v0

    .line 58
    filled-new-array {v1, v3, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    .line 86
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    .line 96
    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->playAnim:Z

    const/16 v1, 0x96

    .line 120
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->defaultDuration:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 127
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    .line 128
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    .line 129
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMove:Z

    const/4 v1, -0x1

    .line 135
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    .line 140
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isOver:Z

    .line 144
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isFillArea:Z

    .line 153
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillAreaHasAnim:Z

    const/4 v1, 0x0

    .line 158
    iput-boolean v1, p0, Lcom/keephealth/android/views/HeartRateChart;->isMeasure:Z

    .line 160
    iput-boolean v1, p0, Lcom/keephealth/android/views/HeartRateChart;->isInit:Z

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    .line 179
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isOneDay:Z

    .line 182
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->rect:Landroid/graphics/RectF;

    .line 183
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    .line 471
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isCubic:Z

    .line 570
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    .line 195
    iput-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    .line 196
    sget-object v3, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x41e00000    # 28.0f

    .line 197
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->textSize:F

    const p2, -0x666667

    .line 198
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->textColor:I

    const p2, -0x10abc0

    .line 199
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->barColor:I

    const/16 p2, 0x8

    const v2, -0x9fc6ce

    .line 200
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->splitLineColor:I

    const/16 p2, 0x9

    .line 201
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->yValueColor:I

    .line 202
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/views/HeartRateChart;->hasNoDataTip:Z

    const/4 p2, 0x7

    .line 203
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/HeartRateChart;->noDataValue:Ljava/lang/String;

    const/4 p2, 0x4

    .line 204
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/views/HeartRateChart;->hasTime:Z

    const/4 p2, 0x5

    .line 205
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/views/HeartRateChart;->hasYvalue:Z

    .line 206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/HeartRateChart;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/keephealth/android/views/HeartRateChart;->isOver:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/HeartRateChart;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->animateY()V

    return-void
.end method

.method private animateY()V
    .registers 4

    const/4 v0, 0x3

    .line 695
    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 696
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 697
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    new-instance v1, Lcom/keephealth/android/views/HeartRateChart$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/HeartRateChart$2;-><init>(Lcom/keephealth/android/views/HeartRateChart;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_24
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x0
    .end array-data
.end method

.method private calculate()V
    .registers 6

    const/4 v0, 0x0

    .line 303
    :goto_1
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->splitNum:I

    if-ge v0, v1, :cond_16

    .line 304
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v0

    mul-float/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    .line 310
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->w:I

    int-to-float v1, v1

    const v2, 0x40333333    # 2.8f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidth:F

    .line 312
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->barNum:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWidth:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 314
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWid:F

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMeasure:Z

    .line 316
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->initView()V

    return-void
.end method

.method private drawMaxHeight(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 572
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 573
    :cond_d
    iget v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    if-gez v1, :cond_12

    return-void

    .line 574
    :cond_12
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 575
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 577
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 578
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 579
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    iget v3, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 583
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/keephealth/android/views/HeartRateChart;->minutToX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/HeartRateChart;->getYValue(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    float-to-int v1, v6

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Point;->set(II)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 586
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v8, 0x40a00000    # 5.0f

    div-float v9, v1, v8

    add-float/2addr v6, v9

    sub-float v10, v1, v8

    iget-object v11, v0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 587
    iget-object v5, v0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0600a9

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    iget-object v10, v0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v1, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 589
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    iget v9, v0, Lcom/keephealth/android/views/HeartRateChart;->animateValue:F

    mul-float/2addr v1, v9

    iget-object v9, v0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 591
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->p:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    .line 592
    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v1

    .line 594
    iget v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    if-ltz v1, :cond_33b

    .line 596
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 597
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 598
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    iget v5, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v10

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    iget v6, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    sget-object v5, Lcom/keephealth/android/views/HeartRateChart$3;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v6, v0, Lcom/keephealth/android/views/HeartRateChart;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_151

    const/4 v2, 0x2

    if-eq v5, v2, :cond_151

    goto :goto_170

    .line 606
    :cond_151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    iget v5, v0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    :goto_170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bpm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 610
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v1, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v12, v1

    .line 611
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v1, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v13, v1

    .line 613
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v1, v11}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v14, v1

    .line 614
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v1, v11}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v15, v1

    .line 615
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v5, v13, v15

    .line 619
    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    .line 622
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v16, v4, v1

    .line 623
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float v17, v4, v1

    .line 625
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 626
    iget-object v3, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move-object/from16 v18, v3

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v3, v16

    move/from16 v16, v4

    move v4, v9

    move v8, v5

    move/from16 v5, v17

    move-object/from16 v17, v11

    move v11, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 628
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    .line 630
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    div-int/lit8 v6, v11, 0x2

    int-to-float v3, v6

    sub-float v3, v9, v3

    float-to-int v3, v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 631
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    int-to-float v3, v13

    sub-float v4, v16, v3

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v13, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    sub-int/2addr v4, v6

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 634
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 635
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v11, v11

    add-float/2addr v4, v11

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 636
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v13, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    int-to-float v8, v1

    add-float/2addr v4, v8

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 639
    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    sub-float v2, v9, v2

    .line 641
    div-int/lit8 v4, v14, 0x2

    int-to-float v4, v4

    sub-float/2addr v9, v4

    .line 644
    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v4, v4, v13

    if-lez v4, :cond_27d

    .line 645
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 647
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v11

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 649
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, v12

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 650
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_277
    int-to-float v9, v14

    sub-float/2addr v6, v9

    div-float/2addr v6, v4

    add-float v9, v1, v6

    goto :goto_2b0

    .line 651
    :cond_27d
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v15

    if-gtz v1, :cond_2ac

    .line 652
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iput v8, v1, Landroid/graphics/RectF;->left:F

    .line 653
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v11

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 655
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, v12

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 656
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    goto :goto_277

    .line 657
    :cond_2ac
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 661
    :goto_2b0
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060061

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 663
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v6, v11

    iget-object v11, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 665
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 666
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 667
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0600ab

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v6, v11

    iget-object v11, v0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 674
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v8

    if-eqz v10, :cond_328

    add-float v4, v1, v3

    .line 678
    iget-object v6, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v2, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_328
    add-float/2addr v1, v3

    add-float/2addr v1, v5

    .line 681
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    move-object/from16 v3, v17

    invoke-virtual {v7, v3, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_33b
    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .registers 8

    .line 770
    iget-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMove:Z

    if-eqz v0, :cond_164

    .line 771
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_31

    .line 772
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/HeartRateChart;->minutToX(I)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    .line 773
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    goto/16 :goto_162

    .line 775
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v1, :cond_161

    .line 776
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_161

    .line 777
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/HeartRateChart;->xToMinute(F)I

    move-result v0

    if-ltz v0, :cond_13f

    .line 779
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-lt v4, v0, :cond_73

    .line 780
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    .line 781
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    goto/16 :goto_15a

    .line 783
    :cond_73
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-gt v4, v0, :cond_b4

    .line 784
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    .line 785
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    .line 786
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    goto/16 :goto_15a

    .line 788
    :cond_b4
    :goto_b4
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_13d

    .line 790
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-gt v4, v0, :cond_139

    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v4

    if-lt v4, v0, :cond_139

    .line 792
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v1, v0, :cond_11c

    .line 793
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    move v3, v2

    goto :goto_13d

    .line 797
    :cond_11c
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    .line 798
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    move v3, v5

    goto :goto_13d

    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b4

    :cond_13d
    :goto_13d
    move v2, v3

    goto :goto_15a

    .line 806
    :cond_13f
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    .line 807
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchY:F

    .line 811
    :goto_15a
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/HeartRateChart;->minutToX(I)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    goto :goto_162

    :cond_161
    move v2, v3

    .line 814
    :goto_162
    iput v2, p0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    .line 816
    :cond_164
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->drawMaxHeight(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 11

    .line 715
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x0

    move v1, v0

    .line 716
    :goto_9
    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->splitNum:I

    const v3, 0x3fb33333    # 1.4f

    if-ge v1, v2, :cond_3b

    .line 717
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 718
    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 719
    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->w:I

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v3, v3, v1

    iget v5, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    add-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 720
    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 723
    :cond_3b
    iget-boolean v1, p0, Lcom/keephealth/android/views/HeartRateChart;->hasYvalue:Z

    if-eqz v1, :cond_71

    move v1, v0

    .line 724
    :goto_40
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_71

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    add-int/lit8 v1, v1, 0x1

    aget v5, v5, v1

    iget v6, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    add-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_40

    .line 730
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWid:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 731
    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 732
    iget p1, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWidth:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 733
    :goto_85
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barNum:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_a6

    .line 734
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWidth:F

    int-to-float v2, v0

    mul-float v4, v1, v2

    iget v5, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float v6, v5, v3

    add-float/2addr v4, v6

    .line 735
    iget v6, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    iget v7, p0, Lcom/keephealth/android/views/HeartRateChart;->barWid:F

    add-float v8, v6, v7

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 739
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v6, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_a6
    return-void
.end method

.method private drawXValue(Landroid/graphics/Canvas;)V
    .registers 9

    .line 750
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidth:F

    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 751
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v1

    const/4 v2, 0x0

    .line 753
    :goto_13
    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    int-to-float v3, v2

    mul-float/2addr v3, v0

    const v4, 0x3fb33333    # 1.4f

    .line 754
    iget v5, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    add-float/2addr v3, v4

    if-nez v2, :cond_31

    .line 756
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_4a

    .line 757
    :cond_31
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_43

    .line 758
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_4a

    .line 760
    :cond_43
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 763
    :goto_4a
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    iget v6, p0, Lcom/keephealth/android/views/HeartRateChart;->barWid:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_60
    return-void
.end method

.method private filterData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2d

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    move v1, v0

    .line 344
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 345
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    if-nez v0, :cond_1d

    .line 347
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v1

    goto :goto_22

    .line 349
    :cond_1d
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v3

    add-int/2addr v1, v3

    .line 351
    :goto_22
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 352
    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 355
    :cond_2d
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getYValue(I)I
    .registers 6

    .line 458
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_13

    .line 459
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v1, v2, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    goto :goto_49

    .line 460
    :cond_13
    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    if-ge p1, v2, :cond_27

    .line 461
    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v1, v3, v1

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/4 p1, 0x2

    aget p1, v3, p1

    :goto_24
    add-float v0, v1, p1

    goto :goto_49

    .line 462
    :cond_27
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    if-ge p1, v0, :cond_39

    .line 463
    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v1, v3, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/4 p1, 0x3

    aget p1, v3, p1

    goto :goto_24

    .line 465
    :cond_39
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    aget v1, v2, v1

    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/4 p1, 0x4

    aget p1, v2, p1

    goto :goto_24

    :goto_49
    float-to-int p1, v0

    return p1
.end method

.method private init()V
    .registers 6

    .line 214
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/HeartRateChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->barPaint:Landroid/graphics/Paint;

    .line 216
    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    .line 245
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->alphaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->splitLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_204

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 260
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 263
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 266
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 267
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 268
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 269
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelXPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->yValueColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    const-string v2, "100"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint:Landroid/graphics/Paint;

    .line 287
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->touchPaint2:Landroid/graphics/Paint;

    return-void

    nop

    :array_204
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private initAnimator()V
    .registers 4

    .line 501
    new-instance v0, Lcom/keephealth/android/views/HeartRateChart$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/HeartRateChart$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/HeartRateChart;)V

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x2

    .line 505
    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->defaultDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 506
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/keephealth/android/views/HeartRateChart$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/HeartRateChart$1;-><init>(Lcom/keephealth/android/views/HeartRateChart;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initPath()V
    .registers 22

    move-object/from16 v0, p0

    .line 474
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    .line 475
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    .line 476
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    array-length v1, v1

    if-lez v1, :cond_cd

    .line 477
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 478
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 479
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 480
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 481
    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4a
    if-ltz v2, :cond_cd

    .line 482
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 483
    iget-object v4, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 484
    iget-boolean v4, v0, Lcom/keephealth/android/views/HeartRateChart;->isCubic:Z

    if-eqz v4, :cond_b2

    .line 485
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 486
    new-instance v5, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 487
    new-instance v1, Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 488
    iget-object v7, v0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget v4, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v4

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v10, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v11, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v13, v4

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 489
    iget-object v14, v0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    iget v4, v5, Landroid/graphics/Point;->x:I

    int-to-float v15, v4

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_c8

    .line 491
    :cond_b2
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 492
    iget-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c8
    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto/16 :goto_4a

    .line 497
    :cond_cd
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, v0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, v0, Lcom/keephealth/android/views/HeartRateChart;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method

.method private initView()V
    .registers 11

    .line 423
    iget-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMeasure:Z

    if-eqz v0, :cond_ed

    iget-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isInit:Z

    if-nez v0, :cond_ed

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isInit:Z

    .line 425
    iget-boolean v1, p0, Lcom/keephealth/android/views/HeartRateChart;->isOneDay:Z

    const/high16 v2, 0x44b40000    # 1440.0f

    if-eqz v1, :cond_17

    .line 426
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    goto :goto_3c

    .line 428
    :cond_17
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 429
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidth:F

    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    goto :goto_3c

    .line 431
    :cond_37
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    .line 433
    :goto_3c
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    .line 434
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->lineHeight:[F

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->splitNum:I

    sub-int/2addr v2, v0

    aget v0, v1, v2

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->pointHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->barWid:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    const/4 v0, 0x0

    move v1, v0

    .line 436
    :goto_57
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_b5

    .line 437
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    mul-float/2addr v2, v3

    const v3, 0x3fb33333    # 1.4f

    iget v4, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 438
    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/keephealth/android/views/HeartRateChart;->getYValue(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 439
    iget-object v4, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v4, v0

    .line 440
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 441
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 445
    :cond_b5
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->initPath()V

    .line 446
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->initAnimator()V

    .line 447
    iget-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->playAnim:Z

    if-eqz v0, :cond_c4

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 450
    :cond_c4
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    .line 451
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v2, 0xffffff

    and-int v7, v1, v2

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 450
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 452
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->invalidate()V

    :cond_ed
    return-void
.end method

.method private minutToX(I)F
    .registers 4

    int-to-float p1, p1

    .line 854
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    mul-float/2addr p1, v0

    const v0, 0x3fb33333    # 1.4f

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    add-float/2addr p1, v0

    return p1
.end method

.method private reset()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMove:Z

    .line 322
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isOver:Z

    const/4 v0, -0x1

    .line 323
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->selPosition:I

    .line 324
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isInit:Z

    return-void
.end method

.method private updateScaleYValue()V
    .registers 5

    .line 329
    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    if-gtz v0, :cond_8

    const/16 v0, 0xc8

    .line 330
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    :cond_8
    const/16 v0, 0xaa

    .line 335
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    const/16 v1, 0x96

    .line 336
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    const/16 v2, 0x64

    .line 337
    iput v2, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    .line 338
    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    return-void
.end method

.method private xToMinute(F)I
    .registers 4

    const v0, 0x3fb33333    # 1.4f

    .line 858
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->xOffSet:F

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->labelYWidth:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/keephealth/android/views/HeartRateChart;->chartWidthSpan:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public doClick(Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;)V
    .registers 2

    .line 845
    iput-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->clickListener:Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;

    return-void
.end method

.method synthetic lambda$initAnimator$0$com-keephealth-android-views-HeartRateChart(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 502
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->mAnimatorValue:F

    .line 503
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 534
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->drawXValue(Landroid/graphics/Canvas;)V

    .line 538
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    if-eqz v0, :cond_74

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_74

    .line 546
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    .line 547
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 549
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_71

    .line 551
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->path2:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 552
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 553
    iget-object v2, p0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/keephealth/android/views/HeartRateChart;->points:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 554
    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/keephealth/android/views/HeartRateChart;->bottomY:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/views/HeartRateChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/HeartRateChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 566
    :goto_71
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->drawTouch(Landroid/graphics/Canvas;)V

    :cond_74
    :goto_74
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 295
    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->w:I

    .line 296
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->h:I

    .line 297
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->calculate()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 822
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3c

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    goto :goto_49

    .line 828
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    .line 829
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMove:Z

    goto :goto_49

    .line 832
    :cond_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX2:I

    .line 833
    iget p2, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX1:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 834
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_39

    iget-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->clickListener:Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;

    if-eqz p1, :cond_39

    .line 835
    invoke-interface {p1}, Lcom/keephealth/android/views/HeartRateChart$TouchOrClickListener;->doClick()V

    .line 837
    :cond_39
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isMove:Z

    goto :goto_49

    .line 824
    :cond_3c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX:F

    .line 825
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/HeartRateChart;->touchX1:I

    .line 840
    :goto_49
    invoke-virtual {p0}, Lcom/keephealth/android/views/HeartRateChart;->invalidate()V

    return v0
.end method

.method public setDatas(Ljava/util/List;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isOneDay:Z

    .line 403
    iput-object p3, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    .line 404
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    const/16 p3, 0xc8

    if-le p2, p3, :cond_17

    const/16 p2, 0x12c

    .line 406
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    const/4 p2, 0x0

    .line 407
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    const/16 p2, 0x64

    .line 408
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->dY:I

    goto :goto_1f

    .line 410
    :cond_17
    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    const/16 p2, 0x32

    .line 411
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    .line 412
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->dY:I

    .line 414
    :goto_1f
    iget p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    int-to-float p3, p2

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    int-to-float v0, p2

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 415
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    int-to-float p2, p2

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 416
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    .line 417
    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    filled-new-array {p2, v0, p3, v1}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    .line 418
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->reset()V

    .line 419
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->filterData(Ljava/util/List;)V

    .line 420
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->initView()V

    return-void
.end method

.method public setDatas(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthHeartRate;ZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRate;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/keephealth/android/views/HeartRateChart;->isOneDay:Z

    .line 362
    iput-object p4, p0, Lcom/keephealth/android/views/HeartRateChart;->xtimes:Ljava/util/List;

    const p4, 0x3f59999a    # 0.85f

    const/16 v0, 0xc8

    if-eqz p3, :cond_2f

    .line 364
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getUserMaxHr()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    int-to-float p3, p2

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 365
    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 366
    iput v1, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    int-to-float p2, p2

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 367
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    .line 368
    iget p4, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    filled-new-array {p2, v1, p3, p4}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    goto :goto_67

    :cond_2f
    if-eqz p2, :cond_62

    .line 370
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result p3

    if-lez p3, :cond_62

    .line 371
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result p3

    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    .line 372
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_threshold()I

    move-result p3

    iput p3, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    .line 373
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_threshold()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    int-to-float p2, p2

    div-float/2addr p2, p4

    float-to-double p2, p2

    .line 374
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    .line 375
    iget p2, p0, Lcom/keephealth/android/views/HeartRateChart;->limintThreshold:I

    iget p3, p0, Lcom/keephealth/android/views/HeartRateChart;->aerobicThreshold:I

    iget p4, p0, Lcom/keephealth/android/views/HeartRateChart;->burnFatThreshold:I

    iget v1, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    filled-new-array {p2, p3, p4, v1}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/HeartRateChart;->scaleY:[I

    goto :goto_67

    .line 377
    :cond_62
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    .line 378
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->updateScaleYValue()V

    .line 381
    :goto_67
    iget p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    if-le p2, v0, :cond_77

    const/16 p2, 0x12c

    .line 382
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    const/4 p2, 0x0

    .line 383
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    const/16 p2, 0x64

    .line 384
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->dY:I

    goto :goto_7f

    .line 386
    :cond_77
    iput v0, p0, Lcom/keephealth/android/views/HeartRateChart;->MAX_VALUE:I

    const/16 p2, 0x32

    .line 387
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->MIN_VALUE:I

    .line 388
    iput p2, p0, Lcom/keephealth/android/views/HeartRateChart;->dY:I

    .line 390
    :goto_7f
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->reset()V

    .line 391
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/HeartRateChart;->filterData(Ljava/util/List;)V

    .line 392
    invoke-direct {p0}, Lcom/keephealth/android/views/HeartRateChart;->initView()V

    return-void
.end method

.method public setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/keephealth/android/views/HeartRateChart;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-void
.end method
