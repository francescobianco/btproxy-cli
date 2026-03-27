.class public Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;
.super Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.source "CustomScatterRenderer.java"


# instance fields
.field private highlightPaint:Landroid/graphics/Paint;

.field private highlightScale:F

.field private offTime:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightScale:F

    const/16 p1, 0x1e

    .line 34
    iput p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->offTime:I

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightPaint:Landroid/graphics/Paint;

    .line 39
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/utils/ViewPortHandler;I)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 33
    iput p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightScale:F

    const/16 p1, 0x1e

    .line 34
    iput p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->offTime:I

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightPaint:Landroid/graphics/Paint;

    .line 44
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iput p3, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->offTime:I

    return-void
.end method

.method private drawCustomScatterSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .registers 12

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    move v4, v3

    .line 89
    :goto_17
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryCount()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 90
    invoke-interface {p2, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v6

    .line 94
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v6, v8, v3

    aput v7, v8, v2

    .line 95
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 98
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v5

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_43

    const/high16 v5, -0x10000

    .line 99
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4c

    .line 101
    :cond_43
    const-string v5, "#FF8650"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    :goto_4c
    aget v5, v8, v3

    aget v6, v8, v2

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p1, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_58
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .registers 4

    .line 73
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 77
    :cond_c
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->drawCustomScatterSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 14

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    if-eqz v0, :cond_8c

    if-eqz p2, :cond_8c

    .line 51
    array-length v1, p2

    if-nez v1, :cond_f

    goto/16 :goto_8c

    :cond_f
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    if-eqz v0, :cond_8c

    .line 54
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_8c

    .line 55
    :cond_1f
    array-length v2, p2

    move v3, v1

    :goto_21
    if-ge v3, v2, :cond_8c

    aget-object v4, p2, v3

    .line 56
    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v4

    float-to-int v4, v4

    move v5, v1

    .line 57
    :goto_2b
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryCount()I

    move-result v6

    if-ge v5, v6, :cond_89

    .line 58
    invoke-interface {v0, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 60
    aget-object v8, v7, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v8, v7

    .line 61
    iget v7, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->offTime:I

    div-int/2addr v8, v7

    if-ne v8, v4, :cond_86

    .line 62
    iget-object v7, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v8

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    invoke-virtual {v7, v8, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v6

    .line 63
    iget-object v7, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v7

    iget v8, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightScale:F

    mul-float/2addr v7, v8

    .line 65
    iget-wide v8, v6, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v8, v8

    iget-wide v9, v6, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget-object v9, p0, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_8c
    :goto_8c
    return-void
.end method
