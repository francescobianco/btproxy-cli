.class public Lcom/keephealth/android/views/TempChart;
.super Landroid/view/View;
.source "TempChart.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/TempChart$TouchOrClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Chart"


# instance fields
.field private MAX_VALUE:D

.field private MIN_VALUE:D

.field private alphaPaint:Landroid/graphics/Paint;

.field animateValue:F

.field private barColor:I

.field private barNum:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWid:F

.field private barWidth:F

.field private bottomY:F

.field private chartWidth:F

.field private chartWidthSpan:F

.field private clickListener:Lcom/keephealth/android/views/TempChart$TouchOrClickListener;

.field private dY:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
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

.field private scaleY:[D

.field private scaleY1:D

.field private scaleY2:D

.field private scaleY3:D

.field private scaleY4:D

.field private scaleY5:D

.field private selPosition:I

.field private selectRect:Landroid/graphics/RectF;

.field private splitLineColor:I

.field private splitNum:I

.field private textColor:I

.field private textSize:F

.field timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field private touchPaint:Landroid/graphics/Paint;

.field private touchPaint2:Landroid/graphics/Paint;

.field touchX:D

.field private touchX1:I

.field private touchX2:I

.field touchY:D

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

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/TempChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/TempChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 197
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x7

    .line 52
    iput v2, v0, Lcom/keephealth/android/views/TempChart;->splitNum:I

    .line 53
    new-array v3, v2, [F

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    const/16 v3, 0x60

    .line 55
    iput v3, v0, Lcom/keephealth/android/views/TempChart;->barNum:I

    const-wide/high16 v3, 0x4040000000000000L    # 32.0

    .line 58
    iput-wide v3, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    const-wide/high16 v3, 0x4045000000000000L    # 42.0

    .line 59
    iput-wide v3, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    const/4 v5, 0x1

    .line 60
    iput v5, v0, Lcom/keephealth/android/views/TempChart;->dY:I

    int-to-double v6, v5

    sub-double v6, v3, v6

    const/4 v8, 0x2

    int-to-double v9, v8

    sub-double v9, v3, v9

    const/4 v11, 0x3

    int-to-double v12, v11

    sub-double v12, v3, v12

    const/4 v14, 0x4

    move-wide v15, v12

    int-to-double v11, v14

    sub-double v11, v3, v11

    const/4 v13, 0x5

    move-wide/from16 v17, v15

    int-to-double v14, v13

    sub-double v14, v3, v14

    const/4 v2, 0x6

    .line 61
    new-array v13, v2, [D

    const/4 v2, 0x0

    aput-wide v3, v13, v2

    aput-wide v6, v13, v5

    aput-wide v9, v13, v8

    const/4 v3, 0x3

    aput-wide v17, v13, v3

    const/4 v3, 0x4

    aput-wide v11, v13, v3

    const/4 v3, 0x5

    aput-wide v14, v13, v3

    iput-object v13, v0, Lcom/keephealth/android/views/TempChart;->scaleY:[D

    .line 68
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    .line 72
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    .line 77
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    .line 82
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 98
    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    .line 99
    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    .line 119
    iput-boolean v5, v0, Lcom/keephealth/android/views/TempChart;->playAnim:Z

    const/16 v3, 0x96

    .line 123
    iput v3, v0, Lcom/keephealth/android/views/TempChart;->defaultDuration:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 130
    iput-wide v3, v0, Lcom/keephealth/android/views/TempChart;->touchX:D

    .line 131
    iput-wide v3, v0, Lcom/keephealth/android/views/TempChart;->touchY:D

    const/4 v3, -0x1

    .line 138
    iput v3, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    .line 143
    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->isOver:Z

    .line 147
    iput-boolean v5, v0, Lcom/keephealth/android/views/TempChart;->isFillArea:Z

    .line 156
    iput-boolean v5, v0, Lcom/keephealth/android/views/TempChart;->fillAreaHasAnim:Z

    .line 161
    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->isMeasure:Z

    .line 163
    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->isInit:Z

    .line 182
    iput-boolean v5, v0, Lcom/keephealth/android/views/TempChart;->isOneDay:Z

    .line 185
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->rect:Landroid/graphics/RectF;

    .line 186
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    .line 432
    iput-boolean v5, v0, Lcom/keephealth/android/views/TempChart;->isCubic:Z

    .line 530
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    .line 198
    iput-object v1, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    .line 199
    sget-object v3, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v3, 0x41e00000    # 28.0f

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/keephealth/android/views/TempChart;->textSize:F

    const v3, -0x666667

    .line 201
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/views/TempChart;->textColor:I

    const v3, -0x10abc0

    .line 202
    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/views/TempChart;->barColor:I

    const/16 v3, 0x8

    const v4, -0x9fc6ce

    .line 203
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/views/TempChart;->splitLineColor:I

    const/16 v3, 0x9

    .line 204
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/views/TempChart;->yValueColor:I

    const/4 v3, 0x6

    .line 205
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->hasNoDataTip:Z

    const/4 v2, 0x7

    .line 206
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/views/TempChart;->noDataValue:Ljava/lang/String;

    const/4 v2, 0x4

    .line 207
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->hasTime:Z

    const/4 v2, 0x5

    .line 208
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/keephealth/android/views/TempChart;->hasYvalue:Z

    .line 209
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/TempChart;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/keephealth/android/views/TempChart;->isOver:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/TempChart;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/views/TempChart;->animateY()V

    return-void
.end method

.method private animateY()V
    .registers 4

    const/4 v0, 0x3

    .line 664
    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 667
    new-instance v1, Lcom/keephealth/android/views/TempChart$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/TempChart$2;-><init>(Lcom/keephealth/android/views/TempChart;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 675
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

    .line 306
    :goto_1
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->splitNum:I

    if-ge v0, v1, :cond_16

    .line 307
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    iget v3, p0, Lcom/keephealth/android/views/TempChart;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v0

    mul-float/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    .line 313
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->w:I

    int-to-float v1, v1

    const v2, 0x40333333    # 2.8f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidth:F

    .line 315
    iget v0, p0, Lcom/keephealth/android/views/TempChart;->barNum:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/TempChart;->barWidth:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 317
    iput v1, p0, Lcom/keephealth/android/views/TempChart;->barWid:F

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMeasure:Z

    .line 319
    invoke-direct {p0}, Lcom/keephealth/android/views/TempChart;->initView()V

    return-void
.end method

.method private drawMaxHeight(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 532
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 533
    :cond_d
    iget v1, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    if-gez v1, :cond_12

    return-void

    .line 534
    :cond_12
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 535
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 537
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 538
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 539
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    iget v3, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 543
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/keephealth/android/views/TempChart;->minutToX(I)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lcom/keephealth/android/views/TempChart;->getYValue(D)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    float-to-int v1, v6

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Point;->set(II)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 546
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v8, 0x40a00000    # 5.0f

    div-float v9, v1, v8

    add-float/2addr v6, v9

    sub-float v10, v1, v8

    iget-object v11, v0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 547
    iget-object v5, v0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0600a9

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    iget-object v10, v0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v1, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 549
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v9

    iget v9, v0, Lcom/keephealth/android/views/TempChart;->animateValue:F

    mul-float/2addr v1, v9

    iget-object v9, v0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 551
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->p:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    .line 552
    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v1

    .line 554
    iget v1, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    if-ltz v1, :cond_397

    .line 555
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06015c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 558
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 559
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    iget v5, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getRemark()Ljava/lang/String;

    move-result-object v10

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    iget v6, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    sget-object v4, Lcom/keephealth/android/views/TempChart$3;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v5, v0, Lcom/keephealth/android/views/TempChart;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_164

    const/4 v2, 0x2

    if-eq v4, v2, :cond_164

    const/4 v2, 0x3

    if-eq v4, v2, :cond_164

    goto :goto_198

    .line 568
    :cond_164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10015b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    iget v4, v0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    :goto_198
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    .line 572
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_1bd

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d0

    .line 575
    :cond_1bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2109"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1d0
    move-object v11, v1

    .line 577
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v1, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v12, v1

    .line 578
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v1, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v13, v1

    .line 580
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v1, v11}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v14, v1

    .line 581
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v1, v11}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v15, v1

    .line 582
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v5, v13, v15

    .line 586
    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    .line 589
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v16, v4, v1

    .line 590
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    add-float v17, v4, v1

    .line 592
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 593
    iget-object v3, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

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

    .line 595
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    .line 597
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    div-int/lit8 v6, v11, 0x2

    int-to-float v3, v6

    sub-float v3, v9, v3

    float-to-int v3, v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 598
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    int-to-float v3, v13

    sub-float v4, v16, v3

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v13, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    sub-int/2addr v4, v6

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 601
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 602
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v11, v11

    add-float/2addr v4, v11

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 603
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget-object v8, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v13, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    int-to-float v8, v1

    add-float/2addr v4, v8

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 606
    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    sub-float v2, v9, v2

    .line 608
    div-int/lit8 v4, v14, 0x2

    int-to-float v4, v4

    sub-float/2addr v9, v4

    .line 611
    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v4, v4, v13

    if-lez v4, :cond_2d0

    .line 612
    const-string v2, "\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u53f3\u8fb9\u8d85\u8fc7\u5c4f\u5e55\u4e86"

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 613
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 615
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v11

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 617
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, v12

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 618
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_2ca
    int-to-float v9, v14

    sub-float/2addr v6, v9

    div-float/2addr v6, v4

    add-float v9, v1, v6

    goto :goto_30c

    .line 619
    :cond_2d0
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v15

    if-gtz v1, :cond_2ff

    .line 620
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iput v8, v1, Landroid/graphics/RectF;->left:F

    .line 621
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v11

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 623
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, v12

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 624
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    goto :goto_2ca

    .line 625
    :cond_2ff
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v15

    if-gtz v1, :cond_30c

    .line 627
    const-string v1, "\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u3002\u9876\u90e8\u8d85\u8fc7\u5c4f\u5e55\u4e86"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 634
    :cond_30c
    :goto_30c
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060061

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 636
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v6, v11

    iget-object v11, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 638
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 639
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06014b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v6, v11

    iget-object v11, v0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 643
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->selectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v8

    if-eqz v10, :cond_384

    add-float v4, v1, v3

    .line 647
    iget-object v6, v0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v2, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_384
    add-float/2addr v1, v3

    add-float/2addr v1, v5

    .line 650
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

    move-object/from16 v3, v17

    invoke-virtual {v7, v3, v9, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_397
    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .registers 10

    .line 741
    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMove:Z

    if-eqz v0, :cond_15e

    .line 742
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    .line 743
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/TempChart;->minutToX(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    .line 744
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    goto/16 :goto_15c

    .line 746
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v1, :cond_15b

    .line 747
    iget-wide v4, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_15b

    .line 748
    invoke-direct {p0, v4, v5}, Lcom/keephealth/android/views/TempChart;->xToMinute(D)I

    move-result v0

    if-ltz v0, :cond_13a

    .line 750
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v4

    if-lt v4, v0, :cond_71

    .line 751
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    .line 752
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    goto/16 :goto_154

    .line 754
    :cond_71
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v4

    if-gt v4, v0, :cond_b1

    .line 755
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    .line 756
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    .line 757
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    goto/16 :goto_154

    .line 759
    :cond_b1
    :goto_b1
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_138

    .line 761
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v4

    if-gt v4, v0, :cond_134

    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v4

    if-lt v4, v0, :cond_134

    .line 763
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v1, v0, :cond_118

    .line 764
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    move v3, v2

    goto :goto_138

    .line 768
    :cond_118
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    .line 769
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    move v3, v5

    goto :goto_138

    :cond_134
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b1

    :cond_138
    :goto_138
    move v2, v3

    goto :goto_154

    .line 777
    :cond_13a
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/keephealth/android/views/TempChart;->touchY:D

    .line 781
    :goto_154
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/TempChart;->minutToX(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    goto :goto_15c

    :cond_15b
    move v2, v3

    .line 784
    :goto_15c
    iput v2, p0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    .line 786
    :cond_15e
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/TempChart;->drawMaxHeight(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 11

    .line 684
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, 0x0

    move v1, v0

    .line 685
    :goto_9
    iget v2, p0, Lcom/keephealth/android/views/TempChart;->splitNum:I

    const v3, 0x3fb33333    # 1.4f

    if-ge v1, v2, :cond_3b

    .line 686
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 687
    iget v4, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 688
    iget v4, p0, Lcom/keephealth/android/views/TempChart;->w:I

    int-to-float v4, v4

    iget v5, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v3, v3, v1

    iget v5, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    add-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 692
    :cond_3b
    iget-boolean v1, p0, Lcom/keephealth/android/views/TempChart;->hasYvalue:Z

    if-eqz v1, :cond_71

    move v1, v0

    .line 693
    :goto_40
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->scaleY:[D

    array-length v2, v2

    if-ge v1, v2, :cond_71

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->scaleY:[D

    aget-wide v5, v4, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    add-int/lit8 v1, v1, 0x1

    aget v5, v5, v1

    iget v6, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    add-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_40

    .line 699
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->barWid:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 700
    iget-object p1, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 701
    iget p1, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->barWidth:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 702
    :goto_85
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->barNum:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_a6

    .line 703
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->barWidth:F

    int-to-float v2, v0

    mul-float v4, v1, v2

    iget v5, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float v6, v5, v3

    add-float/2addr v4, v6

    .line 704
    iget v6, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    iget v7, p0, Lcom/keephealth/android/views/TempChart;->barWid:F

    add-float v8, v6, v7

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 708
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v6, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_a6
    return-void
.end method

.method private drawXValue(Landroid/graphics/Canvas;)V
    .registers 9

    .line 719
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 720
    iget v0, p0, Lcom/keephealth/android/views/TempChart;->chartWidth:F

    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 721
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v1

    const/4 v2, 0x0

    .line 723
    :goto_1d
    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    int-to-float v3, v2

    mul-float/2addr v3, v0

    const v4, 0x3fb33333    # 1.4f

    .line 724
    iget v5, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v4, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    add-float/2addr v3, v4

    if-nez v2, :cond_3b

    .line 726
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_54

    .line 727
    :cond_3b
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4d

    .line 728
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_54

    .line 730
    :cond_4d
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 733
    :goto_54
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    iget v6, p0, Lcom/keephealth/android/views/TempChart;->barWid:F

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_6a
    return-void
.end method

.method private filterData(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    move v1, v0

    move v2, v1

    .line 335
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 336
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/TempInfo;

    if-nez v1, :cond_1e

    .line 338
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v2

    goto :goto_23

    .line 340
    :cond_1e
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v4

    add-int/2addr v2, v4

    .line 342
    :goto_23
    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setOffTime(I)V

    .line 343
    iget-object v4, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 346
    :cond_2e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    :goto_33
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 348
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6a

    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6a

    .line 349
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 352
    :cond_6d
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "date:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private getYValue(D)I
    .registers 11

    .line 417
    iget-wide v0, p0, Lcom/keephealth/android/views/TempChart;->scaleY2:D

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    if-gez v2, :cond_17

    .line 418
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v3, v2, v3

    float-to-double v3, v3

    div-double/2addr v3, v0

    iget-wide v0, p0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    sub-double/2addr p1, v0

    mul-double/2addr v3, p1

    const/4 p1, 0x0

    aget p1, v2, p1

    float-to-double p1, p1

    add-double/2addr v3, p1

    goto :goto_62

    .line 419
    :cond_17
    iget-wide v4, p0, Lcom/keephealth/android/views/TempChart;->scaleY3:D

    cmpg-double v2, p1, v4

    if-gez v2, :cond_2a

    .line 420
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v2, v2, v3

    float-to-double v6, v2

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    sub-double/2addr p1, v0

    mul-double/2addr v6, p1

    float-to-double p1, v2

    :goto_27
    add-double v3, v6, p1

    goto :goto_62

    .line 421
    :cond_2a
    iget-wide v0, p0, Lcom/keephealth/android/views/TempChart;->scaleY4:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_3e

    .line 422
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v3, v2, v3

    float-to-double v6, v3

    sub-double/2addr v0, v4

    div-double/2addr v6, v0

    sub-double/2addr p1, v4

    mul-double/2addr v6, p1

    const/4 p1, 0x2

    aget p1, v2, p1

    :goto_3c
    float-to-double p1, p1

    goto :goto_27

    .line 423
    :cond_3e
    iget-wide v4, p0, Lcom/keephealth/android/views/TempChart;->scaleY5:D

    cmpg-double v2, p1, v4

    if-gez v2, :cond_51

    .line 424
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v3, v2, v3

    float-to-double v6, v3

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    sub-double/2addr p1, v0

    mul-double/2addr v6, p1

    const/4 p1, 0x3

    aget p1, v2, p1

    goto :goto_3c

    .line 426
    :cond_51
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    aget v1, v0, v3

    float-to-double v1, v1

    iget-wide v6, p0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    sub-double/2addr v6, v4

    div-double/2addr v1, v6

    sub-double/2addr p1, v4

    mul-double/2addr v1, p1

    const/4 p1, 0x4

    aget p1, v0, p1

    float-to-double p1, p1

    add-double v3, v1, p1

    :goto_62
    double-to-int p1, v3

    return p1
.end method

.method private init()V
    .registers 6

    .line 217
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/TempChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->barPaint:Landroid/graphics/Paint;

    .line 219
    iget v2, p0, Lcom/keephealth/android/views/TempChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06014a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->alphaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->splitLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_204

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 263
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->xSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 266
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 269
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 270
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 271
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->maxYSeparatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelXPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->yValueColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    const-string v2, "100"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->labelYPaint:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    .line 288
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->touchPaint:Landroid/graphics/Paint;

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->touchPaint2:Landroid/graphics/Paint;

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

    .line 462
    new-instance v0, Lcom/keephealth/android/views/TempChart$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/TempChart$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/TempChart;)V

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x2

    .line 466
    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->defaultDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/TempChart;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 467
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/keephealth/android/views/TempChart$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/TempChart$1;-><init>(Lcom/keephealth/android/views/TempChart;)V

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

    .line 435
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    .line 436
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

    .line 437
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v1, v1

    if-lez v1, :cond_cd

    .line 438
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 439
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 440
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 441
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 442
    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4a
    if-ltz v2, :cond_cd

    .line 443
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 444
    iget-object v4, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 445
    iget-boolean v4, v0, Lcom/keephealth/android/views/TempChart;->isCubic:Z

    if-eqz v4, :cond_b2

    .line 446
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 447
    new-instance v5, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 448
    new-instance v1, Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 449
    iget-object v7, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

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

    .line 450
    iget-object v14, v0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

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

    .line 452
    :cond_b2
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    iget-object v1, v0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c8
    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto/16 :goto_4a

    .line 458
    :cond_cd
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, v0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, v0, Lcom/keephealth/android/views/TempChart;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method

.method private initView()V
    .registers 11

    .line 386
    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMeasure:Z

    if-eqz v0, :cond_ea

    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isInit:Z

    if-nez v0, :cond_ea

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isInit:Z

    .line 388
    iget-boolean v1, p0, Lcom/keephealth/android/views/TempChart;->isOneDay:Z

    const/high16 v2, 0x44b40000    # 1440.0f

    if-eqz v1, :cond_17

    .line 389
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    goto :goto_3c

    .line 391
    :cond_17
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 392
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidth:F

    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    goto :goto_3c

    .line 394
    :cond_37
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    .line 396
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "date:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    .line 398
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->lineHeight:[F

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->splitNum:I

    sub-int/2addr v2, v0

    aget v0, v1, v2

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->pointHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->barWid:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    const/4 v0, 0x0

    .line 399
    :goto_6e
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b2

    .line 400
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    mul-float/2addr v1, v2

    const v2, 0x3fb33333    # 1.4f

    iget v3, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 401
    iget v2, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/keephealth/android/views/TempChart;->getYValue(D)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 402
    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 404
    :cond_b2
    invoke-direct {p0}, Lcom/keephealth/android/views/TempChart;->initPath()V

    .line 405
    invoke-direct {p0}, Lcom/keephealth/android/views/TempChart;->initAnimator()V

    .line 406
    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->playAnim:Z

    if-eqz v0, :cond_c1

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    :cond_c1
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    .line 410
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

    .line 409
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 411
    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->invalidate()V

    :cond_ea
    return-void
.end method

.method private minutToX(I)D
    .registers 4

    int-to-float p1, p1

    .line 840
    iget v0, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    mul-float/2addr p1, v0

    const v0, 0x3fb33333    # 1.4f

    iget v1, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    add-float/2addr p1, v0

    float-to-double v0, p1

    return-wide v0
.end method

.method private reset()V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMove:Z

    .line 325
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isOver:Z

    const/4 v1, -0x1

    .line 326
    iput v1, p0, Lcom/keephealth/android/views/TempChart;->selPosition:I

    .line 327
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 328
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isInit:Z

    return-void
.end method

.method private xToMinute(D)I
    .registers 5

    const v0, 0x3fb33333    # 1.4f

    .line 844
    iget v1, p0, Lcom/keephealth/android/views/TempChart;->xOffSet:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    sub-double/2addr p1, v0

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->labelYWidth:F

    float-to-double v0, v0

    sub-double/2addr p1, v0

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->chartWidthSpan:F

    float-to-double v0, v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public doClick(Lcom/keephealth/android/views/TempChart$TouchOrClickListener;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/keephealth/android/views/TempChart;->clickListener:Lcom/keephealth/android/views/TempChart$TouchOrClickListener;

    return-void
.end method

.method synthetic lambda$initAnimator$0$com-keephealth-android-views-TempChart(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 463
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/TempChart;->mAnimatorValue:F

    .line 464
    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 495
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/TempChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 497
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/TempChart;->drawXValue(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_7c

    .line 507
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    .line 508
    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 510
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_71

    .line 512
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->path2:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 514
    iget-object v2, p0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/keephealth/android/views/TempChart;->bottomY:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 517
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/keephealth/android/views/TempChart;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 524
    :goto_71
    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isOver:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->playAnim:Z

    if-nez v0, :cond_7c

    .line 525
    :cond_79
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/TempChart;->drawTouch(Landroid/graphics/Canvas;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 298
    iput p1, p0, Lcom/keephealth/android/views/TempChart;->w:I

    .line 299
    iput p2, p0, Lcom/keephealth/android/views/TempChart;->h:I

    .line 300
    invoke-direct {p0}, Lcom/keephealth/android/views/TempChart;->calculate()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 792
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    goto :goto_44

    .line 798
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    .line 799
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMove:Z

    goto :goto_44

    .line 802
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/TempChart;->touchX2:I

    .line 803
    iget p2, p0, Lcom/keephealth/android/views/TempChart;->touchX1:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 804
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_33

    iget-object p1, p0, Lcom/keephealth/android/views/TempChart;->clickListener:Lcom/keephealth/android/views/TempChart$TouchOrClickListener;

    if-eqz p1, :cond_33

    .line 805
    invoke-interface {p1}, Lcom/keephealth/android/views/TempChart$TouchOrClickListener;->doClick()V

    .line 807
    :cond_33
    iput-boolean v0, p0, Lcom/keephealth/android/views/TempChart;->isMove:Z

    goto :goto_44

    .line 794
    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    .line 795
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/TempChart;->touchX1:I

    .line 810
    :goto_44
    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->invalidate()V

    return v0
.end method

.method public setDatas(Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4045000000000000L    # 42.0

    .line 358
    iput-wide v1, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    const-wide/high16 v1, 0x4040000000000000L    # 32.0

    .line 359
    iput-wide v1, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    const/4 v3, 0x1

    .line 360
    iput-boolean v3, v0, Lcom/keephealth/android/views/TempChart;->isOneDay:Z

    move-object/from16 v4, p2

    .line 361
    iput-object v4, v0, Lcom/keephealth/android/views/TempChart;->xtimes:Ljava/util/List;

    .line 362
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    .line 363
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    sub-double v6, v4, v6

    iput-wide v6, v0, Lcom/keephealth/android/views/TempChart;->scaleY2:D

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    sub-double v6, v4, v6

    .line 364
    iput-wide v6, v0, Lcom/keephealth/android/views/TempChart;->scaleY3:D

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    sub-double v6, v4, v6

    .line 365
    iput-wide v6, v0, Lcom/keephealth/android/views/TempChart;->scaleY4:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    .line 366
    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY5:D

    .line 367
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v4

    if-ne v4, v3, :cond_7c

    .line 368
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    .line 369
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY2:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY2:D

    .line 370
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY3:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY3:D

    .line 371
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY4:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY4:D

    .line 372
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY5:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY5:D

    .line 373
    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    .line 375
    :cond_7c
    iget-wide v1, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    iget-wide v4, v0, Lcom/keephealth/android/views/TempChart;->scaleY5:D

    iget-wide v6, v0, Lcom/keephealth/android/views/TempChart;->scaleY4:D

    iget-wide v8, v0, Lcom/keephealth/android/views/TempChart;->scaleY3:D

    iget-wide v10, v0, Lcom/keephealth/android/views/TempChart;->scaleY2:D

    iget-wide v12, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    const/4 v14, 0x6

    new-array v14, v14, [D

    const/4 v15, 0x0

    aput-wide v1, v14, v15

    aput-wide v4, v14, v3

    const/4 v1, 0x2

    aput-wide v6, v14, v1

    const/4 v1, 0x3

    aput-wide v8, v14, v1

    const/4 v1, 0x4

    aput-wide v10, v14, v1

    const/4 v1, 0x5

    aput-wide v12, v14, v1

    iput-object v14, v0, Lcom/keephealth/android/views/TempChart;->scaleY:[D

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->reset()V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAX_VALUE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/keephealth/android/views/TempChart;->MAX_VALUE:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/keephealth/android/views/TempChart;->MIN_VALUE:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 378
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/views/TempChart;->filterData(Ljava/util/List;)V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/views/TempChart;->initView()V

    return-void
.end method

.method public setTouchPoint(I)V
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    array-length v1, v0

    if-ge p1, v1, :cond_54

    .line 817
    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/keephealth/android/views/TempChart;->touchX:D

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->touchX1:I

    .line 819
    iget-object v0, p0, Lcom/keephealth/android/views/TempChart;->points:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/keephealth/android/views/TempChart;->touchX2:I

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70b9\u51fb\u70b9:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\u70b9\u51fb\u5750\u6807x:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->touchX1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 821
    iget p1, p0, Lcom/keephealth/android/views/TempChart;->touchX2:I

    iget v0, p0, Lcom/keephealth/android/views/TempChart;->touchX1:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4e

    iget-object p1, p0, Lcom/keephealth/android/views/TempChart;->clickListener:Lcom/keephealth/android/views/TempChart$TouchOrClickListener;

    if-eqz p1, :cond_4e

    .line 822
    invoke-interface {p1}, Lcom/keephealth/android/views/TempChart$TouchOrClickListener;->doClick()V

    :cond_4e
    const/4 p1, 0x1

    .line 824
    iput-boolean p1, p0, Lcom/keephealth/android/views/TempChart;->isMove:Z

    .line 825
    invoke-virtual {p0}, Lcom/keephealth/android/views/TempChart;->invalidate()V

    :cond_54
    return-void
.end method

.method public setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/keephealth/android/views/TempChart;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-void
.end method
