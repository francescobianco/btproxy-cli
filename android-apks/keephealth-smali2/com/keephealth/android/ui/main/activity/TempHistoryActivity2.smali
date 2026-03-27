.class public Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "TempHistoryActivity2.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/TempHistoryContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/TempHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/TempHistoryContract$View;"
    }
.end annotation


# instance fields
.field barLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field ivNextDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bd
    .end annotation
.end field

.field ivPreDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c5
    .end annotation
.end field

.field mBarChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d8
    .end annotation
.end field

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field rlAvg:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904db
    .end annotation
.end field

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectIndex:I

.field showData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056a
    .end annotation
.end field

.field private showNewValue:Z

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061d
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field tvDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090648
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvNewValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068f
    .end annotation
.end field

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
    .end annotation
.end field

.field tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e6
    .end annotation
.end field

.field tvTagAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e7
    .end annotation
.end field

.field tvTagNew:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e8
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f2
    .end annotation
.end field

.field tvTotal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ff
    .end annotation
.end field

.field tvValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070c
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field

.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I

    .line 179
    new-instance v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I

    return p1
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 586
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 589
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 590
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 591
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 594
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initmBarChart()V
    .registers 9

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x4

    .line 211
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 213
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v6, 0x428c0000    # 70.0f

    const/high16 v7, 0x42d20000    # 105.0f

    if-nez v3, :cond_60

    .line 214
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 215
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    goto :goto_66

    .line 217
    :cond_60
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 218
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 220
    :goto_66
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 225
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 227
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    if-nez v3, :cond_8e

    .line 228
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 229
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    goto :goto_94

    .line 231
    :cond_8e
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 232
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 234
    :goto_94
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 235
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 9

    .line 601
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 602
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 603
    sget-object v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$9;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_148

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_e9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_89

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_1ad

    .line 647
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getOneYearData()V

    .line 651
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 655
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 633
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getSixMonthData()V

    .line 637
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 640
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 619
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getMonthData()V

    .line 623
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 625
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 630
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ad

    .line 605
    :cond_148
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {p1, v0, v5, v6}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    .line 609
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 610
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1ad
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method changeNextDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 684
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 687
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 688
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 689
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 690
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    .line 691
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 692
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 693
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 694
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method changePreDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    const v0, 0x7f0902c5

    const-wide/16 v1, 0x1f4

    .line 699
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 701
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 702
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 703
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 704
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 705
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    .line 706
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 707
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 708
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 709
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0091

    return v0
.end method

.method protected initView()V
    .registers 7

    .line 134
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 140
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 141
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 142
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    .line 143
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    .line 144
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 149
    :cond_80
    const-string v0, "TEMP_DATA"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v0, :cond_126

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v0

    const-string v1, "\u2103"

    if-nez v0, :cond_ea

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2103"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_126

    .line 156
    :cond_ea
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10077d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 160
    :cond_126
    :goto_126
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->initmBarChart()V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-TempHistoryActivity2(Landroid/view/View;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 165
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 167
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 171
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f0906c1,
            0x7f09068a,
            0x7f09071b
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 677
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 674
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 671
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 668
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x7f090648 -> :sswitch_1a
        0x7f09068a -> :sswitch_14
        0x7f0906c1 -> :sswitch_e
        0x7f09071b -> :sswitch_8
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 715
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 716
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    return-void
.end method

.method public reBackDayData(Ljava/util/List;DDD)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
            ">;DDD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->changeDateUpdateUI()V

    .line 310
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->clear()V

    .line 311
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100180

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100152

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    .line 314
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v8

    const-string v9, " - "

    const v10, 0x7f10077c

    const-wide/16 v15, 0x0

    const-string v13, "--"

    const-string v14, " "

    const-string v11, "\u2103"

    if-nez v8, :cond_104

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    cmpl-double v12, v1, v15

    if-eqz v12, :cond_a6

    .line 317
    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 318
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_225

    .line 320
    :cond_a6
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 321
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 322
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    if-eqz v1, :cond_225

    .line 323
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_225

    .line 328
    :cond_104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f10077d

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    cmpl-double v10, v1, v15

    if-eqz v10, :cond_1c9

    .line 330
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v19, 0x3ffccccccccccccdL    # 1.8

    mul-double v3, v3, v19

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    add-double v3, v3, v17

    const/4 v15, 0x1

    invoke-static {v3, v4, v15}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-double v4, v5, v19

    add-double v4, v4, v17

    invoke-static {v4, v5, v15}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v10, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 331
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    add-double/2addr v1, v5

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showNewValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hr3d"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    if-eqz v1, :cond_225

    .line 334
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_225

    .line 338
    :cond_1c9
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 339
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 340
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    if-eqz v1, :cond_225

    .line 341
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 347
    :cond_225
    :goto_225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_632

    const/4 v3, 0x0

    .line 350
    :goto_236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_632

    move-object/from16 v6, p1

    .line 351
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 352
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v9

    if-nez v9, :cond_252

    const-wide v15, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    goto :goto_281

    .line 354
    :cond_252
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmpl-double v9, v9, v15

    if-lez v9, :cond_273

    .line 355
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    const-wide v15, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v9, v15

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    add-double v9, v9, v17

    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    goto :goto_281

    :cond_273
    const-wide v15, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    .line 357
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 360
    :goto_281
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v10, v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v9, v10, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 361
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v5

    const-wide/16 v19, 0x0

    cmpl-double v5, v5, v19

    if-nez v5, :cond_2ef

    .line 362
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v5

    if-nez v5, :cond_2c5

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f10077c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_2ed

    .line 366
    :cond_2c5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f10077d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    :goto_2ed
    move-object v12, v11

    goto :goto_35a

    .line 371
    :cond_2ef
    iput v3, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I

    .line 372
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v5

    if-nez v5, :cond_329

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f10077c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v11

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_35a

    :cond_329
    move-object v12, v11

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f10077d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 381
    :goto_35a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getHour()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "%02d"

    invoke-static {v10, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMinute()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 382
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-boolean v5, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->showNewValue:Z

    if-eqz v5, :cond_61d

    .line 385
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    const-string v9, " \u2103"

    const-string v11, "  "

    if-eqz v5, :cond_472

    .line 387
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f10044c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v5

    if-nez v5, :cond_436

    .line 389
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v12}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_61d

    .line 391
    :cond_436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f10077d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v12}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_61d

    .line 395
    :cond_472
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v19

    const-wide/16 v22, 0x0

    cmpl-double v5, v19, v22

    if-eqz v5, :cond_612

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 397
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v13

    const v13, 0x7f10041a

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f1001dc

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    iget v4, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachYear:I

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const-string v13, "-"

    if-ne v4, v15, :cond_548

    iget v4, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachMonth:I

    const/4 v15, 0x2

    .line 399
    invoke-virtual {v5, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v21, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ne v4, v15, :cond_548

    iget v4, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mSeachDay:I

    const/4 v15, 0x5

    .line 400
    invoke-virtual {v5, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_548

    .line 402
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 p4, v1

    const v1, 0x7f10044c

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f10044c

    goto :goto_5af

    :cond_548
    move-object/from16 p4, v1

    .line 404
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f10044c

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_5af
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v1

    if-nez v1, :cond_5d9

    .line 407
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v12}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v5, 0x7f10077d

    goto :goto_629

    .line 409
    :cond_5d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_629

    :cond_612
    move-object/from16 p4, v1

    move-object/from16 v16, v13

    const v5, 0x7f10077d

    const v15, 0x7f10044c

    goto :goto_629

    :cond_61d
    :goto_61d
    move-object/from16 p4, v1

    move-object/from16 v16, v13

    const v5, 0x7f10077d

    const v15, 0x7f10044c

    const-wide/16 v22, 0x0

    :goto_629
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p4

    move-object v11, v12

    move-object/from16 v13, v16

    goto/16 :goto_236

    :cond_632
    move-object/from16 p4, v1

    .line 418
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/high16 v3, 0x41200000    # 10.0f

    .line 419
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 420
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 421
    new-instance v3, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$5;

    invoke-direct {v3, v0, v2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, 0x5

    .line 427
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 428
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 429
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v2, 0x0

    .line 430
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 431
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v2, 0x1

    .line 432
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 434
    :goto_66a
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "gde2ew"

    if-ge v2, v1, :cond_693

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "values[i]:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_66a

    :cond_693
    move-object/from16 v4, p4

    .line 437
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v2, "Statistics Vienna 2014"

    invoke-direct {v1, v4, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 438
    const-string v2, "#6FDEC8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 439
    const-string v2, "#00C59E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    const/4 v2, 0x1

    .line 440
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 441
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 442
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 445
    new-instance v4, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v2}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 446
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 447
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 448
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 449
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    invoke-direct {v4, v5, v6, v8}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "min:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getYMin()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  max:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getYMax()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    .line 456
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v3, 0x1f

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 457
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 458
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 459
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempDayInfo;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "DDD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    .line 470
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvDate:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff5e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v10, p2

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v7

    .line 472
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v8

    const-string v9, " - "

    const v10, 0x7f10077c

    const v11, 0x7f10077d

    const-wide/16 v16, 0x0

    const-string v12, "--"

    const-string v13, " "

    const-string v14, "\u2103"

    if-nez v8, :cond_db

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    cmpl-double v15, v5, v16

    if-eqz v15, :cond_ad

    .line 475
    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v15, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 476
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_187

    .line 478
    :cond_ad
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_187

    .line 482
    :cond_db
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    cmpl-double v10, v5, v16

    if-eqz v10, :cond_15b

    .line 484
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v18, 0x3ffccccccccccccdL    # 1.8

    mul-double v3, v3, v18

    const-wide/high16 v20, 0x4040000000000000L    # 32.0

    add-double v3, v3, v20

    const/4 v11, 0x1

    invoke-static {v3, v4, v11}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-double v1, v1, v18

    add-double v1, v1, v20

    invoke-static {v1, v2, v11}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v10, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 485
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x4040000000000000L    # 32.0

    add-double/2addr v5, v3

    const/4 v3, 0x1

    invoke-static {v5, v6, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_187

    .line 487
    :cond_15b
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :goto_187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-lez v3, :cond_33e

    move v3, v5

    .line 494
    :goto_19a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_33e

    move-object/from16 v6, p1

    .line 495
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 496
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v9

    if-nez v9, :cond_1b6

    const-wide v14, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v18, 0x4040000000000000L    # 32.0

    goto :goto_1e3

    .line 498
    :cond_1b6
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v9

    cmpl-double v9, v9, v16

    if-lez v9, :cond_1d5

    .line 499
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v9

    const-wide v14, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v9, v14

    const-wide/high16 v18, 0x4040000000000000L    # 32.0

    add-double v9, v9, v18

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    goto :goto_1e3

    :cond_1d5
    const-wide v14, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v18, 0x4040000000000000L    # 32.0

    .line 501
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 504
    :goto_1e3
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v10, v3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v14

    double-to-float v11, v14

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 505
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v10

    cmpl-double v10, v10, v16

    if-nez v10, :cond_24f

    .line 506
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    if-nez v10, :cond_226

    .line 507
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f10077c

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 508
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto/16 :goto_2b8

    .line 510
    :cond_226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f10077d

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 511
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_2b8

    .line 515
    :cond_24f
    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    if-nez v10, :cond_286

    .line 516
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f10077c

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 517
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_2b6

    .line 519
    :cond_286
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f10077d

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 520
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 523
    :goto_2b6
    iput v3, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I

    .line 525
    :goto_2b8
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 526
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v10, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v10, :cond_321

    .line 528
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "01"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "\n"

    if-nez v9, :cond_2f7

    if-nez v3, :cond_2de

    goto :goto_2f7

    .line 531
    :cond_2de
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33a

    .line 529
    :cond_2f7
    :goto_2f7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33a

    .line 533
    :cond_321
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v10, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v10, :cond_333

    .line 534
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33a

    .line 536
    :cond_333
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19a

    .line 540
    :cond_33e
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    const/high16 v6, 0x41200000    # 10.0f

    .line 541
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 542
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 543
    new-instance v6, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$7;

    invoke-direct {v6, v0, v2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 549
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v6, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v6, :cond_366

    const/16 v2, 0xc

    .line 550
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_369

    .line 552
    :cond_366
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 554
    :goto_369
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 555
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 556
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 557
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 558
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 559
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v2, 0x1

    .line 560
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 562
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {v3, v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 563
    const-string v1, "#6FDEC8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 564
    const-string v1, "#00C59E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 565
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 566
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v3, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 570
    new-instance v1, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    invoke-direct {v1, v5, v4, v2}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v1, -0x1

    .line 571
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 572
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 573
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 574
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 575
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 576
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$8;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 283
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 284
    new-array v1, v1, [Ljava/lang/String;

    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 288
    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V

    .line 301
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 304
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
