.class public Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field handler:Landroid/os/Handler;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field private isGoIn:Z

.field private isHaveData:Z

.field private isQuit:Z

.field private isSendGoIn:Z

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field offTime:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectIndex:I

.field private showNewValue:Z

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 100
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I

    const/16 v1, 0x1e

    .line 110
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->offTime:I

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    .line 245
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z

    .line 246
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z

    .line 247
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isQuit:Z

    .line 332
    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 673
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isHaveData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Ljava/lang/String;)V
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showHrvKnow()V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Ljava/lang/String;)V
    .registers 2

    .line 100
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isSendGoIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isQuit:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Z)Z
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isQuit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    return-void
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 504
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_64

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 507
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_64

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 508
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_64

    .line 509
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_77

    .line 512
    :cond_64
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_77
    return-void
.end method

.method private initListener2()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initmBarChart()V
    .registers 9

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$4;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v3, 0x5

    .line 364
    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 365
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    const/high16 v4, 0x43480000    # 200.0f

    .line 366
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v5, 0x0

    .line 367
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 368
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 369
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 370
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v6, 0x1

    .line 373
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 374
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 375
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 376
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 377
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 378
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v7, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setPinchZoom(Z)V

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setDoubleTapToZoomEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setDrawGridBackground(Z)V

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setScaleEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 425
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 426
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 427
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 428
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 429
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 430
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v3, v2}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 433
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 434
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 435
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 436
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 437
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 438
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/charts/ScatterChart;->setClipValuesToContent(Z)V

    .line 440
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 473
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 474
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 475
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method static synthetic lambda$showHrvKnow$3(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 934
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private setHandler()V
    .registers 3

    .line 185
    new-instance v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 9

    .line 519
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 520
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 521
    sget-object v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$20;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_1c7

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_13d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_256

    .line 565
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getOneYearData()V

    .line 569
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 572
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 573
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_256

    .line 551
    :cond_b3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getSixMonthData()V

    .line 555
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_256

    .line 537
    :cond_13d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getMonthData()V

    .line 541
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 543
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_256

    .line 523
    :cond_1c7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    invoke-virtual {p1, v0, v5, v6}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getHistoryData(III)V

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_256
    return-void
.end method

.method private showHrvKnow()V
    .registers 8

    .line 932
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 933
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00d9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902a5

    .line 934
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 936
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 937
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_50

    const/16 v2, 0x50

    .line 939
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 940
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 941
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 942
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 943
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 945
    :cond_50
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvDayData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 822
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvMonthData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 596
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 597
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDay:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$9;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvMonth:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$10;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvSixMonth:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvYear:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$12;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivNextDate:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$13;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->ivPreDate:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$14;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->ivHrvDetail:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$15;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 131
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 132
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->toBack()V

    .line 133
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100669

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 137
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualHeartRateVariability()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    const-string v0, "HRV_DATA"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v0, :cond_c2

    .line 141
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/TimeUtil;->isSameDay(JJ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 144
    :cond_6c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_79
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c2

    .line 149
    :cond_b9
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c2
    :goto_c2
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showNewValue:Z

    .line 152
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_11e

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11e

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    .line 155
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MONTH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    .line 156
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DAY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    .line 157
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 161
    :cond_11e
    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v2, 0x7f0d0106

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initmBarChart()V

    .line 177
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/HRVViewModel;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getHistoryData(III)V

    .line 178
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 179
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initListener2()V

    .line 180
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setHandler()V

    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-ui-main-activity-HRVHistoryActivity(Lcom/keephealth/android/viewmodel/HRVDataBean;)V
    .registers 19

    .line 0
    move-object/from16 v0, p0

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getHrvItemList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3c7

    .line 678
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_3c7

    .line 684
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getMinHRV()I

    move-result v2

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getMaxHRV()I

    move-result v3

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->changeDateUpdateUI()V

    .line 688
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->clear()V

    .line 689
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1006e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10068b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    .line 691
    const-string v6, "--"

    const/4 v7, 0x1

    if-eqz v3, :cond_c0

    if-eqz v2, :cond_c0

    .line 692
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v8, v8, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v8

    add-int/lit8 v9, v3, 0x5

    .line 693
    div-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0xa

    int-to-float v10, v9

    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    add-int/lit8 v11, v2, -0x5

    .line 694
    div-int/lit8 v11, v11, 0xa

    mul-int/lit8 v11, v11, 0xa

    int-to-float v12, v11

    invoke-virtual {v8, v12}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 695
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 696
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    sub-int/2addr v9, v11

    .line 697
    div-int/lit8 v9, v9, 0xa

    .line 698
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 699
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v8, v8, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v8

    .line 700
    invoke-virtual {v8, v10}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 701
    invoke-virtual {v8, v12}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 702
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 703
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 704
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 705
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v8, v8, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " - "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_da

    .line 707
    :cond_c0
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 710
    :goto_da
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 711
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 712
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_24b

    move v9, v11

    .line 714
    :goto_f1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_24b

    .line 715
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    .line 719
    new-instance v13, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v14, v9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 720
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v14

    if-eqz v14, :cond_129

    .line 721
    iput-boolean v7, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isHaveData:Z

    .line 722
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_139

    .line 724
    :cond_129
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 726
    :goto_139
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getHour()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    const-string v5, "%02d"

    invoke-static {v5, v15}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMinute()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 727
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMinute()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v5

    if-eqz v5, :cond_1e2

    .line 729
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v5

    const/16 v10, 0x19

    if-lt v5, v10, :cond_1c9

    .line 730
    const-string v5, "#F24B4B"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 732
    :cond_1c9
    const-string v5, "#FF8650"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :goto_1d6
    iput v9, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I

    .line 735
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getOffTime()I

    move-result v5

    iput v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->offTime:I

    goto :goto_1ec

    .line 738
    :cond_1e2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :goto_1ec
    iget-boolean v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showNewValue:Z

    if-eqz v5, :cond_245

    .line 742
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v5

    if-eqz v5, :cond_245

    .line 743
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 744
    iget v10, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachYear:I

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v10, v13, :cond_245

    iget v10, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachMonth:I

    const/4 v13, 0x2

    .line 745
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v7

    if-ne v10, v13, :cond_245

    iget v10, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->mSeachDay:I

    const/4 v13, 0x5

    .line 746
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v10, v5, :cond_245

    .line 747
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->CPVHrv:Lcom/keephealth/android/views/CustomProgressView;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/CustomProgressView;->setProgress(I)V

    .line 748
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v5

    const/16 v10, 0x18

    if-le v5, v10, :cond_237

    .line 749
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->hrvContent:Landroid/widget/TextView;

    const v10, 0x7f10069f

    invoke-virtual {v0, v10}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_245

    .line 751
    :cond_237
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->hrvContent:Landroid/widget/TextView;

    const v10, 0x7f10066f

    invoke-virtual {v0, v10}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_245
    :goto_245
    add-int/lit8 v9, v9, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    goto/16 :goto_f1

    .line 758
    :cond_24b
    const-string v1, "HRV_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v1, :cond_298

    .line 760
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 761
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNew:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->CPVHrv:Lcom/keephealth/android/views/CustomProgressView;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/views/CustomProgressView;->setProgress(I)V

    goto :goto_2b2

    .line 764
    :cond_298
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 766
    :goto_2b2
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/high16 v4, 0x41200000    # 10.0f

    .line 767
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 768
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 769
    new-instance v4, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$16;

    invoke-direct {v4, v0, v3}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$16;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v3, 0x5

    .line 775
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 776
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 777
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 778
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 779
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 780
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 781
    new-instance v3, Lcom/github/mikephil/charting/data/ScatterDataSet;

    const-string v4, "\u7ea2\u8272\u70b9"

    invoke-direct {v3, v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 784
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setDrawValues(Z)V

    .line 785
    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setColors(Ljava/util/List;)V

    .line 786
    sget-object v4, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    const/high16 v4, 0x40e00000    # 7.0f

    .line 787
    invoke-static {v0, v4}, Lcom/keephealth/android/util/ConvertUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShapeSize(F)V

    .line 788
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setHighlightEnabled(Z)V

    .line 789
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setDrawHighlightIndicators(Z)V

    .line 790
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 791
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 793
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v3, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v3, v2}, Lcom/github/mikephil/charting/data/ScatterData;-><init>(Ljava/util/List;)V

    .line 795
    new-instance v2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    invoke-direct {v2, v11, v4, v7}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/ScatterData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 796
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/ScatterData;->setValueTextColor(I)V

    .line 797
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->setExtraBottomOffset(F)V

    .line 798
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/ScatterChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/ScatterChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v7, v7, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    sget-object v8, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/charts/ScatterChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 799
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    const/16 v4, 0x1f

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 800
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterData;->getXMin()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 801
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ScatterData;->getXMax()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 802
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->invalidate()V

    .line 803
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isHaveData:Z

    if-eqz v1, :cond_3b8

    .line 804
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    new-instance v2, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->offTime:I

    invoke-direct {v2, v3, v4, v5}, Lcom/keephealth/android/views/mpchat/CustomScatterRenderer;-><init>(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/utils/ViewPortHandler;I)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 812
    :cond_3b8
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 679
    :cond_3c7
    :goto_3c7
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    const/4 v2, 0x0

    const/16 v3, 0x137

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/ScatterChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 680
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->clear()V

    .line 681
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->invalidate()V

    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-ui-main-activity-HRVHistoryActivity(Lcom/keephealth/android/viewmodel/HRVDataBean;)V
    .registers 18

    .line 0
    move-object/from16 v0, p0

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getHrvDayList()Ljava/util/List;

    move-result-object v1

    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getStartDate()Ljava/util/Date;

    move-result-object v2

    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getAvgHRV()I

    .line 828
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getMinHRV()I

    move-result v4

    .line 829
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->getMaxHRV()I

    move-result v5

    .line 830
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->tvDate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\uff5e"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10068b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_8a

    .line 834
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_a4

    .line 836
    :cond_8a
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :goto_a4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 840
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_1da

    move v8, v10

    .line 842
    :goto_b6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_1da

    .line 843
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    .line 844
    new-instance v13, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v14, v8

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v9

    int-to-float v9, v9

    const/4 v11, 0x2

    new-array v11, v11, [F

    aput v15, v11, v10

    const/4 v15, 0x1

    aput v9, v11, v15

    invoke-direct {v13, v14, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 845
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v9

    if-nez v9, :cond_f9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v9

    if-nez v9, :cond_f9

    .line 846
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "-- "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_123

    .line 848
    :cond_f9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 850
    :goto_123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " -- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u67f1\u72b6\u56fe"

    invoke-static {v11, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iput v8, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I

    .line 852
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 853
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v11, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v11, :cond_1bc

    .line 855
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v9

    const-string v11, "01"

    const/4 v13, 0x5

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    const/4 v11, 0x7

    const-string v14, "\n"

    if-nez v9, :cond_191

    if-nez v8, :cond_178

    goto :goto_191

    .line 858
    :cond_178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 856
    :cond_191
    :goto_191
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    invoke-virtual {v13, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    :cond_1bc
    const/4 v13, 0x5

    .line 860
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v11, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v11, :cond_1cf

    .line 861
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 863
    :cond_1cf
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b6

    .line 867
    :cond_1da
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 868
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 869
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 870
    new-instance v3, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$18;

    invoke-direct {v3, v0, v7}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$18;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 876
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v7, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v7, :cond_205

    const/16 v3, 0xc

    .line 877
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/4 v3, 0x5

    goto :goto_209

    :cond_205
    const/4 v3, 0x5

    .line 879
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    :goto_209
    if-eqz v5, :cond_24a

    .line 882
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v7, v7, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v7

    add-int/2addr v5, v3

    .line 883
    div-int/lit8 v5, v5, 0xa

    const/4 v8, 0x1

    add-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    int-to-float v9, v5

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    sub-int/2addr v4, v3

    .line 884
    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0xa

    int-to-float v3, v4

    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 885
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 886
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    sub-int/2addr v5, v4

    .line 887
    div-int/lit8 v5, v5, 0xa

    .line 888
    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 889
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    .line 890
    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 891
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 892
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 893
    invoke-virtual {v4, v8}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 894
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 896
    :cond_24a
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 897
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v7, v7, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v8, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v7}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 898
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 899
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 900
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 901
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v2, 0x1

    .line 902
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 904
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna 2014"

    invoke-direct {v1, v6, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 v3, -0x10000

    .line 906
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 907
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 908
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 909
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 912
    new-instance v3, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    invoke-direct {v3, v10, v4, v2}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 913
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 914
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 915
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v5, v5, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v6, v6, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/keephealth/android/views/mpchat/CustomBarRenderer;-><init>(Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 917
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 918
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 919
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 920
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$19;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$19;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-HRVHistoryActivity(Landroid/view/View;)V
    .registers 3

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 165
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 166
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 168
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 172
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 583
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showNewValue:Z

    .line 585
    iget-boolean v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z

    if-eqz v1, :cond_18

    .line 586
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->isGoIn:Z

    .line 587
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHRV(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 589
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->handler:Landroid/os/Handler;

    :cond_1f
    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 479
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 480
    new-array v1, v1, [Ljava/lang/String;

    .line 482
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 484
    new-instance v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$8;-><init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    .line 497
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 484
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 500
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
