.class public Lcom/keephealth/android/views/mpchat/CustomBarRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "CustomBarRenderer.java"


# instance fields
.field private final barPaint:Landroid/graphics/Paint;

.field private final highlightPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->barPaint:Landroid/graphics/Paint;

    .line 26
    const-string p3, "#F24B4B"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->highlightPaint:Landroid/graphics/Paint;

    .line 30
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, -0x10000

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .registers 13

    .line 36
    iget-object p3, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 40
    :goto_16
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 41
    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 43
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6e

    .line 44
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    aget v4, v4, v1

    .line 45
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v6

    aget v6, v6, v5

    .line 48
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    sub-float/2addr v7, v8

    .line 49
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v3

    add-float/2addr v3, v8

    const/4 v8, 0x4

    .line 53
    new-array v8, v8, [F

    aput v7, v8, v1

    aput v6, v8, v5

    const/4 v6, 0x2

    aput v3, v8, v6

    const/4 v3, 0x3

    aput v4, v8, v3

    .line 54
    invoke-virtual {p3, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 57
    new-instance v4, Landroid/graphics/RectF;

    aget v7, v8, v1

    aget v3, v8, v3

    aget v6, v8, v6

    aget v5, v8, v5

    invoke-direct {v4, v7, v3, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    iget-object v3, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->barPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {p1, v4, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_71
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 15

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v1

    .line 69
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_8c

    aget-object v5, p2, v4

    .line 70
    iget-object v6, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-nez v6, :cond_2c

    goto :goto_89

    .line 73
    :cond_2c
    invoke-virtual {v5}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v5

    invoke-interface {v6, v7, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v5, :cond_89

    .line 74
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v6

    if-eqz v6, :cond_89

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4b

    goto :goto_89

    .line 76
    :cond_4b
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v6

    aget v6, v6, v3

    .line 77
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 79
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v1, v11

    sub-float/2addr v10, v11

    .line 80
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v5

    add-float/2addr v5, v11

    const/4 v11, 0x4

    .line 84
    new-array v11, v11, [F

    aput v10, v11, v3

    aput v8, v11, v9

    aput v5, v11, v7

    const/4 v5, 0x3

    aput v6, v11, v5

    .line 85
    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 88
    new-instance v6, Landroid/graphics/RectF;

    aget v8, v11, v3

    aget v5, v11, v5

    aget v7, v11, v7

    aget v9, v11, v9

    invoke-direct {v6, v8, v5, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    iget-object v5, p0, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;->highlightPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_8c
    return-void
.end method
