.class public Lcom/keephealth/android/ui/main/activity/DetailActivity2;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailActivity2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field avg_unit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007c
    .end annotation
.end field

.field base_title_bg2:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field private c:Ljava/util/Calendar;

.field detailType:Lcom/keephealth/android/model/bean/DetailType;

.field img_back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090220
    .end annotation
.end field

.field img_calander:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090223
    .end annotation
.end field

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSearchDate:Ljava/util/Date;

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

.field sleepLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090577
    .end annotation
.end field

.field private stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field private titleType:I

.field total_unit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090602
    .end annotation
.end field

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

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
    .end annotation
.end field

.field tvSleepStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906cd
    .end annotation
.end field

.field tvSleepTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906cf
    .end annotation
.end field

.field tvSleepTime_unit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906d0
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

.field tvTotal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ff
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field

.field tv_titleNname:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090788
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selectIndex:I

    .line 142
    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Lcom/keephealth/android/model/bean/StepDetailVO;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selectIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selectIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Ljava/util/List;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 708
    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 709
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4a

    .line 712
    :cond_39
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private initmBarChart()V
    .registers 8

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x1

    .line 264
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 266
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v4, 0x40800000    # 4.0f

    .line 267
    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    const/4 v5, 0x0

    .line 268
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 269
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 270
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 274
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 275
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 276
    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 278
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 8

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 326
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 327
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$12;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_154

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_f1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_1bb

    .line 372
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getYearMonth()Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    .line 376
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 358
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getSixMonth()Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    .line 362
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 344
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getOneMonth(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1bb

    .line 329
    :cond_154
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    .line 333
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 334
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1bb
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/keephealth/android/model/bean/DetailType;Ljava/util/Date;)V
    .registers 5

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "DETAILTYPE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    const-string p1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 445
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;

    .line 446
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 447
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-direct {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->changeDateUpdateUI(Ljava/util/Date;)V

    goto :goto_28

    .line 450
    :cond_1a
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_28
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 454
    iget-object v1, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    if-eqz v2, :cond_614

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_614

    .line 478
    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 487
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "itemList.size():"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "trtr4r"

    invoke-static {v15, v14}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    move v3, v4

    move v15, v3

    move/from16 v16, v15

    move v5, v14

    move/from16 v17, v5

    .line 488
    :goto_71
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x5

    const/high16 v18, 0x447a0000    # 1000.0f

    const-string v7, ""

    if-ge v15, v6, :cond_271

    .line 489
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 490
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v19

    cmpl-float v19, v19, v14

    if-gtz v19, :cond_99

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v14

    float-to-double v11, v14

    const-wide/16 v20, 0x0

    cmpl-double v11, v11, v20

    if-lez v11, :cond_ad

    .line 491
    :cond_99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_ad
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v11, v12, :cond_11e

    .line 494
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x7

    if-lt v11, v12, :cond_116

    .line 495
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v14, "01"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "\n"

    if-nez v11, :cond_ec

    if-nez v15, :cond_d3

    goto :goto_ec

    .line 498
    :cond_d3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 496
    :cond_ec
    :goto_ec
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 501
    :cond_116
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 503
    :cond_11e
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v10, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v10, :cond_130

    .line 504
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 506
    :cond_130
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :goto_137
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v8

    if-lez v8, :cond_151

    .line 509
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v8

    add-int/2addr v3, v8

    .line 510
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v8

    add-float/2addr v5, v8

    .line 511
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v8

    add-float v17, v17, v8

    add-int/lit8 v16, v16, 0x1

    .line 513
    iput v15, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selectIndex:I

    .line 516
    :cond_151
    iget v8, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    if-nez v8, :cond_185

    .line 517
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v15

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10077a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_185
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1ba

    .line 520
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v15

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100769

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto/16 :goto_269

    :cond_1ba
    const/4 v9, 0x2

    if-ne v8, v9, :cond_268

    .line 523
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v8

    if-nez v8, :cond_22e

    .line 525
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v11

    invoke-static {v11}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    div-float v6, v6, v18

    invoke-static {v6}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/StringUtils;->roundedNumber(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100774

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_269

    .line 529
    :cond_22e
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v15

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 530
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    div-float v6, v6, v18

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100771

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 532
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    goto :goto_269

    :cond_268
    const/4 v7, 0x0

    .line 537
    :goto_269
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto/16 :goto_71

    .line 539
    :cond_271
    iget v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    if-nez v6, :cond_284

    .line 540
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    new-instance v9, Lcom/keephealth/android/ui/main/activity/DetailActivity2$6;

    invoke-direct {v9, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_2c0

    :cond_284
    const/4 v9, 0x1

    if-ne v6, v9, :cond_296

    .line 547
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    new-instance v9, Lcom/keephealth/android/ui/main/activity/DetailActivity2$7;

    invoke-direct {v9, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_2c0

    :cond_296
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2c0

    .line 554
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    if-nez v6, :cond_2b2

    .line 555
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    new-instance v9, Lcom/keephealth/android/ui/main/activity/DetailActivity2$8;

    invoke-direct {v9, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    goto :goto_2c0

    .line 563
    :cond_2b2
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    new-instance v9, Lcom/keephealth/android/ui/main/activity/DetailActivity2$9;

    invoke-direct {v9, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    :cond_2c0
    :goto_2c0
    if-nez v16, :cond_2c4

    const/4 v6, 0x1

    goto :goto_2c6

    :cond_2c4
    move/from16 v6, v16

    .line 575
    :goto_2c6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "values:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FF4342"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget v9, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    const v11, 0x7f100155

    const v12, 0x7f100152

    if-nez v9, :cond_388

    .line 578
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f100758

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f10077a

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10077a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const-string v3, "\u6b65\u6570"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_364

    .line 586
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    .line 587
    :cond_364
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_379

    .line 588
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    .line 590
    :cond_379
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    :cond_388
    const/4 v3, 0x1

    if-ne v9, v3, :cond_447

    .line 593
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f100755

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v13, v5

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f100769

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "totalCal:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "  totalDay:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "gfd34e"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100769

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    const-string v3, "\u5361\u8def\u91cc"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_423

    .line 602
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    .line 603
    :cond_423
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_438

    .line 604
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    .line 606
    :cond_438
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57a

    :cond_447
    const/4 v3, 0x2

    if-ne v9, v3, :cond_57a

    .line 610
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_454

    .line 611
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .line 613
    :cond_454
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u8ddd\u79bb_totalDay:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FF4342ff"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f100756

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v3

    if-nez v3, :cond_4e8

    .line 616
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-float v9, v17, v18

    invoke-static {v9}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f100774

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v6

    div-float v17, v17, v6

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v6

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100774

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_545

    .line 621
    :cond_4e8
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-float v9, v17, v18

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f100771

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v6

    div-float v17, v17, v6

    div-float v6, v17, v18

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100771

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :goto_545
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_559

    .line 628
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57a

    .line 629
    :cond_559
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_56d

    .line 630
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57a

    .line 632
    :cond_56d
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :cond_57a
    :goto_57a
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    .line 636
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 637
    const-string v5, "#999999"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 638
    new-instance v5, Lcom/keephealth/android/ui/main/activity/DetailActivity2$10;

    invoke-direct {v5, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 645
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v5, :cond_5a2

    const/16 v1, 0xc

    .line 646
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_5a5

    .line 648
    :cond_5a2
    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    :goto_5a5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 650
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 651
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 652
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 653
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v1, 0x1

    .line 654
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 656
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v5, "Statistics Vienna 2014"

    invoke-direct {v3, v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 657
    const-string v2, "#91E1E4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 658
    const-string v2, "#00D8E0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 659
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 660
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v3, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 664
    new-instance v2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    invoke-direct {v2, v4, v7, v1}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 665
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 666
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 667
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 668
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 669
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 670
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2$11;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$11;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 457
    :cond_614
    :goto_614
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->sleepLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    const-string v2, "0"

    if-nez v1, :cond_645

    .line 459
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100758

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10077a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b6

    :cond_645
    const/4 v3, 0x1

    if-ne v1, v3, :cond_66e

    .line 463
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100755

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100769

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b6

    :cond_66e
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6b6

    .line 467
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100756

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-nez v1, :cond_6a1

    .line 469
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100774

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b6

    .line 472
    :cond_6a1
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100771

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6b6
    :goto_6b6
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

    .line 680
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 681
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 682
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    .line 683
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 684
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 685
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 686
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    :cond_53
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

    .line 693
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 694
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 695
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    .line 696
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 697
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 698
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 699
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 700
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    :cond_53
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003a

    return v0
.end method

.method protected initView()V
    .registers 6

    .line 151
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->initView()V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->base_rela:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 153
    invoke-static {p0}, Lcom/keephealth/android/util/StatusBarUtiTwo;->transparencyBar(Landroid/app/Activity;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 156
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 157
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DETAILTYPE_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_63

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    const v2, 0x7f1001e5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    goto :goto_84

    .line 163
    :cond_63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    if-ne v0, v2, :cond_74

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    const v2, 0x7f10076a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    goto :goto_84

    .line 166
    :cond_74
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    if-ne v0, v2, :cond_84

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    const v2, 0x7f100259

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iput v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I

    .line 170
    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0107

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/16 v2, 0xb

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initView: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5b9e\u65f6\u5237\u65b0\u7684\u6570\u636e"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_de

    .line 216
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 218
    :cond_de
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->initmBarChart()V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;

    .line 247
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailActivity2(Landroid/view/View;)V
    .registers 3

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_16

    .line 223
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_16
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f0906c1,
            0x7f09068a,
            0x7f09071b
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    sparse-switch p1, :sswitch_data_38

    goto :goto_36

    .line 412
    :sswitch_a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 408
    :sswitch_15
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 409
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 404
    :sswitch_20
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 405
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    .line 400
    :sswitch_2b
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 401
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_36
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x7f090648 -> :sswitch_2b
        0x7f09068a -> :sswitch_20
        0x7f0906c1 -> :sswitch_15
        0x7f09071b -> :sswitch_a
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 3

    .line 390
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->onResume()V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HOME_DATA_TIME"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e5\u671f\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 419
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 420
    new-array v1, v1, [Ljava/lang/String;

    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 424
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    .line 437
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 440
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
