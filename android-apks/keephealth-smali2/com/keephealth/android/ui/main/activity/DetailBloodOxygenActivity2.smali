.class public Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailBloodOxygenActivity2.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;"
    }
.end annotation


# instance fields
.field TvRealTimeValue:Landroid/widget/TextView;

.field barLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field handler:Landroid/os/Handler;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field private isGoIn:Z

.field private isQuit:Z

.field private isSendGoIn:Z

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

.field rlCurrentHeartRate:Landroid/widget/RelativeLayout;

.field rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

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

.field tvNewValue2:Landroid/widget/TextView;

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

.field tvTagNewTime:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selectIndex:I

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    .line 274
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isSendGoIn:Z

    .line 275
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z

    .line 276
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z

    .line 358
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Ljava/lang/String;)V
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Ljava/lang/String;)V
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isSendGoIn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isSendGoIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isQuit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selectIndex:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;I)I
    .registers 2

    .line 84
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selectIndex:I

    return p1
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 662
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 665
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 666
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 667
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 670
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initmBarChart()V
    .registers 7

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 381
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x4

    .line 383
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 385
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 386
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 387
    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    const/high16 v4, 0x42c80000    # 100.0f

    .line 388
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v5, 0x42a00000    # 80.0f

    .line 389
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 390
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 391
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 392
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 394
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 395
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 396
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 397
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 398
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 401
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 402
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 427
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private setHandler()V
    .registers 3

    .line 216
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 9

    .line 677
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 678
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 679
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$11;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 723
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getOneYearData()V

    .line 727
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 729
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 731
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 709
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getSixMonthData()V

    .line 713
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 714
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 716
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 718
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 695
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getMonthData()V

    .line 699
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 701
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 702
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 703
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 704
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ad

    .line 681
    :cond_148
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {p1, v0, v5, v6}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    .line 685
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 686
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1ad
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
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

    .line 760
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 763
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 764
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 765
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 766
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    .line 767
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 768
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 769
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 770
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

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

    .line 775
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 777
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 778
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 779
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 780
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 781
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    .line 782
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 783
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 784
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 785
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0034

    return v0
.end method

.method protected initView()V
    .registers 7

    .line 153
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showNewValue:Z

    .line 155
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100484

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0904e4

    .line 157
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    const v1, 0x7f090508

    .line 158
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    const v1, 0x7f0906ea

    .line 159
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNewTime:Landroid/widget/TextView;

    const v1, 0x7f090690

    .line 160
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue2:Landroid/widget/TextView;

    const v1, 0x7f090013

    .line 161
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    .line 163
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    .line 164
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualHeartRateVariability()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_76

    .line 168
    :cond_6c
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    :goto_76
    const-string v1, "OXYGEN_DATA"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v1, :cond_100

    .line 173
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/keephealth/android/util/TimeUtil;->isSameDay(JJ)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 174
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a9

    .line 176
    :cond_9e
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_a9
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {p0, v2, v4}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_100
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 183
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_159

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_159

    .line 184
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    .line 185
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MONTH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    .line 186
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DAY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    .line 187
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 188
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 189
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 191
    :cond_159
    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 192
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    const v2, 0x7f0d0106

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->initmBarChart()V

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    .line 209
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 210
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->initListener()V

    .line 211
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setHandler()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailBloodOxygenActivity2(Landroid/view/View;)V
    .registers 3

    .line 194
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 196
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 198
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 202
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

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

    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 753
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 750
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 747
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 744
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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
    .registers 4

    .line 790
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 791
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 792
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->isGoIn:Z

    .line 793
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 795
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 796
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->handler:Landroid/os/Handler;

    :cond_1d
    return-void
.end method

.method public reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBloodItem;",
            ">;",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->changeDateUpdateUI()V

    .line 458
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->clear()V

    .line 459
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100483

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const-string v1, "  "

    const-string v2, "-- %"

    const v3, 0x7f10044c

    const-string v4, " %"

    const-string v5, "%"

    if-eqz p2, :cond_8d

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    if-eqz v6, :cond_8d

    .line 462
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 463
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_10e

    .line 465
    :cond_8d
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 466
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 467
    iget-boolean v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showNewValue:Z

    if-eqz v6, :cond_10e

    .line 468
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v6, :cond_f8

    .line 469
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10e

    .line 472
    :cond_f8
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_10e
    :goto_10e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "infos.size():"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GFF3f2"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_357

    const/4 v8, 0x0

    .line 481
    :goto_137
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_357

    move-object/from16 v12, p1

    .line 482
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 483
    new-instance v14, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v15, v8

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v14, v15, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 484
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v10

    if-nez v10, :cond_15a

    .line 485
    invoke-virtual {v14, v2}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_174

    .line 487
    :cond_15a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 488
    iput v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selectIndex:I

    .line 490
    :goto_174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    const-string v9, "%02d"

    invoke-static {v9, v15}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, ":"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 491
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-boolean v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showNewValue:Z

    if-eqz v10, :cond_34d

    .line 494
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v10, :cond_241

    .line 495
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_34d

    .line 498
    :cond_241
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v10

    if-eqz v10, :cond_34d

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 500
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 501
    iget v14, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachYear:I

    move-object/from16 v17, v1

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v14, v1, :cond_2df

    iget v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachMonth:I

    const/4 v14, 0x2

    .line 502
    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v3

    if-ne v1, v14, :cond_2df

    iget v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 503
    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v1, v10, :cond_2df

    .line 504
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f10044c

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f10044c

    goto :goto_32c

    .line 506
    :cond_2df
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f10044c

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_32c
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_350

    :cond_34d
    :goto_34d
    move-object/from16 v17, v1

    move v14, v3

    :goto_350
    add-int/lit8 v8, v8, 0x1

    move v3, v14

    move-object/from16 v1, v17

    goto/16 :goto_137

    :cond_357
    const/4 v1, 0x0

    .line 514
    iput-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->showNewValue:Z

    .line 515
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 516
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 517
    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 518
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$6;

    invoke-direct {v2, v0, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 525
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 526
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v2, 0x0

    .line 527
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 528
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38f

    .line 529
    invoke-virtual {v1, v4, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_393

    :cond_38f
    const/4 v3, 0x5

    .line 531
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 533
    :goto_393
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 534
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 535
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$7;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 543
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v2, "Statistics Vienna 2014"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 544
    const-string v2, "#FF8F8F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 545
    const-string v2, "#FF3F3F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    const/4 v2, 0x1

    .line 546
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 547
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 552
    new-instance v3, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 553
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 554
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 555
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 556
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 557
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 558
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 559
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 560
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$8;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;III",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, "\uff5e"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    const-string p5, " %"

    const-string p6, "-- %"

    const-string v0, "%"

    if-eqz p4, :cond_73

    .line 573
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget-object p3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 574
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object p4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_89

    .line 576
    :cond_73
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {p0, p6, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object p4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 577
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {p0, p6, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object p4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 579
    :goto_89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 580
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "size:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FFD34"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-lez p4, :cond_187

    move p4, v1

    .line 583
    :goto_b4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_187

    .line 584
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 585
    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v4, p4

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 586
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    if-nez v4, :cond_d5

    .line 587
    invoke-virtual {v3, p6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_ef

    .line 589
    :cond_d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 590
    iput p4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->selectIndex:I

    .line 592
    :goto_ef
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 593
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v4, :cond_16a

    .line 595
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_162

    .line 596
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "\n"

    if-nez v3, :cond_138

    if-nez p4, :cond_11f

    goto :goto_138

    .line 599
    :cond_11f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 597
    :cond_138
    :goto_138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 602
    :cond_162
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 604
    :cond_16a
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v4, :cond_17c

    .line 605
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_183

    .line 607
    :cond_17c
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_183
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_b4

    .line 611
    :cond_187
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    const/high16 p4, 0x41200000    # 10.0f

    .line 612
    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 613
    const-string p4, "#999999"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 614
    new-instance p4, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$9;

    invoke-direct {p4, p0, p3}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;Ljava/util/List;)V

    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 620
    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/4 p6, 0x1

    if-ne p4, p5, :cond_1b0

    const/16 p3, 0xc

    .line 621
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_1bd

    .line 623
    :cond_1b0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, p6, :cond_1ba

    .line 624
    invoke-virtual {p1, p6, p6}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_1bd

    .line 626
    :cond_1ba
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 629
    :goto_1bd
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 p4, 0x41a00000    # 20.0f

    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 630
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object p5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p5

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    invoke-direct {p4, p5, v0, v2}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 631
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 632
    sget-object p3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 633
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 635
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 636
    invoke-virtual {p1, p6}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 638
    new-instance p1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string p3, "Statistics Vienna 2014"

    invoke-direct {p1, p2, p3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 639
    const-string p2, "#FF8F8F"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 640
    const-string p2, "#FF3F3F"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 641
    invoke-virtual {p1, p6}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 642
    invoke-virtual {p1, p6}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 643
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 644
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 646
    new-instance p2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string p3, ""

    invoke-direct {p2, v1, p3, p6}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 p2, -0x1

    .line 647
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 648
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 649
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 p3, 0x8

    invoke-virtual {p2, p1, p3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 650
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, p6}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 651
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 652
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$10;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 432
    new-array v1, v1, [Ljava/lang/String;

    .line 434
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 436
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;)V

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 436
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 452
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
