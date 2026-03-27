.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailSleepActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static isHighPrecisionSleep:Z = false

.field public static isSleepNew:Z = false


# instance fields
.field private c:Ljava/util/Calendar;

.field private candleEntryLast:Lcom/github/mikephil/charting/data/CandleEntry;

.field deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private eLast:Lcom/github/mikephil/charting/data/Entry;

.field private endTime:Ljava/lang/String;

.field img_nodata:Landroid/widget/ImageView;

.field private interval:I

.field private isNoData:I

.field ivNextDate:Landroid/widget/ImageView;

.field ivPreDate:Landroid/widget/ImageView;

.field private listHideItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field llNewSleep:Landroid/widget/LinearLayout;

.field llOldSleep:Landroid/widget/LinearLayout;

.field llRem:Landroid/widget/LinearLayout;

.field ll_sleep_start:Landroid/widget/LinearLayout;

.field private mSearchDate:Ljava/util/Date;

.field private number:I

.field rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectDay:I

.field private selectIndex:I

.field private selectIndexLast:I

.field showData:Landroid/widget/LinearLayout;

.field sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

.field private sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

.field sleepItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSleepItem;",
            ">;"
        }
    .end annotation
.end field

.field private sleepItemList_size:I

.field sleepLine:Landroid/view/View;

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

.field sleepStageAdapter:Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvAwakeTime:Landroid/widget/TextView;

.field tvDate:Landroid/widget/TextView;

.field tvDay:Landroid/widget/TextView;

.field tvDeepSleepTime:Landroid/widget/TextView;

.field tvLightSleepTime:Landroid/widget/TextView;

.field tvMonth:Landroid/widget/TextView;

.field tvNoData:Landroid/widget/TextView;

.field tvSixMonth:Landroid/widget/TextView;

.field tvSleepHour:Landroid/widget/TextView;

.field tvSleepStatus:Landroid/widget/TextView;

.field tvSleepTime:Landroid/widget/TextView;

.field tvStartSleepTime:Landroid/widget/TextView;

.field tvTag:Landroid/widget/TextView;

.field tvTotalSleep:Landroid/widget/TextView;

.field tvWakeSleepRem:Landroid/widget/TextView;

.field tvYear:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    .line 138
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->number:I

    const/4 v1, -0x1

    .line 369
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndexLast:I

    .line 539
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->listHideItem:Ljava/util/List;

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    .line 615
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I
    .registers 1

    .line 93
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I
    .registers 2

    .line 93
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/CandleEntry;Lcom/github/mikephil/charting/data/Entry;I)V
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setDrawHigh(Lcom/github/mikephil/charting/data/CandleEntry;Lcom/github/mikephil/charting/data/Entry;I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/CandleEntry;)Lcom/github/mikephil/charting/data/CandleEntry;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->candleEntryLast:Lcom/github/mikephil/charting/data/CandleEntry;

    return-object p1
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/Entry;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->eLast:Lcom/github/mikephil/charting/data/Entry;

    return-object p1
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I
    .registers 2

    .line 93
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndexLast:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I
    .registers 1

    .line 93
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/util/List;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I
    .registers 1

    .line 93
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I
    .registers 2

    .line 93
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->interval:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 1490
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_44

    .line 1492
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

    .line 1493
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44

    .line 1496
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method private initSleepBarChart()V
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x5

    .line 430
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 431
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 432
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 433
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 435
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 436
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 438
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 439
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 440
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 441
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 442
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 443
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 444
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method private initSleepChart()V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setBackgroundColor(I)V

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setPinchZoom(Z)V

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDoubleTapToZoomEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDrawGridBackground(Z)V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setScaleEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x5

    .line 321
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 322
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 323
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 324
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 331
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 332
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 333
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 334
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 335
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepHour:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private initSleepPieChart()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    return-void
.end method

.method private initSleepRecycleView()V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 295
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;

    const v1, 0x7f0c0131

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;-><init>(ILjava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepStageAdapter:Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;

    .line 296
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setDrawHigh(Lcom/github/mikephil/charting/data/CandleEntry;Lcom/github/mikephil/charting/data/Entry;I)V
    .registers 13

    .line 371
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    mul-float/2addr v0, v1

    .line 372
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 374
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 375
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setHighLightColor(I)V

    .line 376
    check-cast p2, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 377
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartIndex()I

    move-result p2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getItemCount()I

    move-result v4

    add-int/2addr p2, v4

    const/4 v4, 0x1

    sub-int/2addr p2, v4

    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 378
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v3

    invoke-virtual {v5, v3, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v3

    .line 379
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result p2

    invoke-virtual {v1, p2, v0}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    .line 380
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isNoData:I

    if-ne v1, v4, :cond_a3

    .line 383
    iget-wide v5, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    double-to-int p2, v5

    mul-int/2addr p2, p3

    iget-wide v5, v3, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int p3, v5

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, p2, p3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_b9

    .line 385
    :cond_a3
    iget-wide p2, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    iget-wide v5, v3, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    sub-double/2addr p2, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v5

    iget-wide v5, v3, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    add-double/2addr p2, v5

    double-to-int p2, p2

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, p2, p3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 388
    :goto_b9
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 389
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getHeight()I

    move-result p3

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p3, 0x5

    .line 390
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepHour:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p2

    if-ne p2, v4, :cond_f6

    .line 396
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10054f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_154

    .line 397
    :cond_f6
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_10e

    .line 399
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10067f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_154

    .line 400
    :cond_10e
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_126

    .line 402
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f10060d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_154

    .line 403
    :cond_126
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_13e

    .line 405
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1005d6

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_154

    .line 406
    :cond_13e
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getType()I

    move-result p2

    if-ne p2, p3, :cond_154

    .line 408
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1006d4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :cond_154
    :goto_154
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setDrawHigh: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getTotalTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getTotalTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 412
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepHour:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSleepChartNewHigh(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 617
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 618
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 619
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-direct {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->changeDateUpdateUI(Ljava/util/Date;)V

    .line 620
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    .line 622
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 623
    sget-boolean v6, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    const/4 v7, 0x1

    if-nez v6, :cond_e7

    if-eqz v2, :cond_e9

    .line 630
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e9

    .line 631
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    const/4 v8, -0x1

    move v9, v3

    .line 633
    :goto_41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_e9

    const/4 v10, -0x1

    if-eq v8, v10, :cond_c4

    .line 635
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-ne v10, v8, :cond_a6

    .line 636
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_92

    .line 637
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 639
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    .line 640
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_e3

    .line 641
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 644
    :cond_92
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    invoke-virtual {v6, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    .line 645
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_e3

    .line 646
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 650
    :cond_a6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 652
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    .line 653
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_e3

    .line 654
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 658
    :cond_c4
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    .line 659
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 660
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_de

    .line 661
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_de
    move-object/from16 v28, v8

    move v8, v6

    move-object/from16 v6, v28

    :cond_e3
    :goto_e3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_41

    .line 667
    :cond_e7
    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    .line 671
    :cond_e9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    .line 672
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_333

    .line 675
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_333

    move v8, v3

    .line 676
    :goto_103
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_333

    if-lez v8, :cond_261

    .line 678
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v9

    add-int/lit8 v11, v8, -0x1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v12

    sub-long/2addr v9, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v9, v12

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    int-to-long v14, v14

    cmp-long v9, v9, v14

    if-lez v9, :cond_24d

    .line 679
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    const/16 v10, 0x9

    .line 680
    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 681
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 682
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 683
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 684
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v14

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    int-to-long v3, v10

    mul-long/2addr v3, v12

    add-long/2addr v14, v3

    invoke-static {v14, v15}, Lcom/keephealth/android/util/DateUtil;->longToHour(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 685
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 686
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v3

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v14

    sub-long/2addr v3, v14

    div-long/2addr v3, v12

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    int-to-long v14, v10

    sub-long/2addr v3, v14

    long-to-int v3, v3

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    .line 687
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v3

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v12

    add-long/2addr v3, v10

    invoke-virtual {v9, v3, v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 689
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    .line 690
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v4

    rem-int/2addr v4, v7

    if-eqz v4, :cond_1e2

    add-int/lit8 v3, v3, 0x1

    :cond_1e2
    const/4 v4, 0x0

    :goto_1e3
    if-ge v4, v3, :cond_231

    .line 694
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    .line 695
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 696
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 697
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 698
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 699
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 700
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 701
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    .line 702
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 703
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getAccuracyType()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setAccuracyType(I)V

    .line 704
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e3

    .line 706
    :cond_231
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 708
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ne v8, v3, :cond_273

    .line 710
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_273

    .line 713
    :cond_24d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ne v8, v3, :cond_273

    .line 715
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_273

    .line 719
    :cond_261
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_273

    .line 721
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_273
    :goto_273
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v3

    .line 726
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v4

    rem-int/2addr v4, v7

    if-eqz v4, :cond_28c

    add-int/lit8 v3, v3, 0x1

    :cond_28c
    const/4 v4, 0x0

    :goto_28d
    if-ge v4, v3, :cond_32c

    .line 730
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    .line 731
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 732
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 733
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 734
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 735
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 736
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 737
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    .line 738
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setIndex(I)V

    .line 739
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 740
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setRemark(Ljava/lang/String;)V

    .line 741
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getAccuracyType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setAccuracyType(I)V

    .line 742
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28d

    :cond_32c
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    goto/16 :goto_103

    .line 747
    :cond_333
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/16 v5, 0x18

    const-string v8, ":"

    const-string v9, "%02d"

    if-lez v2, :cond_477

    .line 748
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 749
    :goto_347
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_472

    .line 750
    new-instance v11, Lcom/keephealth/android/ui/main/bean/SleepStageBean;

    invoke-direct {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;-><init>()V

    const/4 v12, 0x0

    .line 751
    :goto_353
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_457

    .line 752
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 753
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v14

    if-eq v14, v4, :cond_3a1

    const/4 v15, 0x3

    if-eq v14, v15, :cond_394

    const/4 v15, 0x4

    if-eq v14, v15, :cond_387

    if-eq v14, v3, :cond_37a

    goto :goto_3ad

    .line 761
    :cond_37a
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepRemDuration()I

    move-result v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setSleepRemDuration(I)V

    goto :goto_3ad

    .line 764
    :cond_387
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepAwakeDuration()I

    move-result v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setSleepAwakeDuration(I)V

    goto :goto_3ad

    .line 758
    :cond_394
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepDeepDuration()I

    move-result v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setSleepDeepDuration(I)V

    goto :goto_3ad

    .line 755
    :cond_3a1
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepLightDuration()I

    move-result v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setSleepLightDuration(I)V

    .line 767
    :goto_3ad
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setSleepTotalDuration(I)V

    if-nez v12, :cond_41b

    .line 769
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setStartTime(Ljava/lang/String;)V

    .line 770
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setSleepChartNewHigh: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_41b
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ne v12, v4, :cond_452

    .line 773
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v4

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    add-int/2addr v4, v14

    .line 774
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v13

    div-int/lit8 v14, v4, 0x3c

    add-int/2addr v13, v14

    rem-int/2addr v13, v5

    .line 775
    rem-int/lit8 v4, v4, 0x3c

    .line 777
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v13, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v13, "%02d:%02d"

    invoke-static {v14, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setEndTime(Ljava/lang/String;)V

    :cond_452
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto/16 :goto_353

    .line 782
    :cond_457
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->getSleepTotalDuration()I

    move-result v4

    const/16 v12, 0x78

    if-lt v4, v12, :cond_464

    const/4 v4, 0x0

    .line 783
    invoke-virtual {v11, v4}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setOnlyOne(Z)V

    goto :goto_467

    .line 785
    :cond_464
    invoke-virtual {v11, v7}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setOnlyOne(Z)V

    .line 787
    :goto_467
    invoke-virtual {v11, v10}, Lcom/keephealth/android/ui/main/bean/SleepStageBean;->setIndex(I)V

    .line 788
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    goto/16 :goto_347

    .line 790
    :cond_472
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepStageAdapter:Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;

    invoke-virtual {v4, v2}, Lcom/keephealth/android/ui/main/adapter/SleepStageAdapter;->setList(Ljava/util/Collection;)V

    .line 792
    :cond_477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 794
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    if-eqz v4, :cond_499

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_499

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getAccuracyType()I

    move-result v4

    if-ne v4, v7, :cond_49a

    .line 795
    invoke-direct {v0, v7}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepType(Z)V

    goto :goto_49d

    :cond_499
    const/4 v6, 0x0

    .line 797
    :cond_49a
    invoke-direct {v0, v6}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepType(Z)V

    .line 801
    :goto_49d
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-nez v4, :cond_4d2

    .line 802
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    if-eqz v4, :cond_4d2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4d2

    const/4 v4, 0x0

    .line 803
    :goto_4ac
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4d0

    .line 804
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    if-eq v6, v3, :cond_4cd

    .line 805
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_4ac

    .line 808
    :cond_4d0
    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    .line 811
    :cond_4d2
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    .line 812
    iget-object v1, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 815
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    const/4 v6, 0x0

    const v11, 0x7f10076d

    if-eqz v4, :cond_635

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4e8

    goto/16 :goto_635

    .line 858
    :cond_4e8
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList_size:I

    .line 859
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v12, 0xa

    invoke-virtual {v4, v12, v7}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setSize(II)V

    .line 860
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->img_nodata:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 862
    iput v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isNoData:I

    .line 863
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v4, :cond_516

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f060052

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_521

    .line 866
    :cond_516
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f060049

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 868
    :goto_521
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06004f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 869
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 870
    new-instance v14, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v14, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    sget-boolean v14, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-nez v14, :cond_54f

    .line 872
    new-instance v14, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v14, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_54f
    sget-boolean v14, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v14, :cond_560

    .line 875
    new-instance v14, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v14, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_560
    new-instance v14, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v14, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v14, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v14, v15}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v14, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v15, "Election Results"

    invoke-direct {v14, v13, v15}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 880
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 881
    new-instance v15, Lcom/github/mikephil/charting/utils/MPPointF;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {v15, v6, v3}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 882
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x7f060052

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    sget-boolean v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-nez v5, :cond_5b1

    .line 885
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    :cond_5b1
    sget-boolean v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v5, :cond_5c7

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f060048

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    :cond_5c7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f06004d

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 894
    :goto_5e2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_5fb

    .line 895
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_5f8

    add-int/lit8 v15, v15, 0x1

    :cond_5f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e2

    :cond_5fb
    if-ne v15, v7, :cond_611

    .line 900
    new-instance v5, Lcom/github/mikephil/charting/data/PieEntry;

    const v10, 0x38d1b717    # 1.0E-4f

    invoke-direct {v5, v10}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 901
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_612

    :cond_611
    const/4 v5, 0x0

    .line 903
    :goto_612
    invoke-virtual {v14, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 904
    new-instance v3, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v3, v14}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 905
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 906
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 907
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v13, 0x12

    invoke-virtual {v10, v3, v13}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 908
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 909
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7ee

    :cond_635
    :goto_635
    const/4 v5, 0x0

    .line 816
    iput v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList_size:I

    .line 817
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3, v5, v7}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setSize(II)V

    .line 818
    iput v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isNoData:I

    .line 819
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    if-nez v3, :cond_649

    .line 820
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_663

    .line 822
    :cond_649
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_65c

    .line 823
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    const-string v3, "FF322"

    const-string v4, "\u65e0\u7761\u7720\u6570\u636e"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_663

    .line 826
    :cond_65c
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    :goto_663
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 830
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->clear()V

    .line 831
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setNoDataText(Ljava/lang/String;)V

    .line 832
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 833
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    .line 834
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 836
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f100387

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v4, v5, v12}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 837
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " 0 "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100387

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100387

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100387

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100387

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f100387

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->showNoPieChart()V

    const/4 v3, 0x0

    :goto_7bf
    const/16 v4, 0xa

    if-ge v3, v4, :cond_7e2

    .line 845
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    add-int/lit8 v5, v3, 0x15

    const/16 v10, 0x18

    if-lt v5, v10, :cond_7d4

    add-int/lit8 v5, v3, -0x3

    .line 847
    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    goto :goto_7d7

    .line 849
    :cond_7d4
    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 851
    :goto_7d7
    invoke-virtual {v4, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 852
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7bf

    .line 854
    :cond_7e2
    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 855
    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 912
    :goto_7ee
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v3, :cond_805

    .line 913
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v5

    goto :goto_817

    .line 915
    :cond_805
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v5

    :goto_817
    add-int/2addr v3, v5

    .line 917
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v13, v3, 0x3c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f100387

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v3, v10, v15}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 918
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f100387

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f100387

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f100387

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f100387

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f100387

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->resetTracking()V

    .line 931
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 932
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 933
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    if-nez v13, :cond_9f7

    return-void

    :cond_9f7
    move v13, v6

    move v14, v13

    move/from16 v19, v7

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 937
    :goto_9fd
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_119a

    .line 939
    sget-boolean v7, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    move/from16 v20, v6

    const-string v6, "3"

    move/from16 v21, v13

    const-string v13, "2"

    const/high16 v22, 0x428c0000    # 70.0f

    move/from16 v23, v14

    const-string v14, "1"

    const/high16 v24, 0x42a00000    # 80.0f

    const/high16 v25, 0x42700000    # 60.0f

    if-eqz v7, :cond_ac3

    .line 940
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 941
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v26

    if-eqz v26, :cond_a37

    move-object/from16 v26, v1

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    move/from16 v27, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a3b

    .line 942
    iput v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    goto :goto_a3b

    :cond_a37
    move-object/from16 v26, v1

    move/from16 v27, v4

    .line 945
    :cond_a3b
    :goto_a3b
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_a51

    .line 949
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aec

    .line 950
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_aec

    .line 952
    :cond_a51
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_a67

    .line 956
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b09

    .line 957
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b09

    .line 959
    :cond_a67
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a7d

    .line 963
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b25

    .line 964
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b25

    .line 966
    :cond_a7d
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a97

    .line 970
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b45

    .line 971
    const-string v1, "4"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b45

    .line 973
    :cond_a97
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_b4e

    .line 977
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab0

    .line 978
    const-string v1, "9"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_ab0
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_b45

    .line 981
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->listHideItem:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b45

    :cond_ac3
    move-object/from16 v26, v1

    move/from16 v27, v4

    .line 985
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 986
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    if-eqz v1, :cond_ad8

    .line 987
    iput v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    .line 990
    :cond_ad8
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_af5

    .line 994
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aec

    .line 995
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aec
    :goto_aec
    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v4, 0x42aa0000    # 85.0f

    move v13, v1

    move v6, v4

    move/from16 v14, v24

    goto :goto_b54

    .line 997
    :cond_af5
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b11

    .line 1001
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b09

    .line 1002
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b09
    :goto_b09
    const/high16 v1, 0x42960000    # 75.0f

    move v6, v1

    move/from16 v14, v22

    move/from16 v13, v24

    goto :goto_b54

    .line 1004
    :cond_b11
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b2d

    .line 1008
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b25

    .line 1009
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b25
    :goto_b25
    const/high16 v1, 0x42820000    # 65.0f

    move v6, v1

    move/from16 v13, v22

    move/from16 v14, v25

    goto :goto_b54

    .line 1011
    :cond_b2d
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_b4e

    .line 1015
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b45

    .line 1016
    const-string v1, "4"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b45
    :goto_b45
    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v4, 0x425c0000    # 55.0f

    move v14, v1

    move v6, v4

    move/from16 v13, v25

    goto :goto_b54

    :cond_b4e
    move/from16 v6, v20

    move/from16 v13, v21

    move/from16 v14, v23

    .line 1022
    :goto_b54
    new-instance v1, Lcom/github/mikephil/charting/data/CandleEntry;

    int-to-float v4, v15

    const/high16 v20, 0x40800000    # 4.0f

    add-float v24, v6, v20

    sub-float v25, v6, v20

    move-object/from16 v20, v1

    move/from16 v21, v4

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-direct/range {v20 .. v25}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFF)V

    if-eqz v7, :cond_b99

    .line 1029
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v4, :cond_b8b

    .line 1030
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v4

    move/from16 v20, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b7f

    const/4 v4, 0x2

    .line 1031
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 1032
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b9c

    :cond_b7f
    const/4 v4, 0x2

    .line 1034
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 1035
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b9c

    :cond_b8b
    move/from16 v20, v6

    const/4 v4, 0x2

    .line 1038
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setType(I)V

    .line 1039
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b9c

    :cond_b99
    move/from16 v20, v6

    const/4 v4, 0x2

    .line 1043
    :goto_b9c
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    if-eqz v1, :cond_1175

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1175

    if-eqz v7, :cond_1175

    .line 1044
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v1

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v6

    add-int/2addr v1, v6

    .line 1046
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v15, v6, :cond_f92

    .line 1047
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v4

    if-ne v6, v4, :cond_dc3

    .line 1048
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/CandleEntry;

    move/from16 v6, v19

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    move v4, v11

    move/from16 v19, v13

    :goto_bed
    add-int v13, v11, v6

    if-ge v4, v13, :cond_db7

    .line 1050
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v14

    move-object/from16 v14, v21

    check-cast v14, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v14, v11}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 1051
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/CandleEntry;

    move/from16 v21, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v24, v10

    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    div-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10076d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    rem-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f100387

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    .line 1053
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v2

    div-int/lit8 v10, v1, 0x3c

    add-int/2addr v2, v10

    const/16 v12, 0x18

    if-lt v2, v12, :cond_d1a

    .line 1054
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move/from16 v25, v15

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v13

    add-int/2addr v13, v10

    const/16 v10, 0x18

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    goto :goto_d65

    :cond_d1a
    move/from16 v25, v15

    .line 1056
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v13

    add-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v14, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    .line 1058
    :goto_d65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->endTime:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v21

    move/from16 v14, v22

    move-object/from16 v2, v23

    move-object/from16 v10, v24

    move/from16 v15, v25

    goto/16 :goto_bed

    :cond_db7
    move-object/from16 v23, v2

    move-object/from16 v24, v10

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v25, v15

    goto/16 :goto_1183

    :cond_dc3
    move-object/from16 v23, v2

    move-object/from16 v24, v10

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v25, v15

    move/from16 v6, v19

    move/from16 v19, v13

    move v2, v11

    :goto_dd2
    add-int v4, v11, v6

    if-ge v2, v4, :cond_f84

    .line 1063
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 1064
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    div-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10076d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    rem-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100387

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    .line 1066
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    div-int/lit8 v12, v1, 0x3c

    add-int/2addr v10, v12

    const/16 v13, 0x18

    if-lt v10, v13, :cond_ef3

    .line 1067
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v4

    add-int/2addr v4, v12

    const/16 v12, 0x18

    sub-int/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    goto :goto_f3c

    .line 1069
    :cond_ef3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v4

    add-int/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    .line 1071
    :goto_f3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/CandleEntry;->getEndTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->endTime:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_dd2

    .line 1074
    :cond_f84
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    add-int/lit8 v15, v25, 0x1

    move v11, v15

    goto/16 :goto_1173

    :cond_f92
    move-object/from16 v23, v2

    move-object/from16 v24, v10

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v25, v15

    move/from16 v6, v19

    move/from16 v19, v13

    .line 1079
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    add-int/lit8 v15, v25, 0x1

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v4

    if-ne v2, v4, :cond_fb8

    add-int/lit8 v1, v6, 0x1

    goto/16 :goto_1184

    :cond_fb8
    move v2, v11

    :goto_fb9
    add-int v4, v11, v6

    if-ge v2, v4, :cond_1166

    .line 1083
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartIndex(I)V

    .line 1084
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/github/mikephil/charting/data/CandleEntry;->setStartTime(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v14

    div-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10076d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v16

    rem-int/lit8 v16, v16, 0x3c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100387

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/github/mikephil/charting/data/CandleEntry;->setTotalTime(Ljava/lang/String;)V

    .line 1086
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    div-int/lit8 v12, v1, 0x3c

    add-int/2addr v10, v12

    const/16 v13, 0x18

    if-lt v10, v13, :cond_10dc

    .line 1087
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move/from16 v16, v15

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v4

    add-int/2addr v4, v12

    const/16 v15, 0x18

    sub-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    goto :goto_1128

    :cond_10dc
    move/from16 v16, v15

    move v15, v13

    .line 1089
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/CandleEntry;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v15, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v4

    add-int/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    rem-int/lit8 v13, v1, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/github/mikephil/charting/data/CandleEntry;->setEndTime(Ljava/lang/String;)V

    .line 1091
    :goto_1128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v16

    goto/16 :goto_fb9

    :cond_1166
    move/from16 v16, v15

    .line 1093
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/CandleEntry;->setItemCount(I)V

    move/from16 v11, v16

    :goto_1173
    const/4 v1, 0x1

    goto :goto_1184

    :cond_1175
    move-object/from16 v23, v2

    move-object/from16 v24, v10

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v25, v15

    move/from16 v6, v19

    move/from16 v19, v13

    :goto_1183
    move v1, v6

    :goto_1184
    add-int/lit8 v15, v25, 0x1

    move/from16 v13, v19

    move/from16 v6, v20

    move/from16 v12, v21

    move/from16 v14, v22

    move-object/from16 v2, v23

    move-object/from16 v10, v24

    move/from16 v4, v27

    move/from16 v19, v1

    move-object/from16 v1, v26

    goto/16 :goto_9fd

    :cond_119a
    move-object/from16 v26, v1

    move-object/from16 v23, v2

    move/from16 v27, v4

    move-object/from16 v24, v10

    move/from16 v21, v12

    .line 1101
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 1102
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 1103
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 1104
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v2, v1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 1105
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 1106
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 1107
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 1108
    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 1109
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 1110
    iput v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->number:I

    .line 1111
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;

    invoke-direct {v2, v0, v5, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Ljava/util/List;Lcom/github/mikephil/charting/components/XAxis;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1138
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v2, 0x1

    .line 1139
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    if-eqz v23, :cond_1206

    .line 1140
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1206

    .line 1141
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    move v2, v7

    goto :goto_123d

    .line 1143
    :cond_1206
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 1144
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v4, :cond_1219

    .line 1145
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    :goto_1217
    const/4 v2, 0x0

    goto :goto_123d

    :cond_1219
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1148
    :goto_121b
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1237

    .line 1149
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1234

    add-int/lit8 v4, v4, 0x1

    :cond_1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_121b

    :cond_1237
    const/4 v2, 0x1

    sub-int/2addr v4, v2

    .line 1153
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_1217

    .line 1156
    :goto_123d
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 1157
    new-instance v1, Lcom/github/mikephil/charting/data/CandleDataSet;

    const-string v4, "Data Set"

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawIcons(Z)V

    .line 1159
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const v2, -0xbbbbbc

    .line 1160
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowColor(I)V

    const v2, 0x3f333333    # 0.7f

    .line 1161
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowWidth(F)V

    const/high16 v2, -0x40000000    # -2.0f

    .line 1162
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 1163
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->resetColors()V

    .line 1164
    sget-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v2, :cond_128e

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    move/from16 v12, v21

    .line 1166
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    move/from16 v4, v27

    .line 1168
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    goto :goto_12b4

    :cond_128e
    move/from16 v12, v21

    move/from16 v4, v27

    .line 1171
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 1172
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->addColor(I)V

    :goto_12b4
    const/4 v2, 0x0

    .line 1178
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawValues(Z)V

    .line 1179
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 1180
    new-instance v3, Lcom/github/mikephil/charting/data/CandleData;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    aput-object v1, v4, v2

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/CandleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    .line 1181
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 1182
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 1183
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v2, 0x13

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1185
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setExtraBottomOffset(F)V

    .line 1186
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    .line 1187
    invoke-virtual/range {v26 .. v26}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    if-eqz v1, :cond_1311

    .line 1188
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$6;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1311
    return-void
.end method

.method private setSleepStatus(Ljava/lang/String;Lcom/github/mikephil/charting/data/CandleEntry;)V
    .registers 7

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/CandleEntry;->getTotalTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10076d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100387

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private setSleepType(Z)V
    .registers 4

    .line 283
    sget-boolean p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_12

    .line 284
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1c

    .line 287
    :cond_12
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1c
    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 8

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 478
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 479
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$9;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 523
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getYearMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 531
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 509
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getSixMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 513
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 515
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 516
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1bb

    .line 495
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getOneMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 499
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 501
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 502
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1bb

    .line 481
    :cond_154
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    .line 485
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 486
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 489
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1bb
    return-void
.end method

.method private showNoPieChart()V
    .registers 6

    .line 1444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v2, "Election Results"

    invoke-direct {v1, v0, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1447
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 1448
    new-instance v2, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    const-string v3, "#E1E1E1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 1452
    new-instance v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 1453
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 1454
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 1455
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1456
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 1457
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->img_nodata:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 6

    .line 599
    iget-object v0, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getAccuracyType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2a

    .line 602
    invoke-direct {p0, v3}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepType(Z)V

    .line 603
    sput-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    .line 604
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_39

    .line 607
    :cond_2a
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepType(Z)V

    .line 608
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    .line 609
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 612
    :goto_39
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setSleepChartNewHigh(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method private updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1203
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 1206
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 1207
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;

    .line 1208
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->allList:Ljava/util/List;

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList2:Ljava/util/List;

    .line 1209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;

    const-string v6, ""

    const v7, 0x7f100387

    const v8, 0x7f10076d

    if-eqz v5, :cond_8b8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_8b8

    .line 1227
    :cond_4b
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->img_nodata:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 1229
    iget-object v1, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1230
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1231
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

    .line 1232
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v11

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 1240
    :goto_1da
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-ge v9, v11, :cond_371

    .line 1241
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1242
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v16

    if-eqz v16, :cond_1f4

    .line 1243
    iput v9, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I

    .line 1245
    :cond_1f4
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_252

    .line 1246
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

    .line 1249
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

    .line 1247
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

    .line 1251
    :cond_252
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_264

    .line 1252
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    .line 1254
    :cond_264
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    :goto_26b
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v7

    if-lez v7, :cond_274

    .line 1257
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    .line 1261
    :cond_274
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    int-to-float v7, v7

    .line 1262
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v8

    int-to-float v8, v8

    .line 1263
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    int-to-float v12, v12

    .line 1264
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v13

    int-to-float v13, v13

    .line 1265
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v14

    int-to-float v14, v14

    .line 1267
    sget-boolean v17, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    const/high16 v18, 0x42700000    # 60.0f

    if-eqz v17, :cond_2fe

    .line 1268
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

    .line 1269
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

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-float v7, v11, v18

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_363

    :cond_2fe
    move-object/from16 v19, v6

    .line 1274
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

    .line 1275
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

    .line 1276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-float v8, v3, v18

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100387

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 1278
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

    .line 1282
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v3, :cond_38a

    .line 1283
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

    .line 1285
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

    .line 1291
    div-int/lit8 v6, v3, 0x3c

    .line 1292
    rem-int/lit8 v3, v3, 0x3c

    .line 1293
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f100387

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1293
    invoke-virtual {v0, v8, v9, v11}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1295
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v7, v8, :cond_403

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v8, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v7, v8, :cond_651

    .line 1296
    :cond_403
    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList2:Ljava/util/List;

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

    .line 1304
    :goto_414
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList2:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_448

    .line 1305
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList2:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 1306
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v14

    if-lez v14, :cond_445

    .line 1308
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v14

    add-int/2addr v7, v14

    .line 1309
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v14

    add-int/2addr v8, v14

    .line 1310
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v14

    add-int/2addr v9, v14

    .line 1311
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v14

    add-int/2addr v11, v14

    .line 1312
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

    .line 1319
    :cond_44b
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->TAG:Ljava/lang/String;

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

    .line 1320
    div-int/2addr v7, v3

    .line 1321
    div-int/2addr v8, v3

    .line 1322
    div-int/2addr v9, v3

    .line 1323
    div-int/2addr v11, v3

    .line 1324
    div-int/2addr v12, v3

    .line 1326
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v3, :cond_49f

    add-int v3, v7, v8

    add-int/2addr v3, v9

    add-int/2addr v3, v11

    goto :goto_4a3

    :cond_49f
    add-int v3, v7, v9

    add-int/2addr v3, v11

    add-int/2addr v3, v12

    .line 1333
    :goto_4a3
    div-int/lit8 v6, v3, 0x3c

    .line 1334
    rem-int/lit8 v3, v3, 0x3c

    .line 1335
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v15, v7, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f100387

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v13, v8, 0x3c

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f100387

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v9, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v11, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v12, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100387

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f100387

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1340
    invoke-virtual {v0, v7, v8, v9}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1345
    :cond_651
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    const/high16 v7, 0x41200000    # 10.0f

    .line 1346
    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 1347
    const-string v7, "#999999"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 1348
    new-instance v7, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$7;

    invoke-direct {v7, v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 1355
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/4 v2, 0x0

    .line 1356
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 1357
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    const/4 v2, 0x1

    .line 1358
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 1359
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v7, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v7, :cond_689

    const/16 v2, 0xc

    .line 1360
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_68d

    :cond_689
    const/4 v2, 0x5

    .line 1362
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 1364
    :goto_68d
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 1365
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v8

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v10, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    invoke-direct {v4, v7, v8, v9}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 1366
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {v2, v5, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1367
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    const v5, 0x7f060052

    const v7, 0x7f060049

    const v8, 0x7f06004f

    const v9, 0x7f06004d

    if-eqz v4, :cond_71c

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060048

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    filled-new-array {v4, v10, v11, v12, v13}, [I

    move-result-object v4

    .line 1368
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v4, 0x5

    .line 1373
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

    .line 1375
    :cond_71c
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    filled-new-array {v4, v10, v11, v12}, [I

    move-result-object v4

    .line 1375
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v4, 0x4

    .line 1379
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

    .line 1382
    :goto_75d
    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 1383
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 1386
    new-instance v4, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    move-object/from16 v10, v19

    const/4 v12, 0x1

    invoke-direct {v4, v11, v10, v12}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v4, -0x1

    .line 1387
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 1388
    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 1389
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v10, 0x16

    invoke-virtual {v4, v2, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1390
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v12}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 1391
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 1392
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;

    invoke-direct {v4, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v2, v4, v10, v11}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v6, :cond_7a5

    if-nez v3, :cond_7a5

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->showNoPieChart()V

    goto/16 :goto_8b7

    .line 1402
    :cond_7a5
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->img_nodata:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1403
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 1404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    sget-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v3, :cond_7e2

    .line 1408
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_7e2
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v1}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, "Election Results"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1413
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 1414
    new-instance v3, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v4, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    invoke-direct {v3, v4, v6}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    sget-boolean v4, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v4, :cond_84b

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_84b
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1425
    :goto_86b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_885

    .line 1426
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_882

    add-int/lit8 v5, v5, 0x1

    :cond_882
    add-int/lit8 v4, v4, 0x1

    goto :goto_86b

    :cond_885
    const/4 v4, 0x1

    if-ne v5, v4, :cond_89c

    .line 1431
    new-instance v4, Lcom/github/mikephil/charting/data/PieEntry;

    const v5, 0x38d1b717    # 1.0E-4f

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89d

    :cond_89c
    const/4 v2, 0x0

    .line 1434
    :goto_89d
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 1435
    new-instance v3, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v3, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 1436
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/PieData;->setDrawValues(Z)V

    .line 1437
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/PieData;->setHighlightEnabled(Z)V

    .line 1438
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v2, 0x17

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1439
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    :goto_8b7
    return-void

    :cond_8b8
    :goto_8b8
    move v2, v4

    move-object v10, v6

    .line 1211
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->clear()V

    .line 1213
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 1214
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1215
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 1216
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x15

    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1217
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1218
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10076d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " 0 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100387

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v6, v8}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1219
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100387

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f10076d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->showNoPieChart()V

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

    .line 1463
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1464
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 1465
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    .line 1466
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1467
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 1468
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 1469
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 1470
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

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

    .line 1477
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1478
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_53

    .line 1479
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    .line 1480
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1481
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 1482
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 1483
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 1484
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    :cond_53
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0083

    return v0
.end method

.method protected initView()V
    .registers 6

    .line 151
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->initView()V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090576

    .line 154
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CandleStickChart;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const v0, 0x7f090575

    .line 155
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v0, 0x7f090393

    .line 156
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    const v0, 0x7f090390

    .line 157
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    const v0, 0x7f090577

    .line 159
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    const v0, 0x7f090640

    .line 160
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0902c5

    .line 161
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivPreDate:Landroid/widget/ImageView;

    const v0, 0x7f0902bd

    .line 162
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ivNextDate:Landroid/widget/ImageView;

    const v0, 0x7f0906cd

    .line 163
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    const v0, 0x7f0906cf

    .line 164
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepTime:Landroid/widget/TextView;

    const v0, 0x7f0906c7

    .line 165
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepHour:Landroid/widget/TextView;

    const v0, 0x7f090701

    .line 166
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTotalSleep:Landroid/widget/TextView;

    const v0, 0x7f09056a

    .line 167
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->showData:Landroid/widget/LinearLayout;

    const v0, 0x7f090697

    .line 168
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvNoData:Landroid/widget/TextView;

    const v0, 0x7f090578

    .line 169
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v0, 0x7f0906db

    .line 170
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvStartSleepTime:Landroid/widget/TextView;

    const v0, 0x7f090712

    .line 171
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvWakeSleepRem:Landroid/widget/TextView;

    const v0, 0x7f09039c

    .line 172
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    const v0, 0x7f0903c8

    .line 173
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    const v0, 0x7f09067d

    .line 174
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvLightSleepTime:Landroid/widget/TextView;

    const v0, 0x7f09064d

    .line 175
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDeepSleepTime:Landroid/widget/TextView;

    const v0, 0x7f090621

    .line 176
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvAwakeTime:Landroid/widget/TextView;

    const v0, 0x7f090648

    .line 177
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvDay:Landroid/widget/TextView;

    const v0, 0x7f09068a

    .line 178
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvMonth:Landroid/widget/TextView;

    const v0, 0x7f0906c1

    .line 179
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSixMonth:Landroid/widget/TextView;

    const v0, 0x7f09071b

    .line 180
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvYear:Landroid/widget/TextView;

    const v0, 0x7f0906e6

    .line 181
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvTag:Landroid/widget/TextView;

    const v0, 0x7f090234

    .line 182
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->img_nodata:Landroid/widget/ImageView;

    const v0, 0x7f090534

    .line 183
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-static {}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getInstance()Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getSleepType()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_197

    if-eq v0, v2, :cond_180

    const/4 v4, 0x3

    if-eq v0, v4, :cond_173

    const/4 v4, 0x4

    if-eq v0, v4, :cond_15c

    goto :goto_1ab

    .line 205
    :cond_15c
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ab

    .line 200
    :cond_173
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ab

    .line 193
    :cond_180
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ab

    .line 187
    :cond_197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :goto_1ab
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v0, :cond_205

    .line 214
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleepDataShowType()I

    move-result v0

    if-eq v0, v2, :cond_1cf

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-eqz v0, :cond_1c2

    goto :goto_1cf

    .line 224
    :cond_1c2
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    sput-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    goto :goto_1ee

    .line 215
    :cond_1cf
    :goto_1cf
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1ee

    .line 220
    :cond_1e4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :goto_1ee
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 229
    sput-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_205

    .line 232
    :cond_1fe
    sput-boolean v3, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isHighPrecisionSleep:Z

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    :cond_205
    :goto_205
    sget-boolean v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v0, :cond_214

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21e

    .line 240
    :cond_214
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llRem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->ll_sleep_start:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :goto_21e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 245
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    .line 246
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    .line 248
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    if-eqz v1, :cond_254

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    :cond_254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepChart()V

    .line 274
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepBarChart()V

    .line 275
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepPieChart()V

    .line 276
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepRecycleView()V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

    .line 278
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailSleepActivityNew(Landroid/view/View;)V
    .registers 3

    .line 256
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_16

    .line 257
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_16
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f0906c1,
            0x7f09068a,
            0x7f09071b
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_4c

    goto :goto_4b

    .line 561
    :sswitch_b
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 562
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x3

    .line 564
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    goto :goto_4b

    .line 555
    :sswitch_1e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 556
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x2

    .line 558
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    goto :goto_4b

    .line 549
    :sswitch_31
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 550
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llOldSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->llNewSleep:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 552
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    goto :goto_4b

    .line 545
    :sswitch_44
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 546
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I

    :goto_4b
    return-void

    :sswitch_data_4c
    .sparse-switch
        0x7f090648 -> :sswitch_44
        0x7f09068a -> :sswitch_31
        0x7f0906c1 -> :sswitch_1e
        0x7f09071b -> :sswitch_b
    .end sparse-switch
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 10

    .line 570
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 571
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    move p2, v3

    :goto_f
    if-ge p2, v1, :cond_29

    .line 572
    aget-object p3, v2, p2

    .line 573
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_26

    .line 575
    new-instance v5, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$4;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V

    .line 588
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v4

    .line 575
    invoke-virtual {v0, v5, v4, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 591
    :cond_29
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
