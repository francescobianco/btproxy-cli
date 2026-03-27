.class public Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailStreeCoseActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/DetailHrPresenter;",
        ">;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# static fields
.field private static final DETAIL_DATE_KEY2:Ljava/lang/String; = "bloodglucose"


# instance fields
.field TvRealTimeValue:Landroid/widget/TextView;

.field barLine:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field handler:Landroid/os/Handler;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field img_index_dian:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090231
    .end annotation
.end field

.field private isGoIn:Z

.field private isQuit:Z

.field private isSendGoIn:Z

.field private itemsDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
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

.field lineColor:I

.field private lineColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field llLenger:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090382
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

.field set1:Lcom/github/mikephil/charting/data/BarDataSet;

.field set2:Lcom/github/mikephil/charting/data/BarDataSet;

.field set3:Lcom/github/mikephil/charting/data/BarDataSet;

.field set4:Lcom/github/mikephil/charting/data/BarDataSet;

.field set5:Lcom/github/mikephil/charting/data/BarDataSet;

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

.field tvRange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a6
    .end annotation
.end field

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
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

.field tvValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070c
    .end annotation
.end field

.field tvValueUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070d
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

    .line 92
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    const/4 v1, 0x0

    .line 283
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    .line 343
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isSendGoIn:Z

    .line 344
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isGoIn:Z

    .line 345
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z

    .line 510
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->lineColors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Ljava/lang/String;)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isGoIn:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Z)Z
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isGoIn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Ljava/lang/String;)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isSendGoIn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Z)Z
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isSendGoIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Z)Z
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isQuit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I
    .registers 2

    .line 92
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I
    .registers 2

    .line 92
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I
    .registers 1

    .line 92
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;I)I
    .registers 2

    .line 92
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 562
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 563
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 564
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 567
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->TvRealTimeValue:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setHandler()V
    .registers 3

    .line 285
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 10

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 429
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 430
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$8;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_17c

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_f1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_1eb

    .line 475
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getYearMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 479
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 482
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 483
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 461
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getSixMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 465
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 446
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getOneMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 451
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 453
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1eb

    .line 432
    :cond_17c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 436
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1eb
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v1, "bloodglucose"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method changeNextDay()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 527
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 530
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 531
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 532
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 533
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    .line 534
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 535
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 536
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 537
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7a
    return-void
.end method

.method changePreDay()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    const v0, 0x7f0902c5

    const-wide/16 v1, 0x1f4

    .line 543
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 545
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 547
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 548
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 549
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    .line 550
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 551
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 552
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 553
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7a
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003b

    return v0
.end method

.method protected initView()V
    .registers 9

    .line 164
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100723

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bloodglucose"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_29

    return-void

    :cond_29
    const v2, 0x7f0904e4

    .line 171
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    const v2, 0x7f090508

    .line 172
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    const v2, 0x7f0906ea

    .line 173
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNewTime:Landroid/widget/TextView;

    const v2, 0x7f090690

    .line 174
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue2:Landroid/widget/TextView;

    const v2, 0x7f090013

    .line 175
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->TvRealTimeValue:Landroid/widget/TextView;

    .line 177
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_78

    .line 178
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualHeartRateVariability()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 179
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_82

    .line 182
    :cond_78
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    :goto_82
    const-string v2, "STRESS_DATA"

    invoke-static {p0, v2}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v2, :cond_114

    .line 187
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/keephealth/android/util/TimeUtil;->isSameDay(JJ)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 188
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 190
    :cond_aa
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_b5
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v7

    invoke-static {v7}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_114
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    const v4, 0x7f0d011f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 204
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    .line 205
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    .line 206
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    .line 207
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 208
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showNewValue:Z

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v1, 0x42f00000    # 120.0f

    .line 247
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 248
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 249
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 250
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 253
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 254
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 255
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 258
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 259
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 261
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 262
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 263
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 264
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 267
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 271
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 280
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->initListener()V

    .line 281
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setHandler()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailStreeCoseActivity(Landroid/view/View;)V
    .registers 3

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 213
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 215
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 219
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

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

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 505
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 502
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 499
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 496
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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

    .line 935
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showNewValue:Z

    .line 937
    iget-boolean v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isGoIn:Z

    if-eqz v1, :cond_18

    .line 938
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->isGoIn:Z

    .line 939
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 941
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 942
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->handler:Landroid/os/Handler;

    :cond_1f
    return-void
.end method

.method public onNothingSelected()V
    .registers 3

    .line 931
    const-string v0, "gfre3e"

    const-string v1, "\u6ca1\u6709\u88ab\u9009\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 7

    .line 901
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 904
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_72

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 905
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    const-string v0, "--"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6d

    .line 906
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValueUnit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 908
    :cond_6d
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValueUnit:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    :cond_72
    :goto_72
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p1

    .line 913
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 914
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(int) f.centerX()\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr33re"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 921
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 922
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result p2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p2, 0x5

    .line 923
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 924
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 926
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 572
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 573
    new-array v1, v1, [Ljava/lang/String;

    .line 575
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 577
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    .line 590
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 577
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 593
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 599
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_e

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->changeDateUpdateUI()V

    goto :goto_17

    .line 602
    :cond_e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_17
    iget v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    const-string v3, "  "

    const v4, 0x7f10044c

    const-string v5, " "

    const-string v6, "-- "

    const-string v7, ""

    if-eqz v2, :cond_78

    .line 605
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvRange:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-static {v9}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-static {v9}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvAvg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    invoke-static {v9}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f9

    .line 608
    :cond_78
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showNewValue:Z

    if-eqz v2, :cond_f9

    .line 611
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v2, :cond_e3

    .line 612
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v9

    invoke-static {v9}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f9

    .line 615
    :cond_e3
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_f9
    :goto_f9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 622
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 623
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 624
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget-object v12, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, "%02d"

    const/4 v14, 0x0

    if-nez v12, :cond_1ec

    .line 629
    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v15

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 630
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v4, v12, :cond_178

    .line 631
    iget-object v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->itemsDay:Ljava/util/List;

    move v4, v14

    :goto_138
    const/16 v12, 0x18

    if-ge v4, v12, :cond_175

    .line 633
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 634
    invoke-virtual {v12, v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 635
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v17, v11

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v14, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ":00"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 636
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v17

    const/4 v14, 0x0

    goto :goto_138

    :cond_175
    move-object/from16 v17, v11

    goto :goto_1e3

    :cond_178
    move-object/from16 v17, v11

    .line 638
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v11, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v4, v11, :cond_1b2

    .line 639
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    const/4 v11, 0x0

    .line 640
    invoke-virtual {v4, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 641
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 642
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 643
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 644
    sget-object v11, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 645
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e3

    .line 648
    :cond_1b2
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    const/4 v11, 0x0

    .line 649
    invoke-virtual {v4, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 650
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 651
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 652
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 653
    sget-object v11, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 654
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :goto_1e3
    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->lineColor:I

    goto :goto_1f7

    :cond_1ec
    move-object/from16 v17, v11

    .line 659
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->lineColors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 660
    iget-object v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->itemsDay:Ljava/util/List;

    .line 663
    :goto_1f7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 665
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "heartRateDetailVO.items.size():"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fr33re"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .line 666
    :goto_21a
    iget-object v14, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_717

    .line 667
    iget-object v14, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 668
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "healthBloodItem.getHeartRaveValue():"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "   cal:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-static {v15}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    const/16 v15, 0x1e

    move-object/from16 v18, v12

    if-ge v1, v15, :cond_2c1

    .line 673
    new-instance v1, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v15, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v20

    move-object/from16 v21, v13

    invoke-static/range {v20 .. v20}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-direct {v1, v15, v12}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 674
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    invoke-static {v12}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v12

    if-nez v12, :cond_297

    .line 675
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 677
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    goto :goto_2b5

    .line 679
    :cond_297
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v13

    invoke-static {v13}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 680
    iput v11, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    .line 682
    :goto_2b5
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 683
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_413

    :cond_2c1
    move-object/from16 v21, v13

    .line 685
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    const/16 v12, 0x3c

    if-lt v1, v15, :cond_338

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    if-ge v1, v12, :cond_338

    .line 686
    new-instance v1, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-static {v15}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v1, v12, v13}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 687
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    invoke-static {v12}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v12

    if-nez v12, :cond_30e

    .line 688
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 690
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    goto :goto_32c

    .line 692
    :cond_30e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v13

    invoke-static {v13}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 693
    iput v11, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    .line 695
    :goto_32c
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 696
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_413

    .line 698
    :cond_338
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    const/16 v13, 0x50

    if-lt v1, v12, :cond_3ac

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    if-ge v1, v13, :cond_3ac

    .line 699
    new-instance v1, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-static {v15}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v1, v12, v13}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 701
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    invoke-static {v12}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v12

    if-nez v12, :cond_383

    .line 702
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 704
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    goto :goto_3a1

    .line 706
    :cond_383
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v13

    invoke-static {v13}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 707
    iput v11, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    .line 709
    :goto_3a1
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 710
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_413

    .line 712
    :cond_3ac
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    if-lt v1, v13, :cond_413

    .line 713
    new-instance v1, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-static {v15}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-direct {v1, v12, v13}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 714
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    invoke-static {v12}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v12

    if-nez v12, :cond_3eb

    .line 715
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 717
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    goto :goto_409

    .line 719
    :cond_3eb
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v13

    invoke-static {v13}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 720
    iput v11, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    .line 722
    :goto_409
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 723
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_413
    :goto_413
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showNewValue:Z

    if-eqz v1, :cond_5f7

    .line 727
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v1, :cond_470

    .line 728
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v13

    invoke-static {v13}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f10044c

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5f7

    .line 731
    :cond_470
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    if-eqz v1, :cond_5f7

    .line 732
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 734
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 735
    iget v13, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachYear:I

    move-object/from16 v19, v4

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string v15, ":"

    if-ne v13, v4, :cond_52a

    iget v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachMonth:I

    const/4 v13, 0x2

    .line 736
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    if-ne v4, v13, :cond_52a

    iget v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mSeachDay:I

    const/4 v13, 0x5

    .line 737
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_52a

    .line 738
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v20, v6

    const v6, 0x7f10044c

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v13, v21

    invoke-static {v13, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v21, v3

    const v3, 0x7f10044c

    goto :goto_581

    :cond_52a
    move-object/from16 v20, v6

    move-object/from16 v13, v21

    .line 740
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v21, v3

    const v3, 0x7f10044c

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    :goto_581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u6700\u65b0\u503c:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  \u6700\u65b0\u503c2:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-static {v6}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v6

    sget v12, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v12, v12

    sget v15, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v15, v15

    invoke-static {v6, v12, v15}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v6

    move-object v15, v13

    float-to-double v12, v6

    invoke-static {v12, v13}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    const-string v4, "hfrr544"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-static {v6}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_602

    :cond_5f7
    :goto_5f7
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v15, v21

    move-object/from16 v21, v3

    const v3, 0x7f10044c

    .line 748
    :goto_602
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v4, :cond_6b7

    .line 749
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x7

    if-lt v1, v4, :cond_68b

    .line 750
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, "01"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "\n"

    if-nez v1, :cond_652

    if-nez v11, :cond_629

    goto :goto_652

    .line 755
    :cond_629
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64f

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x5

    invoke-virtual {v6, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, v17

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69e

    :cond_64f
    move-object/from16 v12, v17

    goto :goto_69e

    :cond_652
    :goto_652
    move-object/from16 v12, v17

    .line 751
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69e

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69e

    :cond_68b
    move-object/from16 v12, v17

    .line 760
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69e

    .line 761
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_69e
    :goto_69e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u538b\u529b_\u5e74:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fr33r5te"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_706

    :cond_6b7
    move-object/from16 v12, v17

    .line 765
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v3, :cond_6d7

    .line 766
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_706

    .line 767
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_706

    .line 770
    :cond_6d7
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_706

    .line 771
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u538b\u529b:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fr33r5e"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_706
    :goto_706
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v12

    move-object v13, v15

    move-object/from16 v12, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move-object/from16 v3, v21

    goto/16 :goto_21a

    :cond_717
    move-object/from16 v21, v3

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "selectIndex:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 789
    iput-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showNewValue:Z

    .line 790
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 791
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 792
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 793
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 794
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 795
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$6;

    invoke-direct {v1, v0, v12}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 806
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v1, 0x1

    .line 807
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 808
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v4, :cond_76f

    const/16 v1, 0xc

    .line 809
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_773

    :cond_76f
    const/4 v1, 0x5

    .line 811
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 813
    :goto_773
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    const/4 v1, 0x1

    .line 815
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 816
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "values2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gde2ew"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  size2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  size3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  size4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gde2ewr"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna1 2014"

    invoke-direct {v3, v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 821
    const-string v2, "#51E50F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 822
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 823
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 824
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 825
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "#51E52F"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 827
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna2 2014"

    invoke-direct {v2, v8, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 830
    const-string v3, "#2CB5E8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 832
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 833
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 834
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 835
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "#2CB5F8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 837
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna3 2014"

    invoke-direct {v2, v9, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 841
    const-string v3, "#FFAF14"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 843
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 844
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 845
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 846
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "#FFAF24"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 848
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna4 2014"

    invoke-direct {v2, v10, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 852
    const-string v3, "#F60C48"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 854
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 855
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 856
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 857
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#F60C68"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 859
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 864
    new-instance v1, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v7, v3}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v1, -0x1

    .line 865
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    .line 866
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueTextSize(F)V

    .line 867
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 869
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 870
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 871
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 872
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 873
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 874
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
