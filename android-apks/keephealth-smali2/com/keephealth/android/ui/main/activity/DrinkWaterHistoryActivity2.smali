.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DrinkWaterHistoryActivity2.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;
.implements Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;",
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final REQUEST_ADD_WATER:I

.field private final REQUEST_EDIT_WATER:I

.field barLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field private dayItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation
.end field

.field private detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

.field private mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

.field mBarChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d8
    .end annotation
.end field

.field mNestedScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field mSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e3
    .end annotation
.end field

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

.field startY:F

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field private totalWater:I

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

.field tvRecordTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a9
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

.field tvWaterPrecent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090713
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 147
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/16 v0, 0xc8

    .line 150
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->REQUEST_ADD_WATER:I

    const/16 v0, 0x12c

    .line 151
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->REQUEST_EDIT_WATER:I

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->totalWater:I

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startY:F

    .line 301
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->dayItem:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)I
    .registers 1

    .line 80
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;I)I
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 446
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 447
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 451
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initmBarChart()V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x4

    .line 236
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 244
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 246
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 247
    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 9

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 326
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 327
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$10;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 371
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 357
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    .line 361
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 343
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ad

    .line 329
    :cond_148
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {p1, v0, v5, v6}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    .line 333
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 334
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1ad
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addWater()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090099
        }
    .end annotation

    const v0, 0x7f090099

    const-wide/16 v1, 0x3e8

    .line 318
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 319
    const-class v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    const/16 v1, 0xc8

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;I)V

    :cond_12
    return-void
.end method

.method changeNextDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 408
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_72

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 410
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 411
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 412
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 413
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 414
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 416
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 418
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 420
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    :cond_72
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

    .line 425
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_72

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 428
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 430
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 431
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    .line 432
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 433
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 437
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    :cond_72
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0045

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 156
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100749

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I

    .line 160
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 161
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 164
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 167
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 168
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    .line 169
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    .line 170
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 176
    :cond_9b
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->initmBarChart()V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DrinkWaterHistoryActivity2(Landroid/view/View;)V
    .registers 3

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 181
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 183
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 187
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 646
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_8

    return-void

    :cond_8
    if-eq p1, p3, :cond_57

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_10

    goto/16 :goto_94

    .line 661
    :cond_10
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_94

    .line 662
    iget p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->totalWater:I

    const/16 p2, 0x64

    mul-int/2addr p1, p2

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p3

    div-int/2addr p1, p3

    if-le p1, p2, :cond_23

    goto :goto_24

    :cond_23
    move p2, p1

    .line 666
    :goto_24
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvWaterPrecent:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_94

    .line 650
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_6b

    .line 651
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_94

    .line 652
    :cond_6b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_79

    .line 653
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    goto :goto_94

    .line 654
    :cond_79
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_87

    .line 655
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    goto :goto_94

    .line 656
    :cond_87
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_94

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    :cond_94
    :goto_94
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

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 401
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 398
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 395
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 392
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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

.method public onItemClick(Landroid/view/View;I)V
    .registers 9

    .line 675
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->dayItem:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 676
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object p2

    .line 677
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v0, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p2

    .line 678
    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 680
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object p2

    .line 681
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 682
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 681
    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 683
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 684
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    .line 686
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_a3

    .line 687
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachYear:I

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachMonth:I

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeachDay:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_cc

    .line 688
    :cond_a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_b1

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    goto :goto_cc

    .line 690
    :cond_b1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_bf

    .line 691
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    goto :goto_cc

    .line 692
    :cond_bf
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_cc

    .line 693
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    :cond_cc
    :goto_cc
    const/16 p1, 0x3f1

    .line 695
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    return-void
.end method

.method public reBackDayData(Ljava/util/List;Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;I)V"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->dayItem:Ljava/util/List;

    .line 460
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->changeDateUpdateUI()V

    .line 461
    iput p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->totalWater:I

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mL"

    invoke-virtual {p0, v1, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 464
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1d9

    .line 466
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d9

    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    .line 469
    :goto_52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12f

    .line 470
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v6

    int-to-float v6, v6

    .line 471
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v5

    invoke-direct {v7, v8, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 472
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 473
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v6

    if-lez v6, :cond_7e

    .line 474
    iput v5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I

    .line 476
    :cond_7e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d"

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMinuter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_52

    .line 481
    :cond_12f
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p2

    const/high16 v2, 0x41200000    # 10.0f

    .line 482
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 483
    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 484
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$6;

    invoke-direct {v2, p0, v4}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;Ljava/util/List;)V

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, 0x5

    .line 490
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 491
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 492
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 493
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/4 v2, 0x1

    .line 494
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 496
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 498
    new-instance p2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {p2, v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 499
    const-string v3, "#79CAFD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 500
    const-string v3, "#3DB4FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 501
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 502
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 503
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 504
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance p2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {p2, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 506
    new-instance v3, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v2}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {p2, v3}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 507
    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 508
    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 509
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 510
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v3, 0x1d

    invoke-virtual {v2, p2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 511
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 512
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p2, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 p2, 0x64

    mul-int/2addr p3, p2

    .line 519
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v2

    if-nez v2, :cond_1cf

    const/16 v2, 0x708

    goto :goto_1d3

    :cond_1cf
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v2

    :goto_1d3
    div-int/2addr p3, v2

    if-le p3, p2, :cond_1d7

    goto :goto_1da

    :cond_1d7
    move p2, p3

    goto :goto_1da

    :cond_1d9
    move p2, v0

    .line 524
    :goto_1da
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvWaterPrecent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100267

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 526
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    if-nez p2, :cond_222

    .line 527
    new-instance p2, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    .line 528
    invoke-virtual {p2, p0}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V

    .line 529
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_225

    .line 531
    :cond_222
    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->setList(Ljava/util/List;)V

    :goto_225
    if-eqz p1, :cond_238

    .line 533
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_238

    .line 534
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvRecordTag:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_242

    .line 537
    :cond_238
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 538
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvRecordTag:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :goto_242
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->closeOpenMenu()V

    return-void
.end method

.method public reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;",
            ">;II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v1, "\uff5e"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " mL"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "mL"

    invoke-virtual {p0, p2, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p4, p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 548
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f100266

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object p4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 550
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 551
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvRecordTag:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_27b

    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_27b

    .line 553
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 554
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move p4, p5

    .line 555
    :goto_99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge p4, v1, :cond_194

    .line 556
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v1

    int-to-float v1, v1

    .line 557
    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v4, p4

    invoke-direct {v3, v4, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 558
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 559
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v1

    if-lez v1, :cond_c6

    .line 560
    iput p4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I

    .line 562
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 563
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v3, :cond_16b

    .line 566
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "\n"

    if-nez v1, :cond_135

    if-nez p4, :cond_116

    goto :goto_135

    .line 569
    :cond_116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 567
    :cond_135
    :goto_135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, p5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 571
    :cond_16b
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v3, :cond_183

    .line 572
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 574
    :cond_183
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_190
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_99

    .line 578
    :cond_194
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    const/high16 p4, 0x41200000    # 10.0f

    .line 579
    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 580
    const-string p4, "#999999"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 581
    new-instance p4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$8;

    invoke-direct {p4, p0, p3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;Ljava/util/List;)V

    invoke-virtual {p1, p4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 587
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p3, p4, :cond_1bc

    const/16 p3, 0xc

    .line 588
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_1bf

    .line 590
    :cond_1bc
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 593
    :goto_1bf
    invoke-virtual {p1, p5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 594
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 p4, 0x41a00000    # 20.0f

    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 595
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v0, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 596
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 597
    sget-object p3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 598
    invoke-virtual {p1, p5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/4 p3, 0x1

    .line 599
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 600
    new-instance p1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v0, "Statistics Vienna 2014"

    invoke-direct {p1, p2, v0}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 601
    const-string p2, "#79CAFD"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 602
    const-string p2, "#3DB4FF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 603
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 604
    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 606
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 607
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 609
    new-instance p2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v0, ""

    invoke-direct {p2, p5, v0, p3}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 p2, -0x1

    .line 610
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 611
    invoke-virtual {p1, p5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 612
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2, p4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 613
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p4

    iget-object p5, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p5

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    invoke-direct {p3, p4, p5, v0}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 614
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 p3, 0x1e

    invoke-virtual {p2, p1, p3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 615
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 616
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 617
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$9;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$9;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27b
    return-void
.end method

.method setGoal()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c8
        }
    .end annotation

    const v0, 0x7f0904e9

    const-wide/16 v1, 0x3e8

    .line 630
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_54

    .line 631
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 632
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_37

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_24

    goto :goto_37

    .line 635
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    const-string v1, "from"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-class v1, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    const/16 v2, 0x12c

    invoke-static {p0, v1, v0, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_54

    .line 633
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->showToast(Ljava/lang/String;)V

    goto :goto_54

    .line 640
    :cond_46
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->showToast(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 277
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 278
    new-array v1, v1, [Ljava/lang/String;

    .line 280
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 282
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    .line 295
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 298
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
