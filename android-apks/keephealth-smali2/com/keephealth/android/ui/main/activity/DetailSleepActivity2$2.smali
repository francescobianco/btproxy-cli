.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;
.super Ljava/lang/Object;
.source "DetailSleepActivity2.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->initSleepChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 12

    .line 286
    move-object p2, p1

    check-cast p2, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    float-to-int p1, p1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;I)I

    .line 288
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v0

    mul-float/2addr p1, v0

    .line 289
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 292
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setHighLightColor(I)V

    .line 293
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 294
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleEntry;->getItemCount()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 295
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v2

    invoke-virtual {v5, v2, p1}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    .line 296
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v5, v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    .line 297
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v3, v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isNoData:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)I

    move-result v3

    if-ne v3, v4, :cond_c8

    .line 300
    iget-wide v5, p1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    double-to-int p1, v5

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)I

    move-result v3

    mul-int/2addr p1, v3

    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v2, v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_e0

    .line 302
    :cond_c8
    iget-wide v5, p1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    iget-wide v7, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    add-double/2addr v5, v2

    double-to-int p1, v5

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 305
    :goto_e0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getHeight()I

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 307
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 308
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepHour:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p1

    if-ne p1, v4, :cond_129

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10054f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_197

    .line 313
    :cond_129
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_145

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_197

    .line 315
    :cond_145
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_161

    .line 316
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_197

    .line 317
    :cond_161
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_17d

    .line 318
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_197

    .line 319
    :cond_17d
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p1

    if-ne p1, v0, :cond_197

    .line 320
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_197
    :goto_197
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getTotalTime()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10076d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepHour:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
