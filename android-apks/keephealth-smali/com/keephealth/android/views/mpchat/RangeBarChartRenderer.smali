.class public Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "RangeBarChartRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .registers 9

    .line 19
    invoke-interface {p2, p3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/mpchat/RangeBarEntry;

    .line 22
    iget-object v1, p0, Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v1

    .line 23
    invoke-virtual {v0}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 24
    invoke-virtual {v0}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getX()F

    move-result v3

    add-float/2addr v3, v1

    .line 25
    invoke-virtual {v0}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getHigh()F

    move-result v1

    .line 26
    invoke-virtual {v0}, Lcom/keephealth/android/views/mpchat/RangeBarEntry;->getLow()F

    move-result v0

    .line 29
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhase(Landroid/graphics/RectF;F)V

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2, p3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p2, p0, Lcom/keephealth/android/views/mpchat/RangeBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
