.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailSleepActivity2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;",
        ">;"
    }
.end annotation


# static fields
.field public static isSleepNew:Z = false


# instance fields
.field private c:Ljava/util/Calendar;

.field deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private endTime:Ljava/lang/String;

.field img_nodata:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090234
    .end annotation
.end field

.field private isNoData:I

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

.field llRem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039c
    .end annotation
.end field

.field ll_sleep_start:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c8
    .end annotation
.end field

.field private mSearchDate:Ljava/util/Date;

.field private number:I

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectIndex:I

.field showData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056a
    .end annotation
.end field

.field sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090575
    .end annotation
.end field

.field sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090576
    .end annotation
.end field

.field private sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

.field private sleepItemList_size:I

.field sleepLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090577
    .end annotation
.end field

.field private sleepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            ">;"
        }
    .end annotation
.end field

.field private sleepList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleep;",
            ">;"
        }
    .end annotation
.end field

.field sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090578
    .end annotation
.end field

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvAwakeTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090621
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

.field tvDeepSleepTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064d
    .end annotation
.end field

.field tvLightSleepTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09067d
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090697
    .end annotation
.end field

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
    .end annotation
.end field

.field tvSleepHour:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c7
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

.field tvStartSleepTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906db
    .end annotation
.end field

.field tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e6
    .end annotation
.end field

.field tvTotalSleep:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090701
    .end annotation
.end field

.field tvWakeSleepRem:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090712
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    .line 157
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->number:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)I
    .registers 1

    .line 90
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;I)I
    .registers 2

    .line 90
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)I
    .registers 1

    .line 90
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isNoData:I

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)Ljava/util/List;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)Ljava/lang/String;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 1262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_44

    .line 1264
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

    if-eqz v0, :cond_33

    .line 1265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44

    .line 1268
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method private initSleepBarChart()V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x5

    .line 352
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 353
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 354
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 355
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 357
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 358
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 363
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 366
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method private initSleepChart()V
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setBackgroundColor(I)V

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setPinchZoom(Z)V

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDoubleTapToZoomEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDrawGridBackground(Z)V

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setScaleEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x5

    .line 247
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 248
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 250
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 256
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 258
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 261
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepHour:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private initSleepPieChart()V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 8

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 414
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 415
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$9;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 459
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getYearMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 467
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 445
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getSixMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 452
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 431
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getOneMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 435
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1bb

    .line 417
    :cond_154
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 421
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1bb
    return-void
.end method

.method private showNoPieChart()V
    .registers 6

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v2, "Election Results"

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 1220
    new-instance v2, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    const-string v3, "#E1E1E1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 1224
    new-instance v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 1225
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 1226
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 1227
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1228
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 1229
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 522
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 523
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 524
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-direct {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->changeDateUpdateUI(Ljava/util/Date;)V

    .line 525
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    .line 527
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 529
    sget-boolean v6, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    const/4 v7, 0x5

    if-nez v6, :cond_5a

    if-eqz v2, :cond_5a

    .line 530
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5a

    move v6, v3

    .line 531
    :goto_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_59

    .line 532
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-eq v8, v7, :cond_56

    .line 533
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_59
    move-object v2, v5

    .line 540
    :cond_5a
    iget-object v1, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    const v5, 0x7f060052

    const/4 v6, 0x0

    const/16 v8, 0xa

    const v10, 0x7f10076d

    const/4 v11, 0x1

    if-eqz v2, :cond_1ad

    .line 543
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_72

    goto/16 :goto_1ad

    .line 586
    :cond_72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    iput v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepItemList_size:I

    .line 587
    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v12, v8, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setSize(II)V

    .line 588
    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v12, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 590
    iput v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isNoData:I

    .line 591
    sget-boolean v12, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v12, :cond_96

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    goto :goto_a1

    .line 594
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060049

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 596
    :goto_a1
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06004f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 597
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-instance v15, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v15, v7}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-boolean v7, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-nez v7, :cond_cf

    .line 600
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v7, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_cf
    sget-boolean v7, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v7, :cond_e0

    .line 603
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v7, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_e0
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v7, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v7, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v7, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v15, "Election Results"

    invoke-direct {v7, v14, v15}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 609
    new-instance v15, Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-direct {v15, v6, v8}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v7, v15}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 610
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-boolean v15, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-nez v15, :cond_12d

    .line 613
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_12d
    sget-boolean v15, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v15, :cond_143

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f060048

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_143
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f06004d

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v15, v5

    .line 622
    :goto_15e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_177

    .line 623
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_174

    add-int/lit8 v15, v15, 0x1

    :cond_174
    add-int/lit8 v5, v5, 0x1

    goto :goto_15e

    :cond_177
    if-ne v15, v11, :cond_18b

    .line 628
    new-instance v5, Lcom/github/mikephil/charting/data/PieEntry;

    const v9, 0x38d1b717    # 1.0E-4f

    invoke-direct {v5, v9}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_18b
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 632
    new-instance v5, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v5, v7}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 633
    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 634
    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 635
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v8, 0x12

    invoke-virtual {v7, v5, v8}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 636
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 637
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v2

    goto/16 :goto_35d

    .line 544
    :cond_1ad
    :goto_1ad
    iput v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepItemList_size:I

    .line 545
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v5, v3, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setSize(II)V

    .line 546
    iput v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isNoData:I

    if-nez v2, :cond_1be

    .line 548
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d6

    .line 550
    :cond_1be
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1d1

    .line 551
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    const-string v4, "FF322"

    const-string v5, "\u65e0\u7761\u7720\u6570\u636e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d6

    .line 554
    :cond_1d1
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    :goto_1d6
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->clear()V

    .line 559
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setNoDataText(Ljava/lang/String;)V

    .line 560
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v5, 0x0

    const/16 v7, 0x10

    invoke-virtual {v4, v5, v7}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 561
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    .line 562
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v7, 0x11

    invoke-virtual {v4, v5, v7}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 564
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " 0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v7, v9}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 565
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0 "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " 0 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->showNoPieChart()V

    move v5, v3

    :goto_330
    const/16 v7, 0xa

    if-ge v5, v7, :cond_351

    .line 573
    new-instance v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    add-int/lit8 v8, v5, 0x15

    const/16 v9, 0x18

    if-lt v8, v9, :cond_345

    add-int/lit8 v8, v5, -0x3

    .line 575
    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    goto :goto_348

    .line 577
    :cond_345
    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 579
    :goto_348
    invoke-virtual {v7, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 580
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_330

    .line 582
    :cond_351
    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 583
    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 640
    :goto_35d
    sget-boolean v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v5, :cond_374

    .line 641
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v7

    goto :goto_386

    .line 643
    :cond_374
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    :goto_386
    add-int/2addr v5, v7

    .line 646
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v9, v5, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f100387

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v5, v8, v15}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 647
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f100387

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f100387

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f100387

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f100387

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/CandleStickChart;->resetTracking()V

    .line 660
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 661
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 662
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v3

    move v9, v6

    move v14, v9

    move v10, v11

    .line 663
    :goto_565
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_c35

    .line 665
    sget-boolean v11, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    move/from16 v18, v6

    const-string v6, "4"

    move/from16 v19, v9

    const-string v9, "3"

    const/high16 v20, 0x42700000    # 60.0f

    move/from16 v21, v14

    const-string v14, "2"

    const/high16 v22, 0x428c0000    # 70.0f

    move-object/from16 v23, v1

    const-string v1, "1"

    const/high16 v24, 0x42a00000    # 80.0f

    move/from16 v25, v12

    const-string v12, ":"

    move/from16 v26, v13

    const-string v13, "%02d"

    if-eqz v11, :cond_63b

    .line 666
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 667
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v27

    if-eqz v27, :cond_5a7

    move-object/from16 v27, v2

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    move/from16 v28, v10

    const/4 v10, 0x1

    if-eq v2, v10, :cond_5ab

    .line 668
    iput v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    goto :goto_5ab

    :cond_5a7
    move-object/from16 v27, v2

    move/from16 v28, v10

    .line 670
    :cond_5ab
    :goto_5ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_5f9

    .line 675
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69a

    .line 676
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_69a

    .line 678
    :cond_5f9
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_60f

    .line 682
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b7

    .line 683
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6b7

    .line 685
    :cond_60f
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_625

    .line 689
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d3

    .line 690
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6d3

    .line 692
    :cond_625
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f8

    .line 696
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6ef

    .line 697
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6ef

    :cond_63b
    move-object/from16 v27, v2

    move/from16 v28, v10

    .line 701
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 702
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    if-eqz v2, :cond_64e

    .line 703
    iput v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    .line 705
    :cond_64e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_6a3

    .line 710
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69a

    .line 711
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69a
    :goto_69a
    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x42aa0000    # 85.0f

    move v6, v1

    move v14, v2

    move/from16 v9, v24

    goto :goto_6fe

    .line 713
    :cond_6a3
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6bf

    .line 717
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b7

    .line 718
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b7
    :goto_6b7
    const/high16 v1, 0x42960000    # 75.0f

    move v14, v1

    move/from16 v9, v22

    move/from16 v6, v24

    goto :goto_6fe

    .line 720
    :cond_6bf
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6db

    .line 724
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d3

    .line 725
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d3
    :goto_6d3
    const/high16 v1, 0x42820000    # 65.0f

    move v14, v1

    move/from16 v9, v20

    move/from16 v6, v22

    goto :goto_6fe

    .line 727
    :cond_6db
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f8

    .line 731
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6ef

    .line 732
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6ef
    :goto_6ef
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x425c0000    # 55.0f

    move v9, v1

    move v14, v2

    move/from16 v6, v20

    goto :goto_6fe

    :cond_6f8
    move/from16 v6, v18

    move/from16 v9, v19

    move/from16 v14, v21

    .line 738
    :goto_6fe
    new-instance v1, Lcom/github/mikephil/charting/data/CandleEntry;

    int-to-float v2, v15

    const/high16 v10, 0x40a00000    # 5.0f

    add-float v33, v14, v10

    sub-float v34, v14, v10

    move-object/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v6

    move/from16 v32, v9

    invoke-direct/range {v29 .. v34}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFF)V

    if-eqz v11, :cond_73c

    .line 745
    sget-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v2, :cond_732

    .line 746
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_727

    const/4 v2, 0x2

    .line 747
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 748
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73c

    .line 750
    :cond_727
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 751
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73c

    .line 754
    :cond_732
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 755
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73c
    :goto_73c
    if-eqz v4, :cond_c14

    .line 759
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c14

    if-eqz v11, :cond_c14

    .line 760
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v15, v1, :cond_a3f

    .line 761
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    if-ne v1, v2, :cond_8f5

    .line 762
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    move/from16 v2, v28

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    move v1, v3

    :goto_76a
    add-int v10, v3, v2

    if-ge v1, v10, :cond_8eb

    .line 764
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 765
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    move/from16 v18, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v14

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v7

    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v13, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    add-int/lit8 v10, v10, -0x1

    .line 766
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_816

    .line 767
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    const/4 v14, 0x1

    add-int/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":00"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    goto :goto_859

    .line 769
    :cond_816
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v9

    const/16 v10, 0xa

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    .line 771
    :goto_859
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "start_time:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  end_time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yty6"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->endTime:Ljava/lang/String;

    .line 773
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v9

    mul-int v10, v2, v9

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10076d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v9

    mul-int v10, v2, v9

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100387

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v18

    move/from16 v6, v19

    move/from16 v14, v20

    move-object/from16 v7, v22

    goto/16 :goto_76a

    :cond_8eb
    move/from16 v19, v6

    move-object/from16 v22, v7

    move/from16 v18, v9

    move/from16 v20, v14

    goto/16 :goto_a5e

    :cond_8f5
    move/from16 v19, v6

    move-object/from16 v22, v7

    move/from16 v18, v9

    move/from16 v20, v14

    move/from16 v2, v28

    move v1, v3

    :goto_900
    add-int v10, v3, v2

    if-ge v1, v10, :cond_a31

    .line 777
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 778
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    add-int/lit8 v10, v10, -0x1

    .line 779
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_9a2

    .line 780
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    const/4 v14, 0x1

    add-int/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":00"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    goto :goto_9e5

    .line 782
    :cond_9a2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v9

    const/16 v10, 0xa

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    .line 784
    :goto_9e5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v9

    mul-int v10, v2, v9

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10076d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v9

    mul-int v10, v2, v9

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100387

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_900

    .line 786
    :cond_a31
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    add-int/lit8 v1, v15, 0x1

    move v3, v1

    const/4 v2, 0x1

    goto :goto_a5e

    :cond_a3f
    move/from16 v19, v6

    move-object/from16 v22, v7

    move/from16 v18, v9

    move/from16 v20, v14

    move/from16 v2, v28

    .line 791
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    add-int/lit8 v6, v15, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    if-ne v1, v7, :cond_a62

    add-int/lit8 v10, v2, 0x1

    move v2, v10

    :goto_a5e
    const/16 v10, 0xa

    goto/16 :goto_c20

    :cond_a62
    move v1, v3

    :goto_a63
    add-int v10, v3, v2

    if-ge v1, v10, :cond_c03

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "tvStartSleepTime:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ttrt4"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 797
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move/from16 v24, v6

    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v14, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    mul-int/2addr v14, v2

    div-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f10076d

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v17

    mul-int v17, v17, v2

    rem-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f100387

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    add-int/lit8 v10, v10, -0x1

    .line 799
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_bba

    .line 800
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":00"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    const/16 v10, 0xa

    goto :goto_bfd

    .line 802
    :cond_bba
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v9

    const/16 v10, 0xa

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    :goto_bfd
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v24

    goto/16 :goto_a63

    :cond_c03
    move/from16 v24, v6

    const/16 v10, 0xa

    .line 805
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    move/from16 v3, v24

    const/4 v2, 0x1

    goto :goto_c20

    :cond_c14
    move/from16 v19, v6

    move-object/from16 v22, v7

    move/from16 v18, v9

    move/from16 v20, v14

    move/from16 v2, v28

    goto/16 :goto_a5e

    :goto_c20
    add-int/lit8 v15, v15, 0x1

    move v10, v2

    move/from16 v9, v18

    move/from16 v6, v19

    move/from16 v14, v20

    move-object/from16 v7, v22

    move-object/from16 v1, v23

    move/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v2, v27

    goto/16 :goto_565

    :cond_c35
    move-object/from16 v23, v1

    move-object/from16 v27, v2

    move-object/from16 v22, v7

    move/from16 v25, v12

    move/from16 v26, v13

    .line 813
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 814
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 819
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 820
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v2, v1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 821
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 822
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 823
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 824
    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 825
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 826
    iput v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->number:I

    .line 827
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleepItemList.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yty6"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;

    move-object/from16 v3, v22

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 921
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v2, 0x1

    .line 922
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    if-eqz v27, :cond_cbf

    .line 923
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_cbf

    const/4 v3, 0x0

    .line 924
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    move v2, v3

    goto :goto_cf0

    .line 926
    :cond_cbf
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 927
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v3, :cond_cd0

    .line 928
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    :goto_cce
    const/4 v2, 0x0

    goto :goto_cf0

    :cond_cd0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 931
    :goto_cd2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_cea

    .line 932
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_ce7

    add-int/lit8 v3, v3, 0x1

    :cond_ce7
    add-int/lit8 v2, v2, 0x1

    goto :goto_cd2

    :cond_cea
    const/4 v2, 0x1

    sub-int/2addr v3, v2

    .line 936
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_cce

    .line 939
    :goto_cf0
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 940
    new-instance v1, Lcom/github/mikephil/charting/data/CandleDataSet;

    const-string v3, "Data Set"

    invoke-direct {v1, v5, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawIcons(Z)V

    .line 942
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const v2, -0xbbbbbc

    .line 943
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowColor(I)V

    const v2, 0x3f333333    # 0.7f

    .line 944
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowWidth(F)V

    .line 945
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->resetColors()V

    .line 946
    sget-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v2, :cond_d3c

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    move/from16 v13, v26

    .line 948
    invoke-virtual {v1, v13}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    move/from16 v12, v25

    .line 950
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    goto :goto_d62

    :cond_d3c
    move/from16 v12, v25

    move/from16 v13, v26

    .line 953
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 954
    invoke-virtual {v1, v13}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    :goto_d62
    const/4 v2, 0x0

    .line 960
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawValues(Z)V

    .line 961
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 962
    new-instance v3, Lcom/github/mikephil/charting/data/CandleData;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    aput-object v1, v4, v2

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/CandleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    .line 963
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 964
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 965
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v2, 0x13

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 967
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setExtraBottomOffset(F)V

    .line 968
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    .line 969
    invoke-virtual/range {v23 .. v23}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    if-eqz v1, :cond_dbf

    .line 970
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$6;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_dbf
    return-void
.end method

.method private updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 986
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 989
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 990
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList:Ljava/util/List;

    .line 991
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->allList:Ljava/util/List;

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList2:Ljava/util/List;

    .line 992
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 993
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList:Ljava/util/List;

    const-string v6, ""

    const v7, 0x7f100387

    const v8, 0x7f10076d

    if-eqz v5, :cond_885

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_885

    .line 1010
    :cond_4b
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 1012
    iget-object v1, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1013
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "healthSleep.getSleepstartedTimeM():"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1015
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 1023
    :goto_1da
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-ge v9, v11, :cond_371

    .line 1024
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1025
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v16

    if-eqz v16, :cond_1f4

    .line 1026
    iput v9, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I

    .line 1028
    :cond_1f4
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_252

    .line 1029
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v12, "01"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "\n"

    if-nez v7, :cond_229

    if-nez v9, :cond_210

    goto :goto_229

    .line 1032
    :cond_210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    .line 1030
    :cond_229
    :goto_229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    .line 1034
    :cond_252
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_264

    .line 1035
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    .line 1037
    :cond_264
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    :goto_26b
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v7

    if-lez v7, :cond_274

    .line 1040
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    .line 1044
    :cond_274
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    int-to-float v7, v7

    .line 1045
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v8

    int-to-float v8, v8

    .line 1046
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    int-to-float v12, v12

    .line 1047
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v13

    int-to-float v13, v13

    .line 1048
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v14

    int-to-float v14, v14

    .line 1050
    sget-boolean v17, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    const/high16 v18, 0x42700000    # 60.0f

    if-eqz v17, :cond_2fe

    .line 1051
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v17

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v19

    add-int v17, v17, v19

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v19

    add-int v17, v17, v19

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v11

    add-int v11, v17, v11

    int-to-float v11, v11

    .line 1052
    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    move-object/from16 v19, v6

    int-to-float v6, v9

    new-array v15, v15, [F

    aput v14, v15, v4

    const/4 v14, 0x1

    aput v13, v15, v14

    const/4 v13, 0x2

    aput v12, v15, v13

    const/4 v12, 0x3

    aput v8, v15, v12

    const/4 v8, 0x4

    aput v7, v15, v8

    invoke-direct {v3, v6, v15}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 1053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-float v7, v11, v18

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10076d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-float v11, v11, v18

    float-to-int v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_363

    :cond_2fe
    move-object/from16 v19, v6

    .line 1057
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v3

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 1058
    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v11, v9

    const/4 v12, 0x4

    new-array v12, v12, [F

    aput v14, v12, v4

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v13, 0x2

    aput v8, v12, v13

    const/4 v8, 0x3

    aput v7, v12, v8

    invoke-direct {v6, v11, v12}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 1059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-float v8, v3, v18

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f10076d

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_363
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v19

    const/16 v3, 0x8

    const v7, 0x7f100387

    const v8, 0x7f10076d

    goto/16 :goto_1da

    :cond_371
    move-object/from16 v19, v6

    .line 1065
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v3, :cond_38a

    .line 1066
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v6

    goto :goto_39c

    .line 1068
    :cond_38a
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v6

    :goto_39c
    add-int/2addr v3, v6

    .line 1074
    div-int/lit8 v6, v3, 0x3c

    .line 1075
    rem-int/lit8 v3, v3, 0x3c

    .line 1076
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f10076d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1076
    invoke-virtual {v0, v8, v9, v11}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1078
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v7, v8, :cond_403

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_651

    .line 1079
    :cond_403
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList2:Ljava/util/List;

    if-eqz v7, :cond_651

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_651

    move v3, v4

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v11, v9

    move v12, v11

    .line 1087
    :goto_414
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList2:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_448

    .line 1088
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepList2:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1089
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v14

    if-lez v14, :cond_445

    .line 1091
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v14

    add-int/2addr v7, v14

    .line 1092
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v14

    add-int/2addr v8, v14

    .line 1093
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v14

    add-int/2addr v9, v14

    .line 1094
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v14

    add-int/2addr v11, v14

    .line 1095
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v3, v3, 0x1

    :cond_445
    add-int/lit8 v6, v6, 0x1

    goto :goto_414

    :cond_448
    if-nez v3, :cond_44b

    const/4 v3, 0x1

    .line 1102
    :cond_44b
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "updateMonth:totalTime: 0 -- startTime:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- eyeTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- lightTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --deepTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- wakeTime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    div-int/2addr v7, v3

    .line 1104
    div-int/2addr v8, v3

    .line 1105
    div-int/2addr v9, v3

    .line 1106
    div-int/2addr v11, v3

    .line 1107
    div-int/2addr v12, v3

    .line 1109
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v3, :cond_49f

    add-int v3, v7, v8

    add-int/2addr v3, v9

    add-int/2addr v3, v11

    goto :goto_4a3

    :cond_49f
    add-int v3, v7, v9

    add-int/2addr v3, v11

    add-int/2addr v3, v12

    .line 1116
    :goto_4a3
    div-int/lit8 v6, v3, 0x3c

    .line 1117
    rem-int/lit8 v3, v3, 0x3c

    .line 1118
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v15, v7, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v4, 0x7f10076d

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v7, v7, 0x3c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f100387

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v13, v8, 0x3c

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10076d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f100387

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v9, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f10076d

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v9, v9, 0x3c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v11, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10076d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v12, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10076d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v12, v12, 0x3c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10076d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f100387

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1123
    invoke-virtual {v0, v7, v8, v9}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1128
    :cond_651
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    const/high16 v7, 0x41200000    # 10.0f

    .line 1129
    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 1130
    const-string v7, "#999999"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 1131
    new-instance v7, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$7;

    invoke-direct {v7, v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 1138
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v2, 0x0

    .line 1139
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 1140
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v2, 0x1

    .line 1141
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 1142
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v7, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v7, :cond_689

    const/16 v2, 0xc

    .line 1143
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_68d

    :cond_689
    const/4 v2, 0x5

    .line 1145
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 1147
    :goto_68d
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 1148
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v8

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v10, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    invoke-direct {v4, v7, v8, v9}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 1149
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {v2, v5, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1150
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    const v5, 0x7f060052

    const v7, 0x7f060049

    const v8, 0x7f06004f

    const v9, 0x7f06004d

    if-eqz v4, :cond_71c

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060048

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    filled-new-array {v4, v10, v11, v12, v13}, [I

    move-result-object v4

    .line 1151
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v4, 0x5

    .line 1156
    new-array v4, v4, [Ljava/lang/String;

    const-string v10, "1"

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const-string v10, "2"

    const/4 v11, 0x1

    aput-object v10, v4, v11

    const-string v10, "3"

    const/4 v11, 0x2

    aput-object v10, v4, v11

    const-string v10, "4"

    const/4 v11, 0x3

    aput-object v10, v4, v11

    const-string v10, "5"

    const/4 v11, 0x4

    aput-object v10, v4, v11

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setStackLabels([Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_75d

    .line 1158
    :cond_71c
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    filled-new-array {v4, v10, v11, v12}, [I

    move-result-object v4

    .line 1158
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v4, 0x4

    .line 1162
    new-array v4, v4, [Ljava/lang/String;

    const-string v10, "1"

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const-string v10, "2"

    const/4 v12, 0x1

    aput-object v10, v4, v12

    const-string v10, "3"

    const/4 v12, 0x2

    aput-object v10, v4, v12

    const-string v10, "4"

    const/4 v12, 0x3

    aput-object v10, v4, v12

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setStackLabels([Ljava/lang/String;)V

    .line 1165
    :goto_75d
    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 1166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 1169
    new-instance v4, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    move-object/from16 v10, v19

    const/4 v12, 0x1

    invoke-direct {v4, v11, v10, v12}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v4, -0x1

    .line 1170
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 1171
    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 1172
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v10, 0x16

    invoke-virtual {v4, v2, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1173
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v12}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 1174
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 1175
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;

    invoke-direct {v4, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v2, v4, v10, v11}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v6, :cond_7a5

    if-nez v3, :cond_7a5

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->showNoPieChart()V

    goto/16 :goto_884

    .line 1185
    :cond_7a5
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1186
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 1187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v3, :cond_7e2

    .line 1191
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_7e2
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v1}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, "Election Results"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1196
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 1197
    new-instance v2, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v3, :cond_84b

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_84b
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 1207
    new-instance v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    const/4 v1, 0x0

    .line 1208
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 1209
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 1210
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1211
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    :goto_884
    return-void

    :cond_885
    :goto_885
    move v1, v4

    move-object v10, v6

    .line 994
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->clear()V

    .line 996
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 997
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 998
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 999
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x15

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1000
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10076d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " 0 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100387

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v6, v8}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1002
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f10076d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->showNoPieChart()V

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

    .line 1235
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1236
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 1237
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    .line 1238
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1239
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 1240
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 1241
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 1242
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

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

    .line 1249
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1250
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 1251
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    .line 1252
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1253
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 1254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 1255
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 1256
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    :cond_53
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0082

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 169
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->initView()V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    .line 173
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleepDataShowType()I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 174
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    goto :goto_22

    .line 176
    :cond_1d
    sput-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    goto :goto_22

    .line 179
    :cond_20
    sput-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    .line 181
    :goto_22
    sget-boolean v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v0, :cond_31

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3b

    .line 185
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :goto_3b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 190
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    .line 191
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    .line 193
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    if-eqz v1, :cond_71

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 196
    :cond_71
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->initSleepChart()V

    .line 219
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->initSleepBarChart()V

    .line 220
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->initSleepPieChart()V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

    .line 222
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailSleepActivity2(Landroid/view/View;)V
    .registers 3

    .line 201
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_16

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_16
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

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 489
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 486
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 483
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 480
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 10

    .line 495
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 496
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    move p2, v3

    :goto_f
    if-ge p2, v1, :cond_29

    .line 497
    aget-object p3, v2, p2

    .line 498
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_26

    .line 500
    new-instance v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$4;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    .line 513
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v4

    .line 500
    invoke-virtual {v0, v5, v4, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 516
    :cond_29
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
